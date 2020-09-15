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

    //Item{
        //Layout.fillWidth: true
        //Layout.fillHeight: true
    //}



}
