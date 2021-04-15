import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    ListModel { id: dataModel }

        SilicaListView {
            width: parent.width; height: parent.height;
            header: PageHeader { title: "Список" }
            model: dataModel
            spacing: 20

            MouseArea {
                anchors.fill: parent
                onClicked: dataModel.remove(dataModel.index)
            }
            delegate: Rectangle {
                width: parent.width; height: 80; color: "white";

                Text {
                    anchors.centerIn: parent
                    text: model.text + model.index
                    font.pointSize: 30
                }
            }
        }
        Button {
            anchors.horizontalCenter: parent.horizontalCenter
            id: addButton
            text: "Добавить"
            onClicked: dataModel.append({ text: "Элемент " })
        }
}
