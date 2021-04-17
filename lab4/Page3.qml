import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    ListModel {
        id: animalsModel
        ListElement {
            name: "Сделать дело";
            size: "17.02.2017";
        }
        ListElement {
            name: "Гулять смело";
            size: "17.02.2017";
        }
        ListElement {
            name: "Прочитать книгу";
            size: "16.02.2017";
        }
        ListElement {
            name: "Сходить на учебу";
            size: "15.02.2017";
        }
}
    SilicaListView {
        anchors.fill: parent
        model: animalsModel
        header: PageHeader { title: "Задачи" }
        section {
            property: 'size'
            delegate: SectionHeader { text: section }
        }
        delegate: Text {
            text: name
            color: "white"
        }
    }

    Button{
        y:800
        anchors.horizontalCenter: parent.horizontalCenter
        text: "Добавить страницу"
        onClicked: pageStack.pushAttached(Qt.resolvedUrl("Page4.qml"))

    }
}

