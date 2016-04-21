#include "statistic.h"

Statistic::Statistic()
    :count(0)
{
    qDebug() << "Statistic constructor ";
}

int Statistic::getStatCount()
{
    return count;
}

QString Statistic::getStatName()
{
    return name;
}
