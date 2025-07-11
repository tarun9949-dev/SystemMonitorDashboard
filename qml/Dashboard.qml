import QtQuick 2.15
import QtQuick.Controls 2.15

Item {
    Column {
        anchors.centerIn: parent
        spacing: 16

        Graph {
            title: "CPU Usage"
            value: SystemStats.cpuUsage
        }

        Graph {
            title: "Memory Usage"
            value: SystemStats.memoryUsage
        }
    }
}