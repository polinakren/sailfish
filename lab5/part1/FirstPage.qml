import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    ListModel {
        id: dataModel
        ListElement { color: "white"; text: "Белый" }
        ListElement { color: "black"; text: "Черный" }
        ListElement { color: "blue"; text: "Синий" }
    }
    SilicaListView {
        anchors.fill: parent
        header: PageHeader { title: "Список" }
        model: dataModel
        delegate: Rectangle {
            width: parent.width
            height: 100
            color: model.color
            Text {
                anchors.centerIn: parent
                text: model.text
                font.bold: true
                font.pointSize:  35
                color:{
                    if(index == 0)
                        color = "black"
                    if(index == 1)
                        color = "white"
                    if(index == 2)
                        color = "red"
                }
            }
        }
    }

    Button{
        anchors.horizontalCenter: parent.horizontalCenter
        y:800
        x: Theme.horizontalPageMargin
        text: "Добавить страницу"
        onClicked: pageStack.pushAttached(Qt.resolvedUrl("SecondPage.qml"))

    }
}
