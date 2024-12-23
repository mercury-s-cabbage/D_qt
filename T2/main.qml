import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Layouts 1.12
import "Comp.qml"

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("ColumnLayout")
    minimumWidth: cl.implicitWidth + 2 * myMargin

    ColumnLayout {
        id: cl
        anchors.fill: parent

        Comp {
            Layout.fillWidth: true
            text: "Header"
        }
        Comp {
            Layout.fillHeight: true
            Layout.fillWidth: true
            text: "Content"
            Layout.alignment: Qt.AlignHCenter
        }
        RowLayout
        {
            height: 100
            width: parent.width
            Comp {
                Layout.fillWidth: true
                text: "1"
            }
            Comp {
                Layout.fillWidth: true
                text: "2"
            }
            Comp {
                Layout.fillWidth: true
                text: "3"
            }
        }
}}
