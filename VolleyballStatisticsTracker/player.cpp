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

void Player::setPlayerName(QString name)
{
    p_name = name;
}

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

void Player::setAttackError(int stat)
{
    attack_error = stat;
}

void Player::setAttackZero(int stat)
{
    attack_zero = stat;
}

void Player::setAssist(int stat)
{
    assist = stat;
}

void Player::setServePlus(int stat)
{
    serve_plus = stat;
}

void Player::setServeMinus(int stat)
{
    serve_minus = stat;
}

void Player::setServeAce(int stat)
{
    serve_ace = stat;
}

void Player::setDig(int stat)
{
    dig = stat;
}

void Player::setSRecPlus(int stat)
{
    s_rec_plus = stat;
}

void Player::setSRecMinus(int stat)
{
    s_rec_minus = stat;
}

void Player::setSRecZero(int stat)
{
    s_rec_zero = stat;
}

void Player::setSoloBlock(int stat)
{
    solo_block = stat;
}

void Player::setBlockAssist(int stat)
{
    block_assist = stat;
}

void Player::setBallDrop(int stat)
{
    ball_drop = stat;
}

void Player::setFootFault(int stat)
{
    foot_fault = stat;
}

void Player::setNetFault(int stat)
{
    net_fault = stat;
}

void Player::setLift(int stat)
{
    lift = stat;
}

void Player::setDoubleContact(int stat)
{
    double_contact = stat;
}

void Player::setOutOfRotation(int stat)
{
    out_of_rotation = stat;
}
