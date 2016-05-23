import QtQuick 2.0
import QtQuick.Controls 1.4

Rectangle {
    id: scoreprompt
    color: "teal"
    radius: 10
    Text {
        text: "Scores"
        font.family: "Copperplate Gothic Bold"
        font.pointSize: 14
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: parent.top
        anchors.topMargin: 20
        z: 15
    }

    Rectangle{
        id: left
        color: "red"
        radius: 10
        width: parent.width * .5
        height: parent.height
        anchors.left: parent.left
        z: 10
        Text{
            text: "1"
            font.family: "Copperplate Gothic Bold"
            font.pointSize: 14
            anchors.left: parent.left
            anchors.leftMargin: 12
            anchors.top: parent.top
            anchors.topMargin: 50
            z: 15
        }

        TextField {
            id: set1h
            font.family: "Copperplate Gothic Bold"
            font.pointSize: 12
            anchors.right: left.right
            anchors.top: parent.top
            anchors.topMargin: 50
            placeholderText: qsTr("H")
            width: 40
            height: 30
            z: 8
        }
        TextField {
            id: set2h
            font.family: "Copperplate Gothic Bold"
            font.pointSize: 12
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.topMargin: 100
            placeholderText: qsTr("H")
            width: 40
            height: 30
            z: 8
        }
        TextField {
            id: set3h
            font.family: "Copperplate Gothic Bold"
            font.pointSize: 12
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.topMargin: 150
            placeholderText: qsTr("H")
            width: 40
            height: 30
            z: 8
        }
        TextField {
            id: set4h
            font.family: "Copperplate Gothic Bold"
            font.pointSize: 12
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.topMargin: 200
            placeholderText: qsTr("H")
            width: 40
            height: 30
            z: 8
        }
        TextField {
            id: set5h
            font.family: "Copperplate Gothic Bold"
            font.pointSize: 12
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.topMargin: 250
            placeholderText: qsTr("H")
            width: 40
            height: 30
            z: 8
        }
    }

    Rectangle{
        id: right
        color: "blue"
        radius: 10
        width: parent.width * .5
        height: parent.height
        anchors.right: parent.right

        Text{
            text: "X"
            font.bold: true
            font.family: "Copperplate Gothic Bold"
            font.pointSize: 15
            anchors.top: parent.top
            anchors.right: parent.right
            anchors.rightMargin: 5
            MouseArea{
                anchors.fill: parent
                onClicked:{
                    buttonPress.play();

                    match.setSet1_h(set1h.text === "" ? "H" : set1h.text)
                    match.setSet2_h(set2h.text === "" ? "H" : set2h.text)
                    match.setSet3_h(set3h.text === "" ? "H" : set3h.text)
                    match.setSet4_h(set4h.text === "" ? "H" : set4h.text)
                    match.setSet5_h(set5h.text === "" ? "H" : set5h.text)
                    match.setSet1_o(set1o.text === "" ? "A" : set1o.text)
                    match.setSet2_o(set2o.text === "" ? "A" : set2o.text)
                    match.setSet3_o(set3o.text === "" ? "A" : set3o.text)
                    match.setSet4_o(set4o.text === "" ? "A" : set4o.text)
                    match.setSet5_o(set5o.text === "" ? "A" : set5o.text)

                    scoreprompt.visible = false
                    gear.visible = true
                    grid.visible = true
                    edit_roster.visible = true
                    s1h.visible = true
                }
            }
            TextField {
                id: set1o
                font.family: "Copperplate Gothic Bold"
                font.pointSize: 12
                anchors.left: parent.left
                anchors.leftMargin: 20
                anchors.top: parent.top
                anchors.topMargin: 50
                placeholderText: qsTr("A")
                width: 40
                height: 30
                z: 8
            }
            TextField {
                id: set2o
                font.family: "Copperplate Gothic Bold"
                font.pointSize: 12
                anchors.left: parent.left
                anchors.leftMargin: 20
                anchors.top: parent.top
                anchors.topMargin: 100
                placeholderText: qsTr("A")
                width: 40
                height: 30
                z: 8
            }
            TextField {
                id: set3o
                font.family: "Copperplate Gothic Bold"
                font.pointSize: 12
                anchors.left: parent.left
                anchors.leftMargin: 20
                anchors.top: parent.top
                anchors.topMargin: 150
                placeholderText: qsTr("A")
                width: 40
                height: 30
                z: 8
            }
            TextField {
                id: set4o
                font.family: "Copperplate Gothic Bold"
                font.pointSize: 12
                anchors.left: parent.left
                anchors.leftMargin: 20
                anchors.top: parent.top
                anchors.topMargin: 200
                placeholderText: qsTr("A")
                width: 40
                height: 30
                z: 8
            }
            TextField {
                id: set5o
                font.family: "Copperplate Gothic Bold"
                font.pointSize: 12
                anchors.left: parent.left
                anchors.leftMargin: 20
                anchors.top: parent.top
                anchors.topMargin: 250
                placeholderText: qsTr("A")
                width: 40
                height: 30
                z: 8
            }
        }
    }
}
