#ifndef DIALOGAJOUTPORTFOLIOITEMS_H
#define DIALOGAJOUTPORTFOLIOITEMS_H

#include <QDialog>

namespace Ui {
class DialogAjoutPortfolioItems;
}

class DialogAjoutPortfolioItems : public QDialog
{
    Q_OBJECT

public:
    explicit DialogAjoutPortfolioItems(QWidget *parent = nullptr);
    ~DialogAjoutPortfolioItems();
    QString pathImgPortfolioItem;

private slots:
    void on_toolButtonSelectImg_clicked();
    void on_pushButtonAjout_clicked();

private:
    Ui::DialogAjoutPortfolioItems *ui;
};

#endif // DIALOGAJOUTPORTFOLIOITEMS_H
