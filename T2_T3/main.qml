import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Layouts 1.12
import "."

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("ColumnLayout")
    property int myMargin: 10
    property string headerText: "H1"
    property string contentText: "C"
    minimumWidth: cl.implicitWidth + 2 * myMargin

    ColumnLayout {
        id: cl
        spacing: myMargin
        anchors.fill: parent

        Comp {
            Layout.fillWidth: true
            text: headerText
        }
        Comp {
            Layout.fillHeight: true
            Layout.fillWidth: true
            text: contentText
            Layout.alignment: Qt.AlignHCenter
            Layout.leftMargin: myMargin
            Layout.rightMargin: myMargin
        }
        RowLayout {
             height: 100
             width: parent.width


             Comp {
                 id: button1
                 Layout.fillWidth: true
                 text: "1"
                 MouseArea {
                     anchors.fill: parent
                     onClicked: {
                         headerText = "H2"
                         contentText = "C2"
                         button1.opacity = 1
                         button2.opacity = 0.3
                         button3.opacity = 0.3
                     }
                 }
             }


             Comp {
                 id: button2
                 Layout.fillWidth: true
                 text: "2"
                 MouseArea {
                     anchors.fill: parent
                     onClicked: {
                         headerText = "H3"
                         contentText = "C3"
                         button1.opacity = 0.3
                         button2.opacity = 1
                         button3.opacity = 0.3
                     }
                 }
             }


             Comp {
                 Layout.fillWidth: true
                 text: "3"
                 id: button3
                 MouseArea {
                     anchors.fill: parent
                     onClicked: {
                         headerText = "H4"
                         contentText = "C4"
                         button1.opacity = 0.3
                         button2.opacity = 0.3
                         button3.opacity = 1
                     }
                 }
             }
         }
     }
 }
