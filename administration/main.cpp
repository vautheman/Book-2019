#include "administration.h"
#include <QApplication>
#include <QtWidgets/QApplication>

int main(int argc, char *argv[])
{
    QApplication a(argc, argv);
    Administration w;
    w.show();

    return a.exec();
}
