import QtQuick 2.0

Text {
    id: root
    property alias size: root.font.pixelSize
    property alias color: root.color
    property alias family: root.font.family
    property alias bold: root.font.bold
    property alias italic: root.font.italic

    font.pixelSize: 15
    color: "white"
    font.bold: false
    font.italic: false
}
