import QtQuick 2.0
import QtQuick.Window 2.0
import com.example.ExampleLib 1.0

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Example App")

    ExampleRect {
        anchors.centerIn: parent
    }
}

