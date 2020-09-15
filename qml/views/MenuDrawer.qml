import QtQuick 2.0
import QtQuick.Controls 2.4
import QtGraphicalEffects 1.0
import QtQuick.Layouts 1.3

import "../components"

Drawer {
    id: root

    width: mainApp.width*0.7
    height: mainApp.height
    edge: Qt.LeftEdge
    closePolicy: Drawer.NoAutoClose
    interactive: mainStackLayoutIndex > 2

    property int currentMenuIndex: 0

    onCurrentMenuIndexChanged: {
        if(currentMenuIndex === 0)
            mainStackLayoutIndex = 3

        else if(currentMenuIndex === 1)
            mainStackLayoutIndex = 4

        else if(currentMenuIndex === 2)
            mainStackLayoutIndex = 5

        else if(currentMenuIndex === 3)
            mainStackLayoutIndex = 6

        else {}
    }

    contentItem: Rectangle
    {
        color: themeFore
        anchors.fill: parent

        Rectangle
        {
            id: _top
            color: themeBlueLighter
            width: parent.width
            height: 100
            radius: 20

            anchors.top: parent.top
            anchors.topMargin: -20

            Item{
                anchors.fill: parent
                anchors.topMargin: 20

                RowLayout
                {
                    anchors.fill: parent
                    anchors.margins: 10
                    spacing: 20

                    Item
                    {
                        height: 60
                        width: 60
                        Layout.alignment: Qt.AlignVCenter

                        Image {
                            id: img
                            source: 'qrc:/assets/images/pexels-photo-1681010.jpeg'
                            width: 60
                            height: 60
                            anchors.centerIn: parent
                            fillMode: Image.PreserveAspectCrop
                            layer.enabled: true
                            layer.effect: OpacityMask {
                                maskSource: Rectangle {
                                    width: 60; height: 60; radius: 30; visible: false
                                }
                            }
                        }
                    }

                    Item{
                        id: _p
                        Layout.fillWidth: true
                        Layout.fillHeight: true

                        ColumnLayout
                        {
                            width: parent.width
                            anchors.verticalCenter: parent.verticalCenter

                            spacing: 5

                            AppText
                            {
                                size: 14
                                bold: true
                                color: themeLight
                                text: qsTr("Jameson Brown")
                                width: _p.width
                                elide: AppText.ElideRight
                                horizontalAlignment: AppText.AlignLeft
                            }

                            AppText
                            {
                                size: 12
                                color: themeLight
                                text: qsTr("jamesonb@email.com")
                                width: _p.width
                                elide: AppText.ElideRight
                                horizontalAlignment: AppText.AlignLeft
                            }
                        }
                    }
                }
            }
        }

        ColumnLayout
        {
            anchors.top: _top.bottom
            anchors.topMargin: 50
            width: root.width
            spacing: 10

            MenuItem
            {
                text: qsTr("Home")
                icon: "\uf80a"
                isCurrentIndex: currentMenuIndex === 0

                onClicked: {
                    menuDrawer.close();
                    currentMenuIndex = 0
                }
            }

            MenuItem
            {
                text: qsTr("Bracelet")
                icon: "\uf63e"
                isCurrentIndex: currentMenuIndex === 1

                onClicked: {
                    menuDrawer.close();
                    currentMenuIndex = 1
                }
            }

            MenuItem
            {
                text: qsTr("My Profile")
                icon: "\uf406"
                isCurrentIndex: currentMenuIndex === 2

                onClicked: {
                    menuDrawer.close();
                    currentMenuIndex = 2
                }
            }

            MenuItem
            {
                text: qsTr("Settings")
                icon: "\uf013"
                isCurrentIndex: currentMenuIndex === 3

                onClicked: {
                    menuDrawer.close();
                    currentMenuIndex = 3
                }
            }
        }

    }
}
