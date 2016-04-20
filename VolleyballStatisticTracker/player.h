#ifndef PLAYER_H
#define PLAYER_H
#include <QObject>
#include <QString>
#include "statistic.h"

class Player : public QObject
{
    Q_OBJECT

public:
    explicit Player(QString name, int number);
    Player();
public slots:
    QString getPlayerName();
    int getPlayerNumber();
//    Statistic getAttackKill();
//    Statistic getAttackError();
//    Statistic getAttackZero();
//    Statistic getAssist();
//    Statistic getServePlus();
//    Statistic getServeMinus();
//    Statistic getServeAce();
//    Statistic getDig();
//    Statistic getSRecPlus();
//    Statistic getSRecMinus();
//    Statistic getSRecZero();
//    Statistic getSoloBlock();
//    Statistic getBlockAssist();
//    Statistic getBallDrop();
//    Statistic getFootFault();
//    Statistic getNetFault();
//    Statistic getLift();
//    Statistic getDoubleContact();
//    Statistic getOutOfRotation();
    //~Player();

//private:
public:
    QString p_name;
    int p_num;
    Statistic attack_kill;
    Statistic attack_error;
    Statistic attack_zero;
    Statistic assist;
    Statistic serve_plus;
    Statistic serve_minus;
    Statistic serve_ace;
    Statistic dig;
    Statistic s_rec_plus;
    Statistic s_rec_minus;
    Statistic s_rec_zero;
    Statistic solo_block;
    Statistic block_assist;
    //unforced errors
    Statistic ball_drop;
    Statistic foot_fault;
    Statistic net_fault;
    Statistic lift;
    Statistic double_contact;
    Statistic out_of_rotation;
};

#endif // PLAYER_H
