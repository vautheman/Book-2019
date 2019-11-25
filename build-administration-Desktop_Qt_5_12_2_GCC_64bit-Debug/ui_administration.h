/********************************************************************************
** Form generated from reading UI file 'administration.ui'
**
** Created by: Qt User Interface Compiler version 5.12.2
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_ADMINISTRATION_H
#define UI_ADMINISTRATION_H

#include <QtCore/QVariant>
#include <QtWidgets/QApplication>
#include <QtWidgets/QHBoxLayout>
#include <QtWidgets/QHeaderView>
#include <QtWidgets/QLabel>
#include <QtWidgets/QMainWindow>
#include <QtWidgets/QMenuBar>
#include <QtWidgets/QPushButton>
#include <QtWidgets/QTabWidget>
#include <QtWidgets/QTableWidget>
#include <QtWidgets/QToolBar>
#include <QtWidgets/QToolButton>
#include <QtWidgets/QWidget>

QT_BEGIN_NAMESPACE

class Ui_Administration
{
public:
    QWidget *centralWidget;
    QTabWidget *tabWidget;
    QWidget *tabPortfolio;
    QTableWidget *tableWidgetPortfolioItems;
    QPushButton *pushButtonAjoutPortfolioItem;
    QWidget *tabRessources;
    QTableWidget *tableWidgetRessourcesItems_2;
    QPushButton *pushButtonAjoutRessourcesItem_2;
    QWidget *layoutWidget;
    QHBoxLayout *horizontalLayout;
    QLabel *labelToolButton;
    QToolButton *toolButtonSelectBdd;
    QLabel *labelBddSelect;
    QMenuBar *menuBar;
    QToolBar *mainToolBar;

    void setupUi(QMainWindow *Administration)
    {
        if (Administration->objectName().isEmpty())
            Administration->setObjectName(QString::fromUtf8("Administration"));
        Administration->resize(839, 611);
        centralWidget = new QWidget(Administration);
        centralWidget->setObjectName(QString::fromUtf8("centralWidget"));
        tabWidget = new QTabWidget(centralWidget);
        tabWidget->setObjectName(QString::fromUtf8("tabWidget"));
        tabWidget->setGeometry(QRect(0, 60, 841, 511));
        tabPortfolio = new QWidget();
        tabPortfolio->setObjectName(QString::fromUtf8("tabPortfolio"));
        tableWidgetPortfolioItems = new QTableWidget(tabPortfolio);
        tableWidgetPortfolioItems->setObjectName(QString::fromUtf8("tableWidgetPortfolioItems"));
        tableWidgetPortfolioItems->setGeometry(QRect(10, 10, 811, 421));
        pushButtonAjoutPortfolioItem = new QPushButton(tabPortfolio);
        pushButtonAjoutPortfolioItem->setObjectName(QString::fromUtf8("pushButtonAjoutPortfolioItem"));
        pushButtonAjoutPortfolioItem->setGeometry(QRect(10, 440, 83, 28));
        tabWidget->addTab(tabPortfolio, QString());
        tabRessources = new QWidget();
        tabRessources->setObjectName(QString::fromUtf8("tabRessources"));
        tableWidgetRessourcesItems_2 = new QTableWidget(tabRessources);
        tableWidgetRessourcesItems_2->setObjectName(QString::fromUtf8("tableWidgetRessourcesItems_2"));
        tableWidgetRessourcesItems_2->setGeometry(QRect(10, 10, 811, 421));
        pushButtonAjoutRessourcesItem_2 = new QPushButton(tabRessources);
        pushButtonAjoutRessourcesItem_2->setObjectName(QString::fromUtf8("pushButtonAjoutRessourcesItem_2"));
        pushButtonAjoutRessourcesItem_2->setGeometry(QRect(10, 440, 83, 28));
        tabWidget->addTab(tabRessources, QString());
        layoutWidget = new QWidget(centralWidget);
        layoutWidget->setObjectName(QString::fromUtf8("layoutWidget"));
        layoutWidget->setGeometry(QRect(10, 20, 441, 29));
        horizontalLayout = new QHBoxLayout(layoutWidget);
        horizontalLayout->setSpacing(6);
        horizontalLayout->setContentsMargins(11, 11, 11, 11);
        horizontalLayout->setObjectName(QString::fromUtf8("horizontalLayout"));
        horizontalLayout->setContentsMargins(0, 0, 0, 0);
        labelToolButton = new QLabel(layoutWidget);
        labelToolButton->setObjectName(QString::fromUtf8("labelToolButton"));

        horizontalLayout->addWidget(labelToolButton);

        toolButtonSelectBdd = new QToolButton(layoutWidget);
        toolButtonSelectBdd->setObjectName(QString::fromUtf8("toolButtonSelectBdd"));

        horizontalLayout->addWidget(toolButtonSelectBdd);

        labelBddSelect = new QLabel(layoutWidget);
        labelBddSelect->setObjectName(QString::fromUtf8("labelBddSelect"));

        horizontalLayout->addWidget(labelBddSelect);

        Administration->setCentralWidget(centralWidget);
        menuBar = new QMenuBar(Administration);
        menuBar->setObjectName(QString::fromUtf8("menuBar"));
        menuBar->setGeometry(QRect(0, 0, 839, 25));
        Administration->setMenuBar(menuBar);
        mainToolBar = new QToolBar(Administration);
        mainToolBar->setObjectName(QString::fromUtf8("mainToolBar"));
        Administration->addToolBar(Qt::TopToolBarArea, mainToolBar);

        retranslateUi(Administration);

        tabWidget->setCurrentIndex(0);


        QMetaObject::connectSlotsByName(Administration);
    } // setupUi

    void retranslateUi(QMainWindow *Administration)
    {
        Administration->setWindowTitle(QApplication::translate("Administration", "Administration", nullptr));
        pushButtonAjoutPortfolioItem->setText(QApplication::translate("Administration", "Ajouter", nullptr));
        tabWidget->setTabText(tabWidget->indexOf(tabPortfolio), QApplication::translate("Administration", "Portfolio", nullptr));
        pushButtonAjoutRessourcesItem_2->setText(QApplication::translate("Administration", "Ajouter", nullptr));
        tabWidget->setTabText(tabWidget->indexOf(tabRessources), QApplication::translate("Administration", "Ressources", nullptr));
        labelToolButton->setText(QApplication::translate("Administration", "Selectionnez une base de donn\303\251es :", nullptr));
        toolButtonSelectBdd->setText(QApplication::translate("Administration", "...", nullptr));
        labelBddSelect->setText(QString());
    } // retranslateUi

};

namespace Ui {
    class Administration: public Ui_Administration {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_ADMINISTRATION_H
