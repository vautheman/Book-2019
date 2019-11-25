#include "dialogajoutportfolioitems.h"
#include "ui_dialogajoutportfolioitems.h"
#include "administration.h"

#include <QDebug>
#include <QFileDialog>
#include <QSqlQuery>
#include <QSqlDatabase>

DialogAjoutPortfolioItems::DialogAjoutPortfolioItems(QWidget *parent) :
    QDialog(parent),
    ui(new Ui::DialogAjoutPortfolioItems)
{
    ui->setupUi(this);
}

DialogAjoutPortfolioItems::~DialogAjoutPortfolioItems()
{
    delete ui;
}

void DialogAjoutPortfolioItems::on_toolButtonSelectImg_clicked()
{
    // On configure le bouton d'importation de l'image
    pathImgPortfolioItem = QFileDialog::getOpenFileName(this, "Choisissez l'image du rayon","","*.png *.jpg");
    if(!pathImgPortfolioItem.isEmpty())
    {
        if(!pathImgPortfolioItem.isNull())
        {
            qDebug()<<pathImgPortfolioItem;
        }
    }
    return void();
}

void DialogAjoutPortfolioItems::on_pushButtonAjout_clicked()
{

    // On récupère le contenu des inputs
    QString portNom = ui->lineEditNom->text();
    qDebug()<<portNom;
    QString portDesc = ui->textEditDesc->toPlainText();
    qDebug()<<portDesc;
    QString portUrlMemento = ui->lineEditUrlMemento->text();
    qDebug()<<portUrlMemento;
    QString portAncre = ui->lineEditAncre->text();
    qDebug()<<portAncre;
    // On récupère le nom de l'image dans le chemin
    pathImgPortfolioItem = QFileInfo(pathImgPortfolioItem).fileName();
    // On défini l'image avev son nom
    QString portImg = pathImgPortfolioItem;
    qDebug()<<portImg;

    // On execute la requete d'implementation dans la base de données
    QSqlQuery requete;
    if(requete.prepare("INSERT INTO portfolio(portNom, portImage, portDesc, portMementoURL, portAncre) VALUES(:portNom, :portImg, :portDesc, :portMementoUrl, :portAncre);"))
    {
        requete.bindValue(":portMementoUrl", portUrlMemento);
        requete.bindValue(":portAncre", portAncre);
        requete.bindValue(":portNom", portNom);
        requete.bindValue(":portImg", portImg);
        requete.bindValue(":portDesc", portDesc);

        requete.exec();
        qDebug()<<"requete - ok";
    } else qDebug()<<"Erreur de requete";
    Administration w;
    w.remplirTableWidgetPortfolioItem();
    close();
}
