import QtQuick 2.0
import QtQuick.Layouts 1.3

import "../components"

Rectangle {
    id: root

    Layout.fillWidth: true
    Layout.fillHeight: true

    color: themeBlue
    clip: true

    Rectangle
    {
        color: themeBlueLighter
        width: 100; height: width; radius: height/2

        anchors.top: parent.top
        anchors.right: parent.right
        anchors.topMargin: -25
        anchors.rightMargin: -30
    }

    Rectangle
    {
        color: themeBlueLighter
        width: 130; height: width; radius: height/2

        anchors.bottom: parent.bottom
        anchors.left: parent.left
        anchors.bottomMargin: 200
        anchors.leftMargin: -35
    }

    ColumnLayout
    {
        anchors.top: parent.top
        anchors.topMargin: 50
        anchors.horizontalCenter: parent.horizontalCenter

        spacing: 10

        Rectangle
        {
            width: 100
            height: 100
            radius: height/2
            color: themeBlueLighter

            Layout.alignment: Qt.AlignHCenter

            AppIcon
            {
                size: 80
                color: themeFore
                icon: "\uf21e"

                anchors.centerIn: parent
            }
        }

        AppText
        {
            text: qsTr("SafeWrist")
            size: 30
            bold: true
            // family: rusticoRegularFontLoader.name

            Layout.alignment: Qt.AlignHCenter
        }
    }

    ColumnLayout
    {
        anchors.centerIn: parent
        spacing: 20

        AppText
        {
            text: qsTr("Let's Start")
            size: 25
            color: "white"
            bold: true

            Layout.alignment: Qt.AlignHCenter
        }

        AppText
        {
            text: qsTr("millions of others joined")
            size: 20

            Layout.alignment: Qt.AlignHCenter
        }
    }

    Rectangle
    {
        color: themeBlue
        height: 50
        width: 200
        border.width: 1
        border.color: "silver"
        radius: height/2

        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottom: parent.bottom
        anchors.bottomMargin: (root.height-100)/3

        AppText
        {
            text: qsTr("START")
            size: 30

            anchors.centerIn: parent
        }

        MouseArea
        {
            anchors.fill: parent
            onClicked: mainStackLayoutIndex=1
        }
    }
}
