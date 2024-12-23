import QtQuick 2.15
import QtQuick.Window 2.15
import "."


Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

       Comp {
       anchors.centerIn: parent
       r_color: "orange"
            Comp {
                anchors.right: parent.left
                r_color: "red"
                    Comp {

                        anchors.right: parent.left
                        r_color: "orange"

                    Comp {

                        anchors.right: parent.left
                        r_color: "red"


                    Comp {

                        anchors.right: parent.left
                        r_color: "orange"

                        Comp {

                            anchors.bottom: parent.top
                            r_color: "red"



                        }
                    }
                }
            }
    }
}}
