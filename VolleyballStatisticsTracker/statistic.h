#ifndef STATISTIC_H
#define STATISTIC_H
#include <QObject>
#include <QDebug>
#include <QString>

class Statistic : public QObject
{
    Q_OBJECT
public:
    explicit Statistic();
    //~Statistic();

public slots:
    int getStatCount();
    QString getStatName();

private:
    int count;
    QString name;
};

#endif //STATISTIC_H
