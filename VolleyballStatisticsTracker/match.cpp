#include "match.h"

Match::Match(int i)
    :set1_h(0), set2_h(0), set3_h(0), set4_h(0), set5_h(0), set1_o(0), set2_o(0), set3_o(0), set4_o(0), set5_o(0)
{
    i = 0;
}

void Match::setOpponent(QString op)
{
    opponent = op;
}

QString Match::getOpponent()
{
    return opponent;
}

int Match::getSet1_h()
{
    return set1_h;
}

int Match::getSet2_h()
{
    return set2_h;
}

int Match::getSet3_h()
{
    return set3_h;
}

int Match::getSet4_h()
{
    return set4_h;
}

int Match::getSet5_h()
{
    return set5_h;
}

void Match::setSet1_h(int s)
{
    set1_h = s;
}

void Match::setSet2_h(int s)
{
    set2_h = s;
}

void Match::setSet3_h(int s)
{
    set3_h = s;
}

void Match::setSet4_h(int s)
{
    set4_h = s;
}

void Match::setSet5_h(int s)
{
    set5_h = s;
}

int Match::getSet1_o()
{
    return set1_o;
}

int Match::getSet2_o()
{
    return set2_o;
}

int Match::getSet3_o()
{
    return set3_o;
}

int Match::getSet4_o()
{
    return set4_o;
}

int Match::getSet5_o()
{
    return set5_o;
}

void Match::setSet1_o(int s)
{
    set1_o = s;
}

void Match::setSet2_o(int s)
{
    set2_o = s;
}

void Match::setSet3_o(int s)
{
    set3_o = s;
}

void Match::setSet4_o(int s)
{
    set4_o = s;
}

void Match::setSet5_o(int s)
{
    set5_o = s;
}
