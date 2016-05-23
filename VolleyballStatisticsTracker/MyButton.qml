import QtQuick 2.0
import QtMultimedia 5.6

Rectangle {
    id: rect
    color: "White"
    radius: 10

    signal hoverStarted
    signal hoverFinished
    signal clicked

    property alias text_color: start.color
    property alias text_font: start.font
    property alias text: start.text

    MouseArea{
        id: mousearea
        hoverEnabled: true
        anchors.fill: parent
        onEntered: hoverStarted()
        onExited: hoverFinished()
        onPressed: { playRoar.play() }
    }

    Text{
        id:start
        text: "Start"
        font.family: "Copperplate Gothic Bold"
        font.pointSize: 15
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
    }

    Component.onCompleted:
    {
        mousearea.clicked.connect(rect.clicked)
    }
}
