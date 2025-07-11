import QtQuick 2.15
import QtQuick.Controls 2.15

Rectangle {
    property alias title: titleText.text
    property alias value: valueText.text

    width: parent.width
    height: 60
    color: "#f0f0f0"
    radius: 8
    border.color: "#cccccc"
    border.width: 1

    Row {
        anchors.centerIn: parent
        spacing: 12

        Text {
            id: titleText
            font.pointSize: 14
            font.bold: true
        }

        Text {
            id: valueText
            font.pointSize: 14
        }
    }
}