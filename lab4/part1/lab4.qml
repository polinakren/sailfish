import QtQuick 2.0
import Sailfish.Silica 1.0
import "pages"

ApplicationWindow
{
    initialPage: Component { FirstPage { } }
    cover: Qt.resolvedUrl("cover/CoverPage.qml")
    allowedOrientations: defaultAllowedOrientations
    property int count: 0

    Dialog{
        property alias firstTextFieldValue: firstTextField.text

        Column{
            width: parent.width
            spacing: Theme.paddingMedium
            DialogHeader{}
            TextField{
                id: firstTextField
                width: parent.width
            }
        }
    }
}

