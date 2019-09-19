#ifndef ADMINISTRATION_H
#define ADMINISTRATION_H

#include <QMainWindow>
#include <QtSql>

namespace Ui {
class administration;
}

class administration : public QMainWindow
{
    Q_OBJECT

public:
    explicit administration(QWidget *parent = nullptr);
    ~administration();

private:
    Ui::administration *ui;
};

#endif // ADMINISTRATION_H
