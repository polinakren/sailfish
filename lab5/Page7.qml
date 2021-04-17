import QtQuick 2.0
import Sailfish.Silica 1.0
import QtQuick.LocalStorage 2.0
    import Nemo.Configuration 1.0

Page {
    id: page
    SilicaFlickable {
        anchors.fill: parent
        PullDownMenu {
            MenuItem {
                text: qsTr("Show Page 7 ")
                onClicked: pageStack.push(Qt.resolvedUrl("Page7.qml"))
            }
        }
        ConfigurationValue {
            id: setting1
            key: "/apps/app_name/setting_name"
            defaultValue: ""
        }
        ConfigurationValue {
            id: setting2
            key: "/apps/app_name/setting_name"
            defaultValue: false
        }
        Column {

            width: parent.width
            height: parent.height
            spacing: 30

            TextField {
                id: textField
            }
            Switch {
                id: switch1
            }
            Button {
                id: addButton
                anchors.horizontalCenter: parent.horizontalCenter
                text: "Сохранить"
                onClicked:
                {
                    setting1.value = textField.text
                    setting2.value = switch1.data
                }
            }
        }
    }
    Button{
        y: 1000
        x: Theme.horizontalPageMargin
        text: "Добавить страницу"
        anchors.horizontalCenter: parent.horizontalCenter
        onClicked: pageStack.pushAttached(Qt.resolvedUrl("Page6.qml"))
    }
}
