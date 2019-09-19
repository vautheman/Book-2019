#include "administration.h"
#include <QApplication>
#include <QDebug>
#include <QSqlDatabase>

int main(int argc, char *argv[])
{
    // Instanciation de la variable membre dbNewWorld
    auto dbGestion = QSqlDatabase::addDatabase("QMYSQL");

    // Définition des paramètres de connexion à la base de donnée

    dbGestion.setHostName("91.216.107.164"); // @ip du serveur MySQL
    dbGestion.setDatabaseName("authe858327"); // Nom de la base
    dbGestion.setUserName("authe858327"); // Nom d'utilisateur
    dbGestion.setPassword("3q5krvgsyi"); // Mot de passe

    if(dbGestion.open()) {
        qDebug() << "Ok - ouverture de la base de données";

    } else {
        qDebug() << "Echec d'ouverture de la base de données";
        qDebug() << dbGestion.lastError();
    }

    QApplication a(argc, argv);
    administration w;
    w.show();

    return a.exec();
}
