import QtQuick 2.6
import QtQuick.Controls 1.4
import QtQuick.Window 2.2


Rectangle {
    property var level: []
    property var theme: 'classic'

    visible: true
    width: parent.width
    height: parent.height

    Image { source: '../themes/' + theme +'/starfield.png'; fillMode: Image.Tile; anchors.fill: parent;}

    function getLevelAsArray(level){
        var arrayLevel = []

        for(var i = 0; i< level.length; i++){
            arrayLevel = arrayLevel.concat(level[i])
        }
        return arrayLevel;
    }

    Grid {
        id: scenario_grid
        x: 10
        y: 10
        rows: level.length
        columns: level[0].length
        spacing: 0
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
                value: getLevelAsArray(level)[index]
                levelTheme: theme
            }
        }
    }

}


