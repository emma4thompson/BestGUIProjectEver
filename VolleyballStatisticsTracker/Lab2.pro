TEMPLATE = app

QT += qml quick
CONFIG += c++11

SOURCES += main.cpp \
    match.cpp \
    roster.cpp \
    player.cpp

RESOURCES += qml.qrc \
    media.qrc

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Default rules for deployment.
include(deployment.pri)

HEADERS += \
    match.h \
    roster.h \
    player.h

DISTFILES += \
    media.qml
