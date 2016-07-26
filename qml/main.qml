import QtQuick 2.6
import QtQuick.Controls 1.4
import QtQuick.Window 2.2

ApplicationWindow {
    id: window
    color:'white'
    visible: true
    width: 800
    height: 800
    title: qsTr("KSokoban")
    Component.onCompleted: {
            setX(Screen.width / 2 - width / 2);
            setY(Screen.height / 2 - height / 2);
    }

    menuBar: MenuBar{
        id: mainMenu

        Menu {
            visible: true
            title: 'File'

             MenuItem {
                text: 'Close'
                shortcut: 'Alt+F4'
                onTriggered: window.close()
             }
        }
    }

    Scenario {
        x_size: 8
        y_size: 5
    }
}
