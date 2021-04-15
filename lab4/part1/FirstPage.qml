import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page

    allowedOrientations: Orientation.All

    property string textInDialog: ""


    SilicaFlickable {
        anchors.fill: parent

        PullDownMenu {
            MenuItem {
                text: qsTr("Show Page 2")
                onClicked: pageStack.push(Qt.resolvedUrl("SecondPage.qml"))
            }
        }

        contentHeight: column.height

        Column {
            id: column

            width: page.width
            spacing: Theme.paddingLarge
            PageHeader {
                title: qsTr("Страница")
            }
            Button{
                x: Theme.horizontalPageMargin
                text: "Добавить страницу"
                onClicked: pageStack.pushAttached(Qt.resolvedUrl("SecondPage.qml"))

            }
            Button{
                x: Theme.horizontalPageMargin
                text: "Убрать страницу"
                onClicked: pageStack.popAttached(Qt.resolvedUrl("SecondPage.qml"))

            }
        }
    }

}


