#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include "player.h"

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);
    QQmlApplicationEngine engine;

    Player p1("Emma", 4);
    Player p2("Emma", 4);
    Player p3("Emma", 4);
    Player p4("Emma", 4);
    Player p5("Emma", 4);
    Player p6("Emma", 4);
    Player p7("Emma", 4);
    Player p8("Emma", 4);
    Player p9("Emma", 4);
    Player p10("Emma", 4);
    Player p11("Emma", 4);
    Player p12("Emma", 4);

    engine.rootContext()->setContextProperty("player1", &p1);
    engine.rootContext()->setContextProperty("player2", &p2);
    engine.rootContext()->setContextProperty("player3", &p3);
    engine.rootContext()->setContextProperty("player4", &p4);
    engine.rootContext()->setContextProperty("player5", &p5);
    engine.rootContext()->setContextProperty("player6", &p6);
    engine.rootContext()->setContextProperty("player7", &p7);
    engine.rootContext()->setContextProperty("player8", &p8);
    engine.rootContext()->setContextProperty("player9", &p9);
    engine.rootContext()->setContextProperty("player10", &p10);
    engine.rootContext()->setContextProperty("player11", &p11);
    engine.rootContext()->setContextProperty("player12", &p12);

    QCoreApplication::setApplicationName("Lab2");
    QCoreApplication::setOrganizationName("EMMA");
    QCoreApplication::setOrganizationDomain(".fourThompson");

    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

    return app.exec();
}
