import QtQuick 2.0
import Sailfish.Silica 1.0
import "pages"

ApplicationWindow
{
    initialPage: Component { FirstPage { } }
    cover: Qt.resolvedUrl("cover/CoverPage.qml")
    allowedOrientations: defaultAllowedOrientations

    property int count: 0;

    Label{
        Text{
            id: df
            text: count
            x: 310
            y: 390
            font.pointSize: 96
            color: "white"
        }
    }
    Button{
        id: button
        text: "Click on me"
        width: parent.width
        anchors.centerIn: parent;
        onClicked: {
            count++
        }
    }

    Button{
        id: button1
        text: "restart"
        width: parent.width/2
        onClicked: {
            count = 0
        }
    }

    Button{
        id: button2
        text: "10 div count"
        width: parent.width/2
        onClicked: {
            if(count === 0){
                count = -1
            } else{
                count = 10/count
            }
        }
        x:390
    }
}
