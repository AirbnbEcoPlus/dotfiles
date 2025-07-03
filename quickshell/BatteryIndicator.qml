import QtQuick 
import Quickshell.Services.UPower 

Item {
  id: root
  width: 80
  height: 25

  readonly property var batteryDevice: UPower.displayDevice

  Timer {
    id: readyChecker
    interval: 500
    repeat: true
    running: true
    onTriggered: {
      console.log("Checking ready state:", batteryDevice.ready)
      if (batteryDevice.ready) {
        readyChecker.running = false
      }
    }
  }

  Rectangle {
    id: batteryBody
    width: 30
    height: 12
    radius: 4
    color: "white"
    border.color: "black"
    anchors.verticalCenter: parent.verticalCenter
    anchors.left: parent.left

    Rectangle {
      id: batteryLevelBar
      width: batteryBody.width * (batteryDevice.ready ? (batteryDevice.percentage * 100) / 100 : 0)
      height: batteryBody.height
      radius: 2
      color: batteryDevice.ready && (batteryDevice.percentage * 100) > 20 ? "green" : "red"
    }

   
  }

  Text {
    text: batteryDevice.ready ? batteryDevice.percentage * 100 + "%" : "Loading..."
    color: "white"
    font.pixelSize: 16
    anchors.verticalCenter: parent.verticalCenter
    anchors.left: batteryBody.right
    anchors.leftMargin: 8
  }

  Connections {
    target: batteryDevice
    onPercentageChanged: root.forceActiveFocus()
    onReadyChanged: {
      console.log("Ready changed:", batteryDevice.ready)
      root.forceActiveFocus()
    }
  }
   Component.onCompleted: {
    console.log("Battery device properties:")
    for (var prop in batteryDevice) {
      try {
        console.log(prop + ": " + batteryDevice[prop])
      } catch(e) {
        console.log(prop + ": <non accessible>")
      }
    }
  }
}
