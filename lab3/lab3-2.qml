import QtQuick 2.0
import Sailfish.Silica 1.0
import "pages"

ApplicationWindow
{
    initialPage: Component { FirstPage { } }
    cover: Qt.resolvedUrl("cover/CoverPage.qml")
    allowedOrientations: defaultAllowedOrientations
    property int count: 0;

    TimePickerDialog{
        id: timePicker
        hour: 13
        minute: 30
        hourMode: DateTime.TwelveHours
    }

    Button {
        anchors.horizontalCenter: parent.horizontalCenter
        id: button
        text: "Выберите время"
        onClicked: {
            pageStack.push(timePicker)
            timePicker.accepted.connect(function() {
                console.log(timePicker.timeText)
            })
        }
    }
    Column{
        anchors.horizontalCenter: parent.horizontalCenter
        y:700
        Switch{
            id:mute
        }
        Label{
            text: mute.checked?"Включен":"Выключен"
        }
    }

    Slider{
        enabled: mute.checked?true:false

        width: parent.width
        y: 900
        label: "Текущее значение: " + count

        maximumValue: 40
        minimumValue: -40
        value: 10
        stepSize: 1
        onValueChanged: {
            count = value
        }
    }

}
