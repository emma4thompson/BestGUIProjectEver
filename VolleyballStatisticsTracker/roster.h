#ifndef ROSTER_H
#define ROSTER_H
#include <QObject>
#include <QString>
#include "player.h"

class Roster : public QObject
{
    Q_OBJECT
public:
    explicit Roster();
    void AddPlayer();
    void RemovePlayer();
private:
    int num_players;
    Player players[8];
};

#endif // ROSTER_H
