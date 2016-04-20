#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include "player.h"

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);
    QQmlApplicationEngine engine;

    Player p1("Emma", 4);

    engine.rootContext()->setContextProperty("player1", &p1);

    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

    return app.exec();
}
