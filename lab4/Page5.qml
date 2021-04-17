import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    SlideshowView {
        id: view
        anchors.centerIn: parent
        height: width
        itemHeight: width; itemWidth: width;
        model: 7
        delegate: Rectangle {
            width: view.itemWidth;
            height: view.itemHeight;
            Text {
                anchors.centerIn: parent

                text:{
                    if(index == 0){
                        text = "Понедельник
                        Посидеть на парах и покушать"
                    }
                    if(index == 1){
                        text = "Вторник
                        Посидеть на парах и покушать"
                    }
                    if(index == 2){
                        text = "Среда
                        Отдыхать"
                    }
                    if(index == 3){
                        text = "Четверг
                        Посидеть на парах и покушать"
                    }
                    if(index == 4){
                        text = "Пятница
                        Посидеть на парах и покушать"
                    }
                    if(index == 5){
                        text = "Суббота
                        Отдыхать"
                    }
                    if(index == 6){
                        text = "Воскресенье
                        Отдыхать"
                    }
                }
            }
        }
    }

    Button{
        anchors.horizontalCenter: parent.horizontalCenter
        text: "Добавить страницу"
        onClicked: pageStack.pushAttached(Qt.resolvedUrl("Page6.qml"))
    }
}
