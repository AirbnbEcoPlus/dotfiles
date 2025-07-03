// Bar.qml
import Quickshell
import QtQuick

Scope {
  // no more time object

  Variants {
    model: Quickshell.screens

    PanelWindow {
      property var modelData
      screen: modelData


      anchors {
        top: true
        left: true
        right: true
      }
      Rectangle {
        anchors.fill: parent
        color: "black"
      }

      implicitHeight: 20

      ClockWidget {
        anchors.centerIn: parent

      }

      BatteryIndicator {
        anchors.verticalCenter: parent.verticalCenter
        anchors.right: parent.right
      }
    }
  }
}