import QtQuick 2.6
import QtQuick.Controls 1.4

Rectangle {
    id: rootPiece
    color: "#00000000"
    width: size; height: width

    property int value: 0
    property int size: 100
    property string levelTheme
    property GridView rootGrid

    Label {
        text: index; anchors.centerIn: parent; color: "white"
    }

    function getPiece(number) {
        var path = 'qrc:/themes/' + levelTheme + '/'
        switch (number) {
            case 4:
                path += 'man.png';
                rootGrid.theMan = rootPiece
                break;
            case 5:
                path += 'saveman.png';
                break;
            case 3:
                path += 'object.png';
                break;
            case 8:
                path += 'goal.png'; break;
            case 9:
                path += 'treasure.png';
                break;
            case 1:
                path += 'stone_1.png';
                break;
            case 0:
                path += 'floor.png';
                break;
        }
        return path
    }

    Image {
        id: img
        asynchronous: true
        anchors.fill: parent
        source: getPiece(value)
    }
}
