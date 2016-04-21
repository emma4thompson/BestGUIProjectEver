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
    void setPlayerNumber(int num);
    QString makeQString(int stat);
    int getAttackKill();
    void setAttackKill(int num);
    int incrementStat(int num);
    int getAttackError();
    int getAttackZero();
    int getAssist();
    int getServePlus();
    int getServeMinus();
    int getServeAce();
    int getDig();
    int getSRecPlus();
    int getSRecMinus();
    int getSRecZero();
    int getSoloBlock();
    int getBlockAssist();
    int getBallDrop();
    int getFootFault();
    int getNetFault();
    int getLift();
    int getDoubleContact();
    int getOutOfRotation();
    //~Player();

//private:
public:
    QString p_name;
    int p_num;
    int attack_kill;
    int attack_error;
    int attack_zero;
    int assist;
    int serve_plus;
    int serve_minus;
    int serve_ace;
    int dig;
    int s_rec_plus;
    int s_rec_minus;
    int s_rec_zero;
    int solo_block;
    int block_assist;
    //unforced errors
    int ball_drop;
    int foot_fault;
    int net_fault;
    int lift;
    int double_contact;
    int out_of_rotation;
};

#endif // PLAYER_H
