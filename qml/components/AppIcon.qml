import QtQuick 2.0
import QtQuick.Controls 2.5

Label {
    id: root
    property alias size: root.font.pixelSize
    property alias icon: root.text
    property alias color: root.color

    text: ""
    color: "white"
    font.pixelSize: 15
    font.family: mainApp.fontAwesomeFontLoader.name
}
