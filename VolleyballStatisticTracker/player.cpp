#include "player.h"

Player::Player(QString name, int num)
    :p_name(name), p_num(num)
{

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

//Statistic Player::getAttackKill()
//{
//    return attack_kill;
//}

//Statistic Player::getAttackError()
//{
//    return attack_error;
//}

//Statistic Player::getAttackZero()
//{
//    return attack_zero;
//}

//Statistic Player::getAssist()
//{
//    return assist;
//}

//Statistic Player::getServePlus()
//{
//    return serve_plus;
//}

//Statistic Player::getServeMinus()
//{
//    return serve_minus;
//}

//Statistic Player::getServeAce()
//{
//    return serve_ace;
//}

//Statistic Player::getDig()
//{
//    return dig;
//}

//Statistic Player::getSRecPlus()
//{
//    return s_rec_plus;
//}

//Statistic Player::getSRecMinus()
//{
//    return s_rec_minus;
//}

//Statistic Player::getSRecZero()
//{
//    return s_rec_zero;
//}

//Statistic Player::getSoloBlock()
//{
//    return solo_block;
//}

//Statistic Player::getBlockAssist()
//{
//    return block_assist;
//}

//Statistic Player::getBallDrop()
//{
//    return ball_drop;
//}

//Statistic Player::getFootFault()
//{
//    return foot_fault;
//}

//Statistic Player::getNetFault()
//{
//    return net_fault;
//}

//Statistic Player::getLift()
//{
//    return lift;
//}

//Statistic Player::getDoubleContact()
//{
//    return double_contact;
//}

//Statistic Player::getOutOfRotation()
//{
//    return out_of_rotation;
//}
