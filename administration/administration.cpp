#include "administration.h"
#include "ui_administration.h"
#include "dialogajoutportfolioitems.h"

#include <QDebug>
#include <QSqlDatabase>
#include <QFileDialog>
#include <QSqlQuery>

Administration::Administration(QWidget *parent) :
    QMainWindow(parent),
    ui(new Ui::Administration)
{
    ui->setupUi(this);
    ui->pushButtonAjoutPortfolioItem->setEnabled(false);
}

Administration::~Administration()
{
    delete ui;
}

void Administration::on_toolButtonSelectBdd_clicked()
{
    QString dbPath = QFileDialog::getOpenFileName(this, "Selectionner votre base de données", ".bdd");
    QString dbName = QFileInfo(dbPath).fileName();
    ui->labelBddSelect->setText(dbName);
    if(!dbPath.isNull())
    {
        if(!dbPath.isEmpty())
        {
            //Administration w;
            //w.connectDB();

            qDebug()<<dbPath;
            // Instanciation de la variable db
            auto db = QSqlDatabase::addDatabase("QSQLITE");

            // Définition des paramètres de connexion à la base de donnée
            db.setDatabaseName(dbPath);

            if(db.open()) {
                qDebug() << "Ok - ouverture de la base de données";
                Administration::remplirTableWidgetPortfolioItem();

            } else {
                qDebug() << "Echec d'ouverture de la base de données";
                //qDebug() << dbGestion.lastError();
            }
            ui->pushButtonAjoutPortfolioItem->setEnabled(true);
        }
    }

    return void();
}


void Administration::remplirTableWidgetPortfolioItem()
{
    // On déclare le nombre de colonne du tableau
    ui->tableWidgetPortfolioItems->setColumnCount(6);
    // On crée un tableau dans lequel on va stocker les noms des colonnes
    QStringList tableHeader;
    // On stocke le nom des colonnes
    tableHeader<<"Nom"<<"Image"<<"Description"<<"URL Memento"<<"Ancre";
    // On injecte ce tableau dans notre QTableWidget
    ui->tableWidgetPortfolioItems->setHorizontalHeaderLabels(tableHeader);

    QSqlQuery requete;

    // On effectue une première requete pour récupérer le nombre de ligne
    requete.exec("SELECT * FROM portfolio");
    // On déclare le nombre de ligne à 0
    int rowCountTable = 0;
    // On effectue une boucle afin d'additionner le nombre de boucle
    while(requete.next())
    {
        rowCountTable ++;
    }

    // On effectue une deuxième requete pour récupérer le contenu du portfolio
    if(requete.exec("SELECT * FROM portfolio"))
    {
        // On déclare le nombre de ligne du tableau en fonction du nombre de ligne que renvoi la requete
        ui->tableWidgetPortfolioItems->setRowCount(rowCountTable);
        // On déclare le nombre de ligne à 0
        int rowCount = 0;
        // On effectue une boucle qui va remplir les lignes unes à unes
        while(requete.next())
        {
            qDebug()<<requete.value(1).toString();
            // On déclare le nom des differentes données que nous renvoi la requete
            QString portNom = requete.value(1).toString();
            QString portImg = requete.value(2).toString();
            QString portDesc = requete.value(3).toString();
            QString portUrlMemento = requete.value(4).toString();
            QString portAncre = requete.value(5).toString();

            // On insere ensuite ces données dans le tableau
            //ui->tableWidgetPortfolioItems->setItem(rowCount, 0, new QTableWidgetItem(QString::number(rowCount+1)));
            ui->tableWidgetPortfolioItems->setCellWidget(rowCount, 0, new QPushButton);
            ui->tableWidgetPortfolioItems->setItem(rowCount, 1, new QTableWidgetItem(portNom));
            ui->tableWidgetPortfolioItems->setItem(rowCount, 2, new QTableWidgetItem(portImg));
            ui->tableWidgetPortfolioItems->setItem(rowCount, 3, new QTableWidgetItem(portDesc));
            ui->tableWidgetPortfolioItems->setItem(rowCount, 4, new QTableWidgetItem(portUrlMemento));
            ui->tableWidgetPortfolioItems->setItem(rowCount, 5, new QTableWidgetItem(portAncre));

            // On incremente de +1 le nombre de ligne
            rowCount ++;
        }
    }

    //ui->tableWidgetPortfolioItems->horizontalHeader()->setSectionResizeMode(QHeaderView::Stretch);
    ui->tableWidgetPortfolioItems->resizeColumnsToContents();
    ui->tableWidgetPortfolioItems->horizontalHeader()->setStretchLastSection(true);
    ui->tableWidgetPortfolioItems->verticalHeader()->setStretchLastSection(true);
}

void Administration::on_pushButtonAjoutPortfolioItem_clicked()
{
    DialogAjoutPortfolioItems windowAjoutPortfolioItems(this);
    windowAjoutPortfolioItems.exec();
}


void Administration::remplirTableWidgetRessourcesItem()
{

}
void Administration::on_tableWidgetPortfolioItems_cellClicked(int row, int column)
{

}
