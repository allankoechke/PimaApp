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

    Rectangle
    {
        color: themeBlueLighter
        width: 150; height: width; radius: height/2

        anchors.top: parent.top
        anchors.right: parent.right
        anchors.topMargin: 5
        anchors.rightMargin: -40
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
            //family: rusticoRegularFontLoader.name

            Layout.alignment: Qt.AlignHCenter
        }
    }

    ColumnLayout
    {
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 50
        spacing: 10


        TextField
        {
            height: 30
            Layout.preferredWidth: root.width*0.7

            font.pixelSize: 15
            color: themeFore
            placeholderText: qsTr("Email")

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

        TextField
        {
            height: 30
            Layout.preferredWidth: root.width*0.7
            Layout.topMargin: 20

            font.pixelSize: 15
            color: themeFore
            placeholderText: qsTr("Password")
            echoMode: TextField.Password

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

        AppText
        {
            text: qsTr("Forgot Password?")
            size: 13
            bold: true
            color: themeLight

            Layout.alignment: Qt.AlignRight
        }

        Rectangle
        {
            color: themeFore
            height: 40
            radius: 10

            Layout.preferredWidth: root.width*0.7
            Layout.topMargin: 30

            Layout.alignment: Qt.AlignHCenter

            AppText
            {
                text: qsTr("LOGIN")
                size: 15
                color: themeBlue

                anchors.centerIn: parent
            }

            MouseArea
            {
                anchors.fill: parent
                onClicked: mainStackLayoutIndex = 3;
            }
        }

        AppText
        {
            text: qsTr("Dont have an account? Create one")
            size: 13
            bold: true
            color: themeLight

            Layout.alignment: Qt.AlignHCenter

            MouseArea
            {
                anchors.fill: parent
                onClicked: mainStackLayoutIndex = 2;
            }
        }
    }

}
