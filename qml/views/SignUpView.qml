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
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        width: root.width*0.7
        spacing: 10

        Item
        {
            Layout.fillWidth: true
            Layout.preferredHeight: 60

            RowLayout
            {
                anchors.centerIn: parent

                spacing: 10

                Rectangle
                {
                    width: 55
                    height: 55
                    radius: height/2
                    color: themeBlueLighter

                    Layout.alignment: Qt.AlignVCenter

                    AppIcon
                    {
                        size: 38
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

                    Layout.alignment: Qt.AlignVCenter
                }
            }
        }

        TextField
        {
            height: 30
            Layout.fillWidth: true
            Layout.topMargin: 10

            font.pixelSize: 15
            color: themeFore
            placeholderText: qsTr("Firstname")

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

        CustomAppTextInput
        {
            placeholderText: qsTr("Lastname")
        }

        CustomAppTextInput
        {
            placeholderText: qsTr("Email")
        }

        CustomAppTextInput
        {
            placeholderText: qsTr("Mobile number")
        }

        CustomAppTextInput
        {
            placeholderText: qsTr("Password")
            echoMode: TextField.Password
        }

        CustomAppTextInput
        {
            placeholderText: qsTr("Confirm Password")
            echoMode: TextField.Password
        }

        Rectangle
        {
            color: themeFore
            height: 40
            radius: 10

            Layout.fillWidth: true
            Layout.topMargin: 30

            Layout.alignment: Qt.AlignHCenter

            AppText
            {
                text: qsTr("Sign Up")
                size: 15
                color: themeBlue

                anchors.centerIn: parent
            }

            MouseArea
            {
                anchors.fill: parent
                onClicked: mainStackLayoutIndex = 3
            }
        }

        AppText
        {
            text: qsTr("Already have an account? Sign in")
            size: 13
            bold: true
            color: themeLight

            Layout.alignment: Qt.AlignHCenter

            MouseArea
            {
                anchors.fill: parent
                onClicked: mainStackLayoutIndex = 1;
            }
        }
    }

}
