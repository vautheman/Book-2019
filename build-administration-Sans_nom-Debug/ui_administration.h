/********************************************************************************
** Form generated from reading UI file 'administration.ui'
**
** Created by: Qt User Interface Compiler version 5.7.1
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_ADMINISTRATION_H
#define UI_ADMINISTRATION_H

#include <QtCore/QVariant>
#include <QtWidgets/QAction>
#include <QtWidgets/QApplication>
#include <QtWidgets/QButtonGroup>
#include <QtWidgets/QHeaderView>
#include <QtWidgets/QMainWindow>
#include <QtWidgets/QMenuBar>
#include <QtWidgets/QStatusBar>
#include <QtWidgets/QToolBar>
#include <QtWidgets/QWidget>

QT_BEGIN_NAMESPACE

class Ui_Administration
{
public:
    QMenuBar *menuBar;
    QToolBar *mainToolBar;
    QWidget *centralWidget;
    QStatusBar *statusBar;

    void setupUi(QMainWindow *Administration)
    {
        if (Administration->objectName().isEmpty())
            Administration->setObjectName(QStringLiteral("Administration"));
        Administration->resize(400, 300);
        menuBar = new QMenuBar(Administration);
        menuBar->setObjectName(QStringLiteral("menuBar"));
        Administration->setMenuBar(menuBar);
        mainToolBar = new QToolBar(Administration);
        mainToolBar->setObjectName(QStringLiteral("mainToolBar"));
        Administration->addToolBar(mainToolBar);
        centralWidget = new QWidget(Administration);
        centralWidget->setObjectName(QStringLiteral("centralWidget"));
        Administration->setCentralWidget(centralWidget);
        statusBar = new QStatusBar(Administration);
        statusBar->setObjectName(QStringLiteral("statusBar"));
        Administration->setStatusBar(statusBar);

        retranslateUi(Administration);

        QMetaObject::connectSlotsByName(Administration);
    } // setupUi

    void retranslateUi(QMainWindow *Administration)
    {
        Administration->setWindowTitle(QApplication::translate("Administration", "Administration", Q_NULLPTR));
    } // retranslateUi

};

namespace Ui {
    class Administration: public Ui_Administration {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_ADMINISTRATION_H
