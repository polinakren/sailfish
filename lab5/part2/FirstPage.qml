import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    property var dataModel: [
        { color: "white", text: "Белый" },
        { color: "black", text: "Черный" },
        { color: "blue", text: "Синий" }
    ]
    SilicaListView {
        anchors.fill: parent
        header: PageHeader { title: "Список" }
        model: dataModel
        spacing: 10
        delegate: Rectangle {
            width: parent.width
            height: 100
            color: modelData.color
            Text {
                anchors.centerIn: parent
                text: modelData.text
                font.pointSize: 30
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
        y:800
        x: Theme.horizontalPageMargin
        text: "Добавить страницу"
        anchors.horizontalCenter: parent.horizontalCenter
        onClicked: pageStack.pushAttached(Qt.resolvedUrl("SecondPage.qml"))
    }
}
