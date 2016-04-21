#ifndef MATCH_H
#define MATCH_H
#include <QObject>
#include <QString>
#include "roster.h"

class Match : public QObject
{
    Q_OBJECT

public:
    explicit Match(Roster r);
    Match();
    void setOpponent(QString);
    QString getOpponent();

private:
    int set = 0;
    QString opponent;
    //int home_final_score;
    //int opp_final_score;
};

#endif // MATCH_H
