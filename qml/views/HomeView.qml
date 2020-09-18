import QtQuick 2.0
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.4

import "../components"

Rectangle {
    id: root

    Layout.fillWidth: true
    Layout.fillHeight: true

    color: themeBlue
    clip: true
    height: mainApp.height
    width: mainApp.width

    Item
    {
        id: topbar
        width: root.width
        height: 150

        anchors.top: parent.top
        anchors.left: parent.left

        ColumnLayout
        {
            anchors.fill: parent
            anchors.margins: 20

            spacing: 5

            Item{
                Layout.fillWidth: true
                Layout.preferredHeight: 40

                Item{
                    height: 40
                    width: 40
                    anchors.left: parent.left
                    anchors.verticalCenter: parent.verticalCenter

                    AppIcon
                    {
                        color: themeFore
                        size: 30
                        icon: "\uf0c9"

                        anchors.centerIn: parent
                    }

                    MouseArea
                    {
                        anchors.fill: parent
                        onClicked: {
                            // sconsole.log("Clicked")
                            menuDrawer.open();
                        }
                    }
                } // Menu Button
            }

            Item{
                Layout.fillWidth: true
                Layout.fillHeight: true

                ColumnLayout
                {
                    anchors.fill: parent
                    spacing: 2

                    AppText
                    {
                        color: themeFore
                        size: 18
                        text: qsTr("Hello, Jameson")
                    }

                    AppText
                    {
                        color: themeFore
                        size: 14
                        text: qsTr("Lets do a quick check!")
                    }
                }
            }
        }
    }

    Rectangle
    {
        id: rec
        color: themeFore
        height: root.height-150
        width: root.width
        radius: 15
        anchors.bottom: parent.bottom
        anchors.left: parent.left
        anchors.bottomMargin: -15

        ColumnLayout
        {
            anchors.fill: parent
            anchors.margins: 20
            spacing: 2

            AppText
            {
                color: "#535353"
                size: 15
                text: qsTr("STATS")
            }

            ScrollView
            {
                id: scroll
                Layout.fillWidth: true
                Layout.fillHeight: true
                ScrollBar.horizontal.policy: ScrollBar.AlwaysOff
                ScrollBar.vertical.policy: ScrollBar.AlwaysOff
                clip: true

                GridLayout
                {
                    id: grid
                    width: scroll.width
                    height: scroll.height
                    rowSpacing: 5
                    columnSpacing: 5
                    rows: 2
                    columns: 2

                    HomeWidget
                    {
                        width: (grid.width-10)/2
                        height: width*1.2
                        Layout.row: 0
                        Layout.column: 0

                        label: qsTr("HEART RATE")
                        icon: "\uf004"
                        value: qsTr("78")
                        units: qsTr("bpm")
                        updated: qsTr("2m")

                    }

                    HomeWidget
                    {
                        width: (grid.width-10)/2
                        height: width*1.2
                        Layout.row: 0
                        Layout.column: 1

                        label: qsTr("TEMPERATURE")
                        icon: "\uf76b"
                        value: qsTr("37")
                        units: qsTr("°C")
                        updated: qsTr("5m")
                    }

                    HomeWidget
                    {
                        width: (grid.width-10)/2
                        height: width*1.35
                        Layout.row: 1
                        Layout.column: 0

                        label: qsTr("SPO2")
                        icon: "\uf604"
                        value: qsTr("97")
                        units: qsTr("%")
                        updated: qsTr("1m")
                    }

                    HomeWidget
                    {
                        width: (grid.width-10)/2
                        height: width*1.35
                        Layout.row: 1
                        Layout.column: 1

                        label: qsTr("HEALTH")
                        icon: "\uf0f1"
                        value: qsTr("98")
                        units: qsTr("%")
                        updated: qsTr("0m")
                    }
                }
            }
        }
    }
}
