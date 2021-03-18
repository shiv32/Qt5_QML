import QtQuick 2.13
import QtQuick.Window 2.13
import QtQuick.Layouts 1.12

Window {
    id: mainWindow
    width: 640
    height: 480
    visible: true
    title: qsTr("qml signal example")

    //signals
    signal mySignal1(string key)
    signal mySignal2


    ColumnLayout {
        anchors.fill: parent
        spacing: 5

        RowLayout {
            spacing: 5
            Layout.preferredHeight: 30
            Layout.fillHeight: true


            Rectangle {
                Layout.fillHeight: true
                Layout.fillWidth: true
                color: "transparent"

                Rectangle
                {
                    id: myRect
                    width: 100
                    height: 50
                    anchors.centerIn: parent
                    border.color: "black"
                    border.width: 5
                    radius: 10
                    Text {
                        id: myRectText
                        anchors.centerIn:parent
                    }
                }
            }
        }

        RowLayout {
            spacing: 5
            Layout.preferredHeight: 40
            Layout.fillHeight: true
            Rectangle {
                Layout.fillHeight: true
                Layout.fillWidth: true
                color: "transparent"

                //button 1
                Rectangle {
                    id: button1
                    width: 100
                    height: 50
                    anchors.left: parent.left
                    anchors.leftMargin: 200

                    color: "red"
                    border.color: "black"
                    border.width: 5
                    radius: 10

                    Text {
                        text: qsTr("Button 1")
                        anchors.centerIn: parent
                        font.bold: true
                    }

                    MouseArea{
                        anchors.fill: parent
                        onClicked: {
                            console.log("button 1")
                            mainWindow.mySignal1("shiv") //signal call
                        }
                    }
                }

                //button 2
                Rectangle {
                    id: button2
                    width: 100
                    height: 50

                    anchors.left: button1.right
                    anchors.leftMargin: 20
                    color: "red"
                    border.color: "black"
                    border.width: 5
                    radius: 10
                    Text {
                        text: qsTr("Button 2")
                        anchors.centerIn: parent
                        font.bold: true
                    }
                    MouseArea{
                        anchors.fill: parent
                        onClicked: {
                            console.log("button 2")
                            mainWindow.mySignal2() //signal call
                        }
                    }
                }
            }
        }
    }
    onMySignal1: { //signal action
        console.log("signal 1 received ==> "+key)
        myRect.color = "yellow"
        myRectText.text = key
    }

    onMySignal2: { //signal action
        console.log("signal 2 received==> ")
        myRect.color = "lightgreen"
        myRectText.text = "button 2 "
    }
}
