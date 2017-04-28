#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include "fileio.h"

int main(int argc, char *argv[])
{
    qmlRegisterType<FileIO, 1>("FileIO", 1, 0, "FileIO");
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;    
    engine.load(QUrl(QStringLiteral("qml/main.qml")));

    return app.exec();
}
