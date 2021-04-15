import QtQuick 2.0
import Sailfish.Silica 1.0
import "pages"

ApplicationWindow
{
    initialPage: Component { FirstPage { } }
    cover: Qt.resolvedUrl("cover/CoverPage.qml")
    allowedOrientations: defaultAllowedOrientations
    property int count: 0;
    property int temp: 0;
    property string textFor: "Отпущена"
    property string dayfor: ""
    property date currentDate: new Date()



    Label{
        width: parent.width
        text: "Enter the number"
    }
    TextField{
        y:50
        width: parent.width
        inputMethodHints: {
            if(text == '.' && temp == 1){
                text = 0;
            }
            Qt.ImhFormattedNumbersOnly}
        label: "your number"
        placeholderText: label
    }

    Button{
        id:button1
        anchors.horizontalCenter: parent.horizontalCenter
        y:150
        text: "Я - кнопка"
        color: "white"
        preferredWidth: 100
        onClicked: {
                down = true
                highlightBackgroundColor: "red"
                highlightColor: "white"
        }
    }

    Button{
        id:button2
        anchors.horizontalCenter: parent.horizontalCenter
        y:280
        text: "Кнопка"
        color: "white"
        preferredWidth: 100
        highlightBackgroundColor: "red"
        highlightColor: "white"

        Text{
            anchors.horizontalCenter: parent.horizontalCenter
            y:100
            color: "white"
            id: textArea
            text:{
                if(button2.down == true){
                    textFor: "Нажата"
                }
                if(button2.down == false){
                    textFor: "Отпущена"
                }
            }
        }
    }

    ValueButton{
        id:button3
        anchors.horizontalCenter: parent.horizontalCenter
        y:450
        label: "Счётчик"
        labelColor: "pink"
        valueColor: "white"
        value: count
        description: "Считает количество нажатий"
        onClicked:
             value = count++
    }

    DatePicker{
        id: datePicker
        y:600
        daysVisible: true
        weeksVisible: true
        monthYearVisible: true
        delegate: MouseArea {
                width: datePicker.cellWidth
                height: datePicker.cellHeight

                onClicked: {
                    datePicker.date = new Date(year, month-1, day)   // установить выбранную дату
                    console.log(datePicker.date);
                }
                Label {
                    anchors.centerIn: parent
                    text: day
                    color: "orange"
                    font.pixelSize: month === primaryMonth ? Theme.fontSizeMedium : Theme.fontSizeExtraSmall
                }
         }

    }
}
