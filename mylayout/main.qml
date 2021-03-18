//ref: https://stackoverflow.com/questions/30604751/how-to-design-a-multi-level-fluid-layout-in-qml

import QtQuick 2.13
import QtQuick.Window 2.13
import QtQuick.Layouts 1.12

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Layout QML Example")

    ColumnLayout {
            anchors.fill: parent
            spacing: 5
            RowLayout {
                spacing: 5
                Layout.preferredHeight: 40
                Layout.fillHeight: true
                Rectangle {
                    Layout.fillHeight: true
                    Layout.fillWidth: true
                    color: "red"
                }
            }
            RowLayout {
                spacing: 5
                Layout.preferredHeight: 20
                Layout.fillHeight: true
                Rectangle {
                    Layout.fillHeight: true
                    Layout.preferredWidth: 20
                    Layout.fillWidth: true
                    color: "darkGreen"
                }
                Rectangle {
                    Layout.fillHeight: true
                    Layout.preferredWidth: 80
                    Layout.fillWidth: true
                    color: "lightGreen"
                }
            }
            RowLayout {
                spacing: 5
                Layout.preferredHeight: 40
                Layout.fillHeight: true
                Text {
                    Layout.fillHeight: true
                    Layout.preferredWidth: 40
                    Layout.fillWidth: true
                    color: "darkBlue"
                    text: "hello world!"
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                }
                Rectangle {
                    Layout.fillHeight: true
                    Layout.preferredWidth: 20
                    Layout.fillWidth: true
                    color: "blue"
                }
                Rectangle {
                    Layout.fillHeight: true
                    Layout.preferredWidth: 40
                    Layout.fillWidth: true
                    color: "lightBlue"
                }
            }
        }
}
