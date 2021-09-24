#include "controller.h"
#include <QDebug>

Controller::Controller(QObject *parent) : QObject(parent)
{
    //Number* number = new Number();
}

void Controller::manageDataTransferFromQmlToCpp()
{
    qDebug("me");
   //number->castToDecimal(DEC_RADIX_TYPE);
   number->setNumberFromDecToRadixOther();
}
