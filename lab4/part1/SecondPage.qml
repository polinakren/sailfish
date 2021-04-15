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
            x: Theme.horizontalPageMargin
            text: "Назад"
            onClicked: pageStack.popAttached(Qt.resolvedUrl("SecondPage.qml"))
        }

        Button{
            id: button1
            x: Theme.horizontalPageMargin
            text: "Написать"
            onClicked: {
                var dialog = pageStack.push(Qt.resolvedUrl("lab4.qml"));
                dialog.accepted.connect(function(){
                   console.log(dialog.text);
                   textFieldText.text = dialog.firstTextFieldValue
                   });
            }
        }
        TextField{
            id: textFieldText
            text: ""
        }

        Button{
            id: button2
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
        TextField{
            id: textFieldData
            text: ""
        }

        Button{
            id: button3
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
        TextField{
            id: textFieldTime
            text: ""
        }
    }
}
