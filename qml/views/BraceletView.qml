import QtQuick 2.0
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.4

import "../components"

Rectangle {
    id: root

    Layout.fillWidth: true
    Layout.fillHeight: true
    width: mainApp.width
    height: mainApp.height

    color: themeFore
    clip: true

    Rectangle
    {
        id: topbar
        color: themeBlue
        width: root.width
        height: 70
        radius: 10

        anchors.top: parent.top
        anchors.left: parent.left
        anchors.topMargin: -10

        RowLayout
        {
            width: root.width
            height: 60
            anchors.bottom: parent.bottom
            anchors.left: parent.left

            spacing: 5

            Item{
                height: 40
                width: 40

                Layout.leftMargin: 20
                Layout.alignment: Qt.AlignVCenter|Qt.AlignLeft

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


            Item{
                Layout.fillWidth: true; height: 1;
            }

            Item{
                height: 40
                width: 40

                Layout.rightMargin: 20
                Layout.alignment: Qt.AlignVCenter|Qt.AlignRight

                AppIcon
                {
                    color: themeFore
                    size: 30
                    icon: "\uf058"

                    anchors.centerIn: parent
                }

                MouseArea
                {
                    anchors.fill: parent
                    onClicked: {
                        // sconsole.log("Clicked")
                        // menuDrawer.open();
                    }
                }
            } // Tick Button


        }
    }

    Item{
        width: root.width
        anchors.top: topbar.bottom
        anchors.topMargin: 20
        anchors.bottomMargin: 20
        anchors.bottom: parent.bottom

        ColumnLayout
        {
            anchors.fill: parent
            spacing: 10

            Rectangle
            {
                Layout.fillWidth: true
                Layout.preferredHeight: 180
                Layout.leftMargin: 20
                Layout.rightMargin: 20
                color: themeFore
                border.color: "silver"
                border.width: 1

                RowLayout
                {
                    anchors.fill: parent
                    anchors.margins: 20
                    spacing: 5

                    AppIcon
                    {
                        color: "#555555"
                        size: 60
                        icon: "\uf63e"

                        Layout.alignment: Qt.AlignVCenter|Qt.AlignLeft
                    }

                    Rectangle
                    {
                        Layout.fillHeight: true
                        Layout.preferredWidth: 1
                        Layout.leftMargin: 20
                        color: "silver"
                    }

                    Item{
                        Layout.fillWidth: true
                        Layout.fillHeight: true

                        ColumnLayout
                        {
                            width: parent.width
                            anchors.left: parent.left
                            anchors.verticalCenter: parent.verticalCenter
                            spacing: 10

                            AppText
                            {
                                color: "#2e2e2e"
                                size: 14
                                text: qsTr("Device Id: HSVJ4654FCD")
                            }

                            AppText
                            {
                                color: "#535353"
                                size: 14
                                text: qsTr("Connected: YES")
                            }

                            AppText
                            {
                                color: "#535353"
                                size: 14
                                text: qsTr("Signal Strength: GOOD")
                            }

                            AppText
                            {
                                color: "#535353"
                                size: 13
                                text: qsTr("Battery: 37%")
                            }

                            AppText
                            {
                                color: "#535353"
                                size: 12
                                text: qsTr("Temperature: 24 c")
                            }

                            AppText
                            {
                                color: "#535353"
                                size: 12
                                text: qsTr("Last Synced: 3m ago")
                            }
                        }
                    }
                }
            }

            ListView
            {
                Layout.fillWidth: true
                Layout.fillHeight: true
            }
        }
    }
}
