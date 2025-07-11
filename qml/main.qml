import QtQuick 2.15
import QtQuick.Controls 2.15

ApplicationWindow {
    visible: true
    width: 600
    height: 400
    title: "System Monitor Dashboard"

    Column {
        anchors.centerIn: parent
        spacing: 20

        Text {
            text: "CPU Usage: " + SystemStats.cpuUsage
            font.pointSize: 20
        }

        Text {
            text: "Memory Usage: " + SystemStats.memoryUsage
            font.pointSize: 20
        }
    }

    Timer {
        interval: 2000; running: true; repeat: true
        onTriggered: SystemStats.updateStats()
    }
}