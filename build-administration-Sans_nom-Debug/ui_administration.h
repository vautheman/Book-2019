/********************************************************************************
** Form generated from reading UI file 'administration.ui'
**
** Created by: Qt User Interface Compiler version 5.11.3
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_ADMINISTRATION_H
#define UI_ADMINISTRATION_H

#include <QtCore/QVariant>
#include <QtWidgets/QApplication>
#include <QtWidgets/QMainWindow>
#include <QtWidgets/QMenuBar>
#include <QtWidgets/QStatusBar>
#include <QtWidgets/QToolBar>
#include <QtWidgets/QWidget>

QT_BEGIN_NAMESPACE

class Ui_administration
{
public:
    QMenuBar *menuBar;
    QToolBar *mainToolBar;
    QWidget *centralWidget;
    QStatusBar *statusBar;

    void setupUi(QMainWindow *administration)
    {
        if (administration->objectName().isEmpty())
            administration->setObjectName(QStringLiteral("administration"));
        administration->resize(400, 300);
        menuBar = new QMenuBar(administration);
        menuBar->setObjectName(QStringLiteral("menuBar"));
        administration->setMenuBar(menuBar);
        mainToolBar = new QToolBar(administration);
        mainToolBar->setObjectName(QStringLiteral("mainToolBar"));
        administration->addToolBar(mainToolBar);
        centralWidget = new QWidget(administration);
        centralWidget->setObjectName(QStringLiteral("centralWidget"));
        administration->setCentralWidget(centralWidget);
        statusBar = new QStatusBar(administration);
        statusBar->setObjectName(QStringLiteral("statusBar"));
        administration->setStatusBar(statusBar);

        retranslateUi(administration);

        QMetaObject::connectSlotsByName(administration);
    } // setupUi

    void retranslateUi(QMainWindow *administration)
    {
        administration->setWindowTitle(QApplication::translate("administration", "administration", nullptr));
    } // retranslateUi

};

namespace Ui {
    class administration: public Ui_administration {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_ADMINISTRATION_H
