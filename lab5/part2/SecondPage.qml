import QtQuick 2.0
import Sailfish.Silica 1.0
import QtQuick.XmlListModel 2.0

Page {
    XmlListModel {
        id: xmlListModel;
        source: "http://www.cbr.ru/scripts"
        query: "/XML_daily.asp"
        XmlRole { name: "Name"; query: "Name/string()" }
        XmlRole { name: "Value"; query: "Value/int()" }
    }
    SilicaListView {
        anchors.fill: parent
        header: PageHeader { title: "Валюты" }
        model: xmlListModel
        delegate: Column {
            x: Theme.horizontalPageMargin
            Label { text: title}
            Label { text: author }
        }
    }
}
