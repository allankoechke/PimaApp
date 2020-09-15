import QtQuick 2.0
import QtQuick.Layouts 1.3

Item {
    id: root
    height: 36
    Layout.fillWidth: true

    property bool isCurrentIndex: false
    property alias text: txt.text
    property alias icon: ico.icon

    signal clicked()

    Rectangle
    {
        width: root.width+36
        height: 36
        radius: 36/2
        color: isCurrentIndex? themeBlueLighter:themeFore

        anchors.right: parent.right
        anchors.top: parent.top
        anchors.rightMargin: 10

        RowLayout
        {
            spacing: 5
            anchors.fill: parent
            anchors.leftMargin: 60

            Item{
                Layout.fillHeight: true
                width: 30

                AppIcon
                {
                    id: ico
                    size: 18
                    color: isCurrentIndex? themeLight:"#1e1e1e"

                    anchors.centerIn: parent
                }
            }

            AppText
            {
                id: txt
                bold: isCurrentIndex
                color: isCurrentIndex? themeLight:"#2e2e2e"

                Layout.alignment: Qt.AlignVCenter|Qt.AlignLeft
                Layout.fillWidth: true
                horizontalAlignment: AppText.AlignLeft
            }
        }
    }

    MouseArea
    {
        anchors.fill: parent
        onClicked: root.clicked();
    }
}
