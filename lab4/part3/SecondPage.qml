import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    SilicaListView {
        PullDownMenu {
            MenuItem {
                text: "Menu Item 2"
                onClicked: textF.text = "Menu Item 2"
            }
            MenuItem {
                text: "Menu Item 1"
                onClicked: textF.text = "Menu Item 1"
            }
            MenuLabel {
                text: qsTr("Menu Label")
            }
        }

        PushUpMenu {
            MenuItem {
                text: "Menu Item 4"
                onClicked: textF.text = "Menu Item 4"
            }
            MenuItem {
                text: "Menu Item 3"
                onClicked: textF.text = "Menu Item 3"
            }
            MenuLabel {
                text: qsTr("Menu Label")
            }
        }

        anchors.fill: parent

        TextField {
            y:150
            id: textF
            text: ""
        }
    }
}
