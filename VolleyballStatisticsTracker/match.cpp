#include "match.h"

Match::Match(Roster r)
{

}

Match::Match()
{

}

void Match::setOpponent(QString op)
{
    opponent = op;
}

QString Match::getOpponent()
{
    return opponent;
}
