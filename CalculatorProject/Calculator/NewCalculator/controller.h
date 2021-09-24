#ifndef CONTROLLER_H
#define CONTROLLER_H

#include <QObject>
#include <number.h>

class Controller : public QObject
{
    Q_OBJECT
public:
    explicit Controller(QObject *parent = nullptr);
    //~Controller();

public slots:
    void manageDataTransferFromQmlToCpp();
signals:

private:
    Number* number;
};

#endif // CONTROLLER_H
