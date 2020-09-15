import QtQuick 2.0
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.4

import "../components"

Rectangle {
    id: root

    Layout.fillWidth: true
    Layout.fillHeight: true

    color: themeFore
    clip: true

    Rectangle
    {
        color: themeBlue
        width: root.width
        height: 300
        radius: 30

        anchors.top: parent.top
        anchors.left: parent.left
        anchors.topMargin: -30

        ColumnLayout
        {
            anchors.fill: parent
            anchors.leftMargin: 20
            anchors.rightMargin: 20
            anchors.bottomMargin: 20
            anchors.topMargin: 50

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
            }
        }
    }



}
