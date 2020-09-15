import QtQuick 2.12
import QtQuick.Window 2.0
import QtQuick.Layouts 1.3

import "./views"

Window {
    id: mainApp
    visible: true
    width: 360 // 320
    height: 640 // 480
    title: qsTr("Fitness App")

    property alias fontAwesomeFontLoader: fontAwesomeFontLoader
    property alias rusticoRegularFontLoader: rusticoRegularFontLoader
    property alias menuDrawer: menuDrawer
    property alias mainStackLayoutIndex: mainStackLayout.currentIndex

    // Theme
    property string themeBlue: "#5762e7"
    property string themeBlueLighter: "#5f6fe8"
    property string themeLight: "#fbfbfb"
    property string themeFore: "#ffffff"

    StackLayout
    {
        id: mainStackLayout
        anchors.fill: parent
        currentIndex: 0

        SplashView {}
        LoginView {}
        SignUpView {}
        HomeView {}
        BraceletView {}
        ProfileView {}
        SettingsView {}
    }

    MenuDrawer
    {
        id: menuDrawer
    }

    FontLoader
    {
        id: fontAwesomeFontLoader
        source: "qrc:/assets/fonts/fontawesome.otf"
    }

    FontLoader
    {
        id: rusticoRegularFontLoader
        source: "qrc:/assets/fonts/Rustico-Regular.otf"
    }
}
