import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    SilicaListView {
        PullDownMenu {
            MenuItem {
                text: "Первый элемент меню"
                onClicked: textF.text = text
            }
            MenuItem {
                text: "Второй элемент меню"
                onClicked: textF.text = text
            }
            MenuLabel {
                text: qsTr("Menu Label")
            }
        }

        PushUpMenu {
            MenuItem {
                text: "Третий элемент меню"
                onClicked: textF.text = text
            }
            MenuItem {
                text: "Четвертый элемент меню"
                onClicked: textF.text = text
            }
            MenuLabel {
                text: qsTr("Меню")
            }
        }

        anchors.fill: parent

        Label {
            anchors.horizontalCenter: parent.horizontalCenter
            y:150
            id: textF
            text: ""
        }
    }
    Button{
        y:900
        anchors.horizontalCenter: parent.horizontalCenter
        text: "Добавить страницу"
        onClicked: pageStack.pushAttached(Qt.resolvedUrl("Page7.qml"))
    }
}
