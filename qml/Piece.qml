import QtQuick 2.6

Rectangle {
    property string value: ''
    property int size: 100
    width : size
    height: size
    color: 'black'

    Image {
        anchors.fill: parent
        id: img
        source: value
    }
}
