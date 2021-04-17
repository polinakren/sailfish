import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    SilicaWebView {
        id: webView
        anchors {
            top: parent.top; bottom: urlField.top;
            left: parent.left; right: parent.right;
        }
        url: "https://scratch.mit.edu/"
    }
    TextField {
        id: urlField
        anchors {
            left: parent.left; right: parent.right;
            bottom: parent.bottom
        }
    text: "https://scratch.mit.edu/"
    label: webView.title
    EnterKey.onClicked: webView.url = text
    }

    Button{
        anchors.horizontalCenter: parent.horizontalCenter
        text: "Добавить страницу"
        onClicked: pageStack.pushAttached(Qt.resolvedUrl("Page5.qml"))
    }
}
