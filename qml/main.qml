import QtQuick 2.6
import QtQuick.Controls 1.4
import QtQuick.Window 2.2
import "../javascript/level-list.js" as LevelList

ApplicationWindow {
    property int level_number: 1;

    id: window
    color:'black'
    visible: true
    width: 800
    height: 800
    title: qsTr("KSokoban")
    Component.onCompleted: {
            setX(Screen.width / 2 - width / 2);
            setY(Screen.height / 2 - height / 2);
    }

    menuBar: MainMenu {
        id: mainMenu
    }

    Scenario {
        level: LevelList.getLevel(level_number)
    }
}
