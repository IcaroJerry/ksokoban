import QtQuick 2.6
import QtQuick.Controls 1.4
import QtQuick.Window 2.2
import QtQuick.Controls.Styles 1.4
import FileIO 1.0

import "../javascript/level-list.js" as LevelList

ApplicationWindow {
    property int level_number: 2;

    id: window
    visible: true
    width: 800
    height: 800
    title: qsTr("KSokoban")

    Component.onCompleted: {
            setX(Screen.width / 2 - width / 2);
            setY(Screen.height / 2 - height / 2);
            var str = levelList.read();        
            console.log('str: ', str);


    }

    FileIO {
            id: levelList
            source: "levels/default/level.data"
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
