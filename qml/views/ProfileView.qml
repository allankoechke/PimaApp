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

    property bool isEditing: false


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
                    icon: isEditing? "\uf057":"\uf4ff"

                    anchors.centerIn: parent
                }

                MouseArea
                {
                    anchors.fill: parent
                    onClicked: {
                        isEditing = !isEditing
                    }
                }
            } // Tick Button

        }
    }

    Item{
        anchors.top: topbar.bottom
        anchors.bottom: parent.bottom
        anchors.horizontalCenter: parent.horizontalCenter
        width: root.width*0.7

        ColumnLayout
        {
            width: parent.width
            anchors.centerIn: parent
            spacing: 15

            Item{
                Layout.fillWidth: true
                Layout.preferredHeight: 35

                AppIcon
                {
                    color: themeBlueLighter
                    size: 22
                    icon: "\uf2bd"

                    anchors.left: parent.left
                    anchors.verticalCenter: parent.verticalCenter
                }
            }

            ProfileWidget
            {
                label:  qsTr("Firstname")
                readOnly: !isEditing
            }

            ProfileWidget
            {
                label: qsTr("Lastname")
                readOnly: !isEditing
            }

            ProfileWidget
            {
                label: qsTr("Email")
                readOnly: !isEditing
            }

            ProfileWidget
            {
                label: qsTr("Mobile number")
                readOnly: !isEditing
            }

            Rectangle
            {
                visible: isEditing
                Layout.fillWidth: true
                Layout.preferredHeight: 35

                radius: 5
                color: themeBlue

                AppText
                {
                    anchors.centerIn: parent
                    anchors.topMargin: 20
                    color: themeLight
                    size: 15
                    text: qsTr("Update Details")
                }
            }

            Item{
                Layout.fillWidth: true
                Layout.fillHeight: true
            }
        }
    }
}
