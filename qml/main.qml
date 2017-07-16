import QtQuick 2.8
import QtQuick.Controls 1.4
import QtQuick.Window 2.2

import FileIO 1.0

import "qrc:/javascript/level-list.js" as LevelList

ApplicationWindow {
    id: window
    visible: true
    width: 800; height: width
    title: qsTr("Welcome to KSokoban")

    property int level_number: 2

    Component.onCompleted: {
        setX(Screen.width / 2 - width / 2)
        setY(Screen.height / 2 - height / 2)
        levelList.read()
    }

    FileIO {
        id: levelList
        source: "qrc:/levels/default/level.data"
        onError: console.log(msg)
    }

    menuBar: MainMenu {
        id: mainMenu
    }

    Scenario {
        id: scenario
        level: LevelList.getLevel(level_number)
        anchors.top: mainMenu.bottom
    }
}
