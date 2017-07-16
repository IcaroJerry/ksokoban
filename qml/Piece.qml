import QtQuick 2.6

Rectangle {
    width: size
    height: width
    color: "#000"

    property int value: 0
    property int size: 100
    property string levelTheme: "classic"

    function getPiece(number){
        var path = '../themes/' + levelTheme + '/'
        switch(number) {
            case 4: path += 'man.png'; break;
            case 5: path += 'saveman.png'; break;
            case 3: path += 'object.png'; break;
            case 8: path += 'goal.png'; break;
            case 9: path += 'treasure.png'; break;
            case 1: path += 'stone_1.png'; break;
            case 0: path += 'floor.png'; break;
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
