import QtQuick 2.0
import QtQuick.Layouts 1.3

import "../components"

Rectangle
{
    id: root
    color: themeLight
    border.width: 1
    border.color: "silver"
    radius: 5

    property alias label: label.text
    property alias labelColor: label.color
    property alias value: txt1.text
    property alias valueColor: txt1.color
    property alias units: unit.text
    property alias unitsColor: unit.color
    property string updated: "2m"
    property alias icon: ico.icon

    ColumnLayout
    {
        anchors.fill: parent
        anchors.margins: 20
        spacing: 5

        AppText
        {
            id: label
            color: "#2e2e2e"
            size: 12
            bold: true
            text: qsTr("HEART RATE")
        }


        Item
        {
            Layout.fillHeight: true
            Layout.fillWidth: true

            AppIcon
            {
                id: ico
                color: themeBlue
                size: parent.height*0.5
                icon: "\uf004"
                anchors.left: parent.left
                anchors.verticalCenter: parent.verticalCenter
            }
        }

        Item{
            Layout.fillWidth: true
            height: txt1.height+2

            RowLayout
            {
                anchors.fill: parent
                spacing: 2

                AppText
                {
                    id: txt1
                    color: "black"
                    size: 35
                    bold: true
                    text: qsTr("78")
                    textFormat: AppText.StyledText
                }

                AppText
                {
                    id: unit
                    color: "#2e2e2e"
                    text: qsTr("bpm")
                    size: 12
                    textFormat: AppText.StyledText

                    Layout.fillWidth: true
                    Layout.fillHeight: true
                    horizontalAlignment: AppText.AlignLeft
                    verticalAlignment: AppText.AlignBottom
                }
            }
        }

        AppText
        {
            color: "#2e2e2e"
            size: 10
            text: qsTr("Last updated: ") + updated
        }
    }
}
