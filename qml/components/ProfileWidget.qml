import QtQuick 2.0
import QtQuick.Layouts 1.3
import "../components"

Rectangle{
    Layout.fillWidth: true
    Layout.preferredHeight: 55
    color: "transparent"
    radius: 5
    border.width: 1
    border.color: "silver"

    property alias text: txt.text
    property alias label: lbl.text
    property alias readOnly: txt.readOnly

    ColumnLayout
    {
        anchors.fill: parent
        anchors.leftMargin: 5
        anchors.rightMargin: 5
        spacing: 1

        AppText
        {
            id: lbl
            color: "#535353"
            size: 12
        }

        CustomAppTextInput
        {
            id: txt
            Layout.topMargin: -10
            placeholderText: label
            color: "black"
        }
    }
}
