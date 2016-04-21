#include "player.h"

Player::Player(QString name, int num)
    :p_name(name), p_num(num)
{
    attack_kill = 0;
    attack_error = 0;
    attack_zero = 0;
    assist = 0;
    serve_plus = 0;
    serve_minus = 0;
    serve_ace = 0;
    dig = 0;
    s_rec_plus = 0;
    s_rec_minus = 0;
    s_rec_zero = 0;
    solo_block = 0;
    block_assist = 0;
    ball_drop = 0;
    foot_fault = 0;
    net_fault = 0;
    lift = 0;
    double_contact = 0;
    out_of_rotation = 0;
}

Player::Player()
{}

QString Player::getPlayerName()
{
    return p_name;
}

int Player::getPlayerNumber()
{
    return p_num;
}

void Player::setPlayerNumber(int num)
{
    p_num = num;
}

QString Player::makeQString(int stat)
{
    QString str;

    return str.append(QString("%1").arg(stat));
}

int Player::getAttackKill()
{
    return attack_kill;
}

void Player::setAttackKill(int num)
{
    attack_kill = num;
}

int Player::incrementStat(int num)
{
    return num++;
}

int Player::getAttackError()
{
    return attack_error;
}

int Player::getAttackZero()
{
    return attack_zero;
}

int Player::getAssist()
{
    return assist;
}

int Player::getServePlus()
{
    return serve_plus;
}

int Player::getServeMinus()
{
    return serve_minus;
}

int Player::getServeAce()
{
    return serve_ace;
}

int Player::getDig()
{
    return dig;
}

int Player::getSRecPlus()
{
    return s_rec_plus;
}

int Player::getSRecMinus()
{
    return s_rec_minus;
}

int Player::getSRecZero()
{
    return s_rec_zero;
}

int Player::getSoloBlock()
{
    return solo_block;
}

int Player::getBlockAssist()
{
    return block_assist;
}

int Player::getBallDrop()
{
    return ball_drop;
}

int Player::getFootFault()
{
    return foot_fault;
}

int Player::getNetFault()
{
    return net_fault;
}

int Player::getLift()
{
    return lift;
}

int Player::getDoubleContact()
{
    return double_contact;
}

int Player::getOutOfRotation()
{
    return out_of_rotation;
}
