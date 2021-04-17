import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page

    allowedOrientations: Orientation.All

    SilicaFlickable {
        anchors.fill: parent
        contentHeight: column.height

        Column {
            id: column
            width: page.width
            spacing: Theme.paddingLarge
            PageHeader {
                title: qsTr("Страница")
            }
            Button{
                anchors.horizontalCenter: parent.horizontalCenter
                text: "Добавить страницу"
                onClicked: pageStack.pushAttached(Qt.resolvedUrl("Page2.qml"))
            }
            Button{
                anchors.horizontalCenter: parent.horizontalCenter
                text: "Убрать страницу"
                onClicked: pageStack.popAttached()
            }
        }
    }
}


