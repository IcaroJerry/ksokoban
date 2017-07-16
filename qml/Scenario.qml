import QtQuick 2.6
import QtQuick.Controls 1.4
import QtQuick.Window 2.2

Rectangle {
    visible: true
    width: parent.width
    height: parent.height

    property var level: []
    property string theme: "classic"

    function getLevelAsArray(level) {
        var arrayLevel = []
        for (var i = 0; i < level.length; ++i)
            arrayLevel = arrayLevel.concat(level[i])
        return arrayLevel
    }

    Image {
        anchors.fill: parent
        fillMode: Image.Tile
        source: "qrc:/themes/%1/starfield.png".arg(theme)
    }

    Shortcut {
        context: Qt.ApplicationShortcut
        sequence: "w"
        onActivated: {
            console.log("subir")
        }
    }

    Shortcut {
        context: Qt.ApplicationShortcut
        sequence: "s"
        onActivated: {}
    }

    Shortcut {
        context: Qt.ApplicationShortcut
        sequence: "d"
        onActivated: {}
    }

    Shortcut {
        context: Qt.ApplicationShortcut
        sequence: "a"
        onActivated: {}
    }

    Component.onCompleted: {
        console.log("rows: ", level.length)
        console.log("columns: ", level[0].length)
    }

    GridView {
        id: scenario_grid
        cellHeight: 0; cellWidth: 0
        model: rows * columns
        width: 100 * rows
        height: 100 * columns
        anchors.centerIn: scenario
        delegate: Piece {
            levelTheme: theme
            rootGrid: scenario_grid
            size: scenario_grid.piece_size
            value: getLevelAsArray(level)[index]
        }

        property int rows: level.length
        property int columns: level[0].length
        property var manPosition: []
        property Piece theMan

        onTheManChanged: console.log("man changed")

        property int piece_size: {
            var line_size = window.height/scenario_grid.rows
            var column_size = window.width/scenario_grid.columns
            return line_size < column_size ? line_size: column_size
        }
    }
}
