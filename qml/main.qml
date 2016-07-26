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

    Rectangle {
        id: scenario
        visible: true
        color: 'blue'
        anchors.top: mainMenu.bottom
        width: parent.width
        height: parent.height

    }

    Grid {
        id: scenario_grid
        x: 10
        y: 10
        rows: 5
        columns: 8
        spacing: 1
        anchors.centerIn: scenario

        property int piece_size: {

            var line_size = window.height/scenario_grid.rows
            var column_size = window.width/scenario_grid.columns

            return line_size < column_size ? line_size: column_size
        }

        Repeater {
            model: parent.rows * parent.columns
            Piece{
                size: scenario_grid.piece_size
            }
        }
    }
}
