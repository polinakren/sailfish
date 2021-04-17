import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page

    allowedOrientations: Orientation.All

    Column{
        anchors.fill: parent
        anchors.margins: Theme.paddingMedium
        spacing: Theme.paddingMedium
        PageHeader{
            title: "Вторая страница"
        }
        Button{
            anchors.horizontalCenter: parent.horizontalCenter
            x: Theme.horizontalPageMargin
            text: "Назад"
            onClicked: pageStack.navigateBack()
        }

        Button{
            anchors.horizontalCenter: parent.horizontalCenter
            id: button1
            x: Theme.horizontalPageMargin
            text: "Написать"
            onClicked: pageStack.push(dialog)
            }

        Label{
            anchors.horizontalCenter: parent.horizontalCenter
            id: label
        }

        Button{
            id: button2
            anchors.horizontalCenter: parent.horizontalCenter
            x: Theme.horizontalPageMargin
            text: "Выбрать дату"
            onClicked: {
               var dialog = pageStack.push("Sailfish.Silica.DatePickerDialog",
                  {date: new Date(2021,2, 2)});
               dialog.accepted.connect(function(){
                  console.log(dialog.date);
                  textFieldData.text = dialog.dateText
               });
            }
        }
        Label{
            id: textFieldData
            anchors.horizontalCenter: parent.horizontalCenter
        }

        Button{
            id: button3
            anchors.horizontalCenter: parent.horizontalCenter
            x: Theme.horizontalPageMargin
            text: "Выбрать время"
            onClicked: {
               var dialog = pageStack.push("Sailfish.Silica.TimePickerDialog", {hourMode: DateTime.TwelveHours});
               dialog.accepted.connect(function(){
                  console.log(dialog.date);
                  textFieldTime.text = dialog.timeText
               });
            }
        }
        Label{
            id: textFieldTime
            anchors.horizontalCenter: parent.horizontalCenter
        }
        Button{
            anchors.horizontalCenter: parent.horizontalCenter
            text: "Добавить страницу"
            onClicked: pageStack.pushAttached(Qt.resolvedUrl("Page3.qml"))
        }
    }
    Dialog {
           id: dialog
           Column {
               width:parent.width
               spacing: 30
               DialogHeader {
                   title: "Введите текст"
               }
               TextField {
                   placeholderText: "Введите текст"
                   id: textField
                   width: parent.width
                   anchors.horizontalCenter: parent.horizontalCenter

               }
           }
           onAccepted: label.text = textField.text
    }
}
