#ifndef ADMINISTRATION_H
#define ADMINISTRATION_H

#include <QMainWindow>

namespace Ui {
class Administration;
}

class Administration : public QMainWindow
{
    Q_OBJECT

public:
    explicit Administration(QWidget *parent = nullptr);
    ~Administration();
    // connexion database

public slots:
    void remplirTableWidgetPortfolioItem();


private slots:
    void on_toolButtonSelectBdd_clicked();
    void remplirTableWidgetRessourcesItem();
    void on_pushButtonAjoutPortfolioItem_clicked();

    void on_tableWidgetPortfolioItems_cellClicked(int row, int column);

private:
    Ui::Administration *ui;
};

#endif // ADMINISTRATION_H
