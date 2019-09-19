#include "administration.h"
#include "ui_administration.h"

administration::administration(QWidget *parent) :
    QMainWindow(parent),
    ui(new Ui::administration)
{
    ui->setupUi(this);
}

administration::~administration()
{
    delete ui;
}
