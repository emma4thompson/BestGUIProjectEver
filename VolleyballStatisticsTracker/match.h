#ifndef MATCH_H
#define MATCH_H
#include <QObject>
#include <QString>

class Match : public QObject
{
    Q_OBJECT

public:
    explicit Match(int);

public slots:
    void setOpponent(QString);
    QString getOpponent();
    int getSet1_h();
    int getSet2_h();
    int getSet3_h();
    int getSet4_h();
    int getSet5_h();
    void setSet1_h(int s);
    void setSet2_h(int s);
    void setSet3_h(int s);
    void setSet4_h(int s);
    void setSet5_h(int s);
    int getSet1_o();
    int getSet2_o();
    int getSet3_o();
    int getSet4_o();
    int getSet5_o();
    void setSet1_o(int s);
    void setSet2_o(int s);
    void setSet3_o(int s);
    void setSet4_o(int s);
    void setSet5_o(int s);

public:
    int set1_h;
    int set2_h;
    int set3_h;
    int set4_h;
    int set5_h;
    int set1_o;
    int set2_o;
    int set3_o;
    int set4_o;
    int set5_o;
    QString opponent;
};

#endif // MATCH_H
