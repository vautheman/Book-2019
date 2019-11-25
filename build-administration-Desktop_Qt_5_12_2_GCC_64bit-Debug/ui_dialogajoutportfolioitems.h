/********************************************************************************
** Form generated from reading UI file 'dialogajoutportfolioitems.ui'
**
** Created by: Qt User Interface Compiler version 5.12.2
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_DIALOGAJOUTPORTFOLIOITEMS_H
#define UI_DIALOGAJOUTPORTFOLIOITEMS_H

#include <QtCore/QVariant>
#include <QtWidgets/QApplication>
#include <QtWidgets/QDialog>
#include <QtWidgets/QHBoxLayout>
#include <QtWidgets/QLabel>
#include <QtWidgets/QLineEdit>
#include <QtWidgets/QPushButton>
#include <QtWidgets/QTextEdit>
#include <QtWidgets/QToolButton>
#include <QtWidgets/QVBoxLayout>
#include <QtWidgets/QWidget>

QT_BEGIN_NAMESPACE

class Ui_DialogAjoutPortfolioItems
{
public:
    QPushButton *pushButtonAjout;
    QPushButton *pushButton_2;
    QWidget *widget;
    QVBoxLayout *verticalLayout;
    QLabel *labelNom;
    QLineEdit *lineEditNom;
    QLabel *labelDesc;
    QTextEdit *textEditDesc;
    QLabel *labelUrlMemento;
    QLineEdit *lineEditUrlMemento;
    QLabel *labelAncre;
    QLineEdit *lineEditAncre;
    QHBoxLayout *horizontalLayout;
    QLabel *labelImg;
    QToolButton *toolButtonSelectImg;

    void setupUi(QDialog *DialogAjoutPortfolioItems)
    {
        if (DialogAjoutPortfolioItems->objectName().isEmpty())
            DialogAjoutPortfolioItems->setObjectName(QString::fromUtf8("DialogAjoutPortfolioItems"));
        DialogAjoutPortfolioItems->resize(391, 552);
        pushButtonAjout = new QPushButton(DialogAjoutPortfolioItems);
        pushButtonAjout->setObjectName(QString::fromUtf8("pushButtonAjout"));
        pushButtonAjout->setEnabled(true);
        pushButtonAjout->setGeometry(QRect(200, 510, 83, 28));
        pushButtonAjout->setFlat(false);
        pushButton_2 = new QPushButton(DialogAjoutPortfolioItems);
        pushButton_2->setObjectName(QString::fromUtf8("pushButton_2"));
        pushButton_2->setGeometry(QRect(290, 510, 83, 28));
        widget = new QWidget(DialogAjoutPortfolioItems);
        widget->setObjectName(QString::fromUtf8("widget"));
        widget->setGeometry(QRect(20, 20, 351, 481));
        verticalLayout = new QVBoxLayout(widget);
        verticalLayout->setObjectName(QString::fromUtf8("verticalLayout"));
        verticalLayout->setContentsMargins(0, 0, 0, 0);
        labelNom = new QLabel(widget);
        labelNom->setObjectName(QString::fromUtf8("labelNom"));

        verticalLayout->addWidget(labelNom);

        lineEditNom = new QLineEdit(widget);
        lineEditNom->setObjectName(QString::fromUtf8("lineEditNom"));

        verticalLayout->addWidget(lineEditNom);

        labelDesc = new QLabel(widget);
        labelDesc->setObjectName(QString::fromUtf8("labelDesc"));

        verticalLayout->addWidget(labelDesc);

        textEditDesc = new QTextEdit(widget);
        textEditDesc->setObjectName(QString::fromUtf8("textEditDesc"));

        verticalLayout->addWidget(textEditDesc);

        labelUrlMemento = new QLabel(widget);
        labelUrlMemento->setObjectName(QString::fromUtf8("labelUrlMemento"));

        verticalLayout->addWidget(labelUrlMemento);

        lineEditUrlMemento = new QLineEdit(widget);
        lineEditUrlMemento->setObjectName(QString::fromUtf8("lineEditUrlMemento"));

        verticalLayout->addWidget(lineEditUrlMemento);

        labelAncre = new QLabel(widget);
        labelAncre->setObjectName(QString::fromUtf8("labelAncre"));

        verticalLayout->addWidget(labelAncre);

        lineEditAncre = new QLineEdit(widget);
        lineEditAncre->setObjectName(QString::fromUtf8("lineEditAncre"));

        verticalLayout->addWidget(lineEditAncre);

        horizontalLayout = new QHBoxLayout();
        horizontalLayout->setObjectName(QString::fromUtf8("horizontalLayout"));
        labelImg = new QLabel(widget);
        labelImg->setObjectName(QString::fromUtf8("labelImg"));

        horizontalLayout->addWidget(labelImg);

        toolButtonSelectImg = new QToolButton(widget);
        toolButtonSelectImg->setObjectName(QString::fromUtf8("toolButtonSelectImg"));

        horizontalLayout->addWidget(toolButtonSelectImg);


        verticalLayout->addLayout(horizontalLayout);


        retranslateUi(DialogAjoutPortfolioItems);

        pushButtonAjout->setDefault(true);


        QMetaObject::connectSlotsByName(DialogAjoutPortfolioItems);
    } // setupUi

    void retranslateUi(QDialog *DialogAjoutPortfolioItems)
    {
        DialogAjoutPortfolioItems->setWindowTitle(QApplication::translate("DialogAjoutPortfolioItems", "Dialog", nullptr));
        pushButtonAjout->setText(QApplication::translate("DialogAjoutPortfolioItems", "Ajouter", nullptr));
        pushButton_2->setText(QApplication::translate("DialogAjoutPortfolioItems", "Annuler", nullptr));
        labelNom->setText(QApplication::translate("DialogAjoutPortfolioItems", "Nom :", nullptr));
        labelDesc->setText(QApplication::translate("DialogAjoutPortfolioItems", "Description :", nullptr));
        labelUrlMemento->setText(QApplication::translate("DialogAjoutPortfolioItems", "URL Mememto :", nullptr));
        labelAncre->setText(QApplication::translate("DialogAjoutPortfolioItems", "Ancre : ", nullptr));
        labelImg->setText(QApplication::translate("DialogAjoutPortfolioItems", "Selectionner une image :", nullptr));
        toolButtonSelectImg->setText(QApplication::translate("DialogAjoutPortfolioItems", "...", nullptr));
    } // retranslateUi

};

namespace Ui {
    class DialogAjoutPortfolioItems: public Ui_DialogAjoutPortfolioItems {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_DIALOGAJOUTPORTFOLIOITEMS_H
