import QtQuick 2.0
import QtQuick.Controls 2.4
import QtQuick.Layouts 1.3

TextField
{
    id: root
    height: 30
    Layout.fillWidth: true
    Layout.topMargin: 10

    font.pixelSize: 15
    color: themeFore

    background: Rectangle
    {
        color: "transparent"
        border.width: 0
    }

    Rectangle
    {
        width: parent.width
        height: 1
        color: themeFore
        opacity: 0.5

        anchors.bottom: parent.bottom
        anchors.bottomMargin: -5
    }
}
