import MuseScore 3.0
import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15
import FileIO 3.0

MuseScore {
    version: "1.0"
    description: qsTr("Plugin Development Console")
    pluginType: "dialog"
    menuPath: "Plugins.UI"
    title: "Plugin Console"
    thumbnailName: "icon.png"
    width: 800
    height: 600
    
    //GUI changes can be made here, but the console can't test them, you'll have to develop them normally
    Dialog {
        id: mainDialog
        width: 800
        height: 600
        visible: true
        
        background: Rectangle {
            color: "#323c4d"
            radius: 0
        }
        ColumnLayout {
            anchors.fill: parent
            anchors.margins: 10
            spacing: 10

            Label {
                text: "Plugin Development Console"
                font.family: "Corbel"
                color: "white"
                font.pixelSize: 40 
                Layout.alignment: Qt.AlignHCenter
            }

            Button {
                text: "Run Code"
                onClicked: {
                    //write all code within the try block
                    //use errorBox.text += to print to the console
                    //any error will be caught and displayed in the console
                    try {
                        throw new Error("Test error");
                    } catch(e) {
                        errorBox.text += "Error: " + e.message + "\n";
                    }
                }
            }
            //errors will print to this text box
            ScrollView {
                Layout.fillWidth: true
                Layout.fillHeight: true

                TextArea {
                    id: errorBox
                    readOnly: true
                    wrapMode: Text.Wrap
                    font.pixelSize: 14
                    color: "white"
                    background: Rectangle { color: "black"; radius: 5 }

                    onTextChanged: {
                        cursorPosition = length
                    }
                }
            }
            
        }
    }
}
