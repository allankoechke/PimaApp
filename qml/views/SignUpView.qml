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

    RowLayout
    {
        anchors.top: parent.top
        anchors.topMargin: 20
        anchors.horizontalCenter: parent.horizontalCenter

        spacing: 10

        Rectangle
        {
            width: 70
            height: 70
            radius: height/2
            color: themeBlueLighter

            Layout.alignment: Qt.AlignVCenter

            AppIcon
            {
                size: 50
                color: themeFore
                icon: "\uf21e"

                anchors.centerIn: parent
            }
        }

        AppText
        {
            text: qsTr("PIMA")
            size: 30
            bold: true
            family: rusticoRegularFontLoader.name

            Layout.alignment: Qt.AlignVCenter
        }
    }

    ColumnLayout
    {
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 50
        width: root.width*0.7
        spacing: 20

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
            // isPassword: TextField.Password
        }

        CustomAppTextInput
        {
            placeholderText: qsTr("Confirm Password")
            // isPassword: TextField.Password
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
