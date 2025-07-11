import QtQuick 2.15
import QtQuick.Controls 2.15

Item {
    signal themeChanged(string newTheme)

    ComboBox {
        id: themeBox
        model: ["Light", "Dark"]
        onCurrentIndexChanged: {
            themeChanged(themeBox.currentText)
        }
    }
}