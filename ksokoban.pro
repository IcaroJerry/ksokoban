TEMPLATE = app

QT += qml quick
CONFIG += c++11

SOURCES += cpp/main.cpp \
    cpp/fileio.cpp

HEADERS += \
    cpp/fileio.h

RESOURCES += qml.qrc

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Default rules for deployment.
include(deployment.pri)
