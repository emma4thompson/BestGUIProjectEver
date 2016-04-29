import QtQuick 2.0
import QtQuick.Controls 1.4

Rectangle {
    id: roster
    color: "teal"
    radius: 10

    Rectangle{
        id: left
        color: "teal"
        radius: 10
        width: parent.width * .5
        height: parent.height
        anchors.left: parent.left


        TextField {
            id: p1
            font.family: "Copperplate Gothic Bold"
            font.pointSize: 12
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: parent.top
            anchors.topMargin: 50
            placeholderText: qsTr("Player 1")
            width: 150
            height: 30
            z: 5

            TextField {
                id: p1_num
                font.family: "Copperplate Gothic Bold"
                font.pointSize: 12
                anchors.left: parent.right
                anchors.leftMargin: 20
                anchors.topMargin: 50
                placeholderText: qsTr("1")
                width: 40
                height: 30
                z: 5
            }
        }

        TextField {
            id: p2
            font.family: "Copperplate Gothic Bold"
            font.pointSize: 12
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: parent.top
            anchors.topMargin: 100
            placeholderText: qsTr("Player 2")
            width: 150
            height: 30
            z: 5
            TextField {
                id: p2_num
                font.family: "Copperplate Gothic Bold"
                font.pointSize: 12
                anchors.left: parent.right
                anchors.leftMargin: 20
                anchors.topMargin: 50
                placeholderText: qsTr("2")
                width: 40
                height: 30
                z: 5
            }
        }
        TextField {
            id: p3
            font.family: "Copperplate Gothic Bold"
            font.pointSize: 12
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: parent.top
            anchors.topMargin: 150
            placeholderText: qsTr("Player 3")
            width: 150
            height: 30
            z: 5

            TextField {
                id: p3_num
                font.family: "Copperplate Gothic Bold"
                font.pointSize: 12
                anchors.left: parent.right
                anchors.leftMargin: 20
                anchors.topMargin: 50
                placeholderText: qsTr("3")
                width: 40
                height: 30
                z: 5
            }
        }
        TextField {
            id: p4
            font.family: "Copperplate Gothic Bold"
            font.pointSize: 12
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: parent.top
            anchors.topMargin: 200
            placeholderText: qsTr("Player 4")
            width: 150
            height: 30
            z: 5
            TextField {
                id: p4_num
                font.family: "Copperplate Gothic Bold"
                font.pointSize: 12
                anchors.left: parent.right
                anchors.leftMargin: 20
                anchors.topMargin: 50
                placeholderText: qsTr("4")
                width: 40
                height: 30
                z: 5
            }
        }
        TextField {
            id: p5
            font.family: "Copperplate Gothic Bold"
            font.pointSize: 12
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: parent.top
            anchors.topMargin: 250
            placeholderText: qsTr("Player 5")
            width: 150
            height: 30
            z: 5
            TextField {
                id: p5_num
                font.family: "Copperplate Gothic Bold"
                font.pointSize: 12
                anchors.left: parent.right
                anchors.leftMargin: 20
                anchors.topMargin: 50
                placeholderText: qsTr("5")
                width: 40
                height: 30
                z: 5
            }
        }
        TextField {
            id: p6
            font.family: "Copperplate Gothic Bold"
            font.pointSize: 12
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: parent.top
            anchors.topMargin: 300
            placeholderText: qsTr("Player 6")
            width: 150
            height: 30
            z: 5
            TextField {
                id: p6_num
                font.family: "Copperplate Gothic Bold"
                font.pointSize: 12
                anchors.left: parent.right
                anchors.leftMargin: 20
                anchors.topMargin: 50
                placeholderText: qsTr("6")
                width: 40
                height: 30
                z: 5
            }
        }

        Rectangle {
            color: "white"
            width: 150
            height: 30
            radius: 5
            border.width: 2
            border.color: "black"
            z: 5
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: parent.top
            anchors.topMargin: 370
            Text{
                text: "Clear"
                font.family: "Copperplate Gothic Bold"
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                font.pointSize: 16
            }
            MouseArea{
                anchors.fill: parent
                onClicked:{
                    buttonPress.play();

                    p1.text = ""
                    p2.text = ""
                    p3.text = ""
                    p4.text = ""
                    p5.text = ""
                    p6.text = ""
                    p7.text = ""
                    p8.text = ""
                    p9.text = ""
                    p10.text = ""
                    p11.text = ""
                    p12.text = ""
                    p1_num.text = ""
                    p2_num.text = ""
                    p3_num.text = ""
                    p4_num.text = ""
                    p5_num.text = ""
                    p6_num.text = ""
                    p7_num.text = ""
                    p8_num.text = ""
                    p9_num.text = ""
                    p10_num.text = ""
                    p11_num.text = ""
                    p12_num.text = ""
                }
            }
        }
    }
    Rectangle{
        id: right
        color: "teal"
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
                    //roster_prompt.visible = false

                    buttonPress.play();

                    player1.setPlayerName(p1.text === "" ? "Player 1" : p1.text)
                    player2.setPlayerName(p2.text === "" ? "Player 2" : p2.text)
                    player3.setPlayerName(p3.text === "" ? "Player 3" : p3.text)
                    player4.setPlayerName(p4.text === "" ? "Player 4" : p4.text)
                    player5.setPlayerName(p5.text === "" ? "Player 5" : p5.text)
                    player6.setPlayerName(p6.text === "" ? "Player 6" : p6.text)
                    player7.setPlayerName(p7.text === "" ? "Player 7" : p7.text)
                    player8.setPlayerName(p8.text === "" ? "Player 8" : p8.text)
                    player9.setPlayerName(p9.text === "" ? "Player 9" : p9.text)
                    player10.setPlayerName(p10.text === "" ? "Player 10" : p10.text)
                    player11.setPlayerName(p11.text === "" ? "Player 11" : p11.text)
                    player12.setPlayerName(p12.text === "" ? "Player 12" : p12.text)

                    player1.setPlayerNumber(p1_num.text === "" ? "1" : p1_num.text)
                    player2.setPlayerNumber(p2_num.text === "" ? "2" : p2_num.text)
                    player3.setPlayerNumber(p3_num.text === "" ? "3" : p3_num.text)
                    player4.setPlayerNumber(p4_num.text === "" ? "4" : p4_num.text)
                    player5.setPlayerNumber(p5_num.text === "" ? "5" : p5_num.text)
                    player6.setPlayerNumber(p6_num.text === "" ? "6" : p6_num.text)
                    player7.setPlayerNumber(p7_num.text === "" ? "7" : p7_num.text)
                    player8.setPlayerNumber(p8_num.text === "" ? "8" : p8_num.text)
                    player9.setPlayerNumber(p9_num.text === "" ? "9" : p9_num.text)
                    player10.setPlayerNumber(p10_num.text === "" ? "10" : p10_num.text)
                    player11.setPlayerNumber(p11_num.text === "" ? "11" : p11_num.text)
                    player12.setPlayerNumber(p12_num.text === "" ? "12" : p12_num.text)

                    roster.visible = false
                    gear.visible = true
                    grid.visible = true
                    edit_roster.visible = true
                }
            }
        }

        TextField {
            id: p7
            font.family: "Copperplate Gothic Bold"
            font.pointSize: 12
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: parent.top
            anchors.topMargin: 50
            placeholderText: qsTr("Player 7")
            width: 150
            height: 30
            z: 5
            TextField {
                id: p7_num
                font.family: "Copperplate Gothic Bold"
                font.pointSize: 12
                anchors.left: parent.right
                anchors.leftMargin: 20
                //anchors.top: parent
                anchors.topMargin: 50
                placeholderText: qsTr("7")
                width: 40
                height: 30
                z: 5
            }
        }
        TextField {
            id: p8
            font.family: "Copperplate Gothic Bold"
            font.pointSize: 12
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: parent.top
            anchors.topMargin: 100
            placeholderText: qsTr("Player 8")
            width: 150
            height: 30
            z: 5
            TextField {
                id: p8_num
                font.family: "Copperplate Gothic Bold"
                font.pointSize: 12
                anchors.left: parent.right
                anchors.leftMargin: 20
                //anchors.top: parent
                anchors.topMargin: 50
                placeholderText: qsTr("8")
                width: 40
                height: 30
                z: 5
            }
        }
        TextField {
            id: p9
            font.family: "Copperplate Gothic Bold"
            font.pointSize: 12
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: parent.top
            anchors.topMargin: 150
            placeholderText: qsTr("Player 9")
            width: 150
            height: 30
            z: 5
            TextField {
                id: p9_num
                font.family: "Copperplate Gothic Bold"
                font.pointSize: 12
                anchors.left: parent.right
                anchors.leftMargin: 20
                //anchors.top: parent
                anchors.topMargin: 50
                placeholderText: qsTr("9")
                width: 40
                height: 30
                z: 5
            }
        }
        TextField {
            id: p10
            font.family: "Copperplate Gothic Bold"
            font.pointSize: 12
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: parent.top
            anchors.topMargin: 200
            placeholderText: qsTr("Player 10")
            width: 150
            height: 30
            z: 5
            TextField {
                id: p10_num
                font.family: "Copperplate Gothic Bold"
                font.pointSize: 12
                anchors.left: parent.right
                anchors.leftMargin: 20
                //anchors.top: parent
                anchors.topMargin: 50
                placeholderText: qsTr("10")
                width: 40
                height: 30
                z: 5
            }
        }
        TextField {
            id: p11
            font.family: "Copperplate Gothic Bold"
            font.pointSize: 12
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: parent.top
            anchors.topMargin: 250
            placeholderText: qsTr("Player 11")
            width: 150
            height: 30
            z: 5
            TextField {
                id: p11_num
                font.family: "Copperplate Gothic Bold"
                font.pointSize: 12
                anchors.left: parent.right
                anchors.leftMargin: 20
                //anchors.top: parent
                anchors.topMargin: 50
                placeholderText: qsTr("11")
                width: 40
                height: 30
                z: 5
            }
        }
        TextField {
            id: p12
            font.family: "Copperplate Gothic Bold"
            font.pointSize: 12
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: parent.top
            anchors.topMargin: 300
            placeholderText: qsTr("Player 12")
            width: 150
            height: 30
            z: 5
            TextField {
                id: p12_num
                font.family: "Copperplate Gothic Bold"
                font.pointSize: 12
                anchors.left: parent.right
                anchors.leftMargin: 20
                //anchors.top: parent
                anchors.topMargin: 50
                placeholderText: qsTr("12")
                width: 40
                height: 30
                z: 5
            }
        }

        Rectangle {
            color: "white"
            width: 150
            height: 30
            radius: 5
            border.width: 2
            border.color: "black"
            z: 5
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: parent.top
            anchors.topMargin: 370
            Text{
                text: "Confirm"
                font.family: "Copperplate Gothic Bold"
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                font.pointSize: 16
            }
            MouseArea{
                anchors.fill: parent
                onClicked:{
                    buttonPress.play();

                    player1.setPlayerName(p1.text === "" ? "Player 1" : p1.text)
                    player2.setPlayerName(p2.text === "" ? "Player 2" : p2.text)
                    player3.setPlayerName(p3.text === "" ? "Player 3" : p3.text)
                    player4.setPlayerName(p4.text === "" ? "Player 4" : p4.text)
                    player5.setPlayerName(p5.text === "" ? "Player 5" : p5.text)
                    player6.setPlayerName(p6.text === "" ? "Player 6" : p6.text)
                    player7.setPlayerName(p7.text === "" ? "Player 7" : p7.text)
                    player8.setPlayerName(p8.text === "" ? "Player 8" : p8.text)
                    player9.setPlayerName(p9.text === "" ? "Player 9" : p9.text)
                    player10.setPlayerName(p10.text === "" ? "Player 10" : p10.text)
                    player11.setPlayerName(p11.text === "" ? "Player 11" : p11.text)
                    player12.setPlayerName(p12.text === "" ? "Player 12" : p12.text)

                    player1.setPlayerNumber(p1_num.text === "" ? "1" : p1_num.text)
                    player2.setPlayerNumber(p2_num.text === "" ? "2" : p2_num.text)
                    player3.setPlayerNumber(p3_num.text === "" ? "3" : p3_num.text)
                    player4.setPlayerNumber(p4_num.text === "" ? "4" : p4_num.text)
                    player5.setPlayerNumber(p5_num.text === "" ? "5" : p5_num.text)
                    player6.setPlayerNumber(p6_num.text === "" ? "6" : p6_num.text)
                    player7.setPlayerNumber(p7_num.text === "" ? "7" : p7_num.text)
                    player8.setPlayerNumber(p8_num.text === "" ? "8" : p8_num.text)
                    player9.setPlayerNumber(p9_num.text === "" ? "9" : p9_num.text)
                    player10.setPlayerNumber(p10_num.text === "" ? "10" : p10_num.text)
                    player11.setPlayerNumber(p11_num.text === "" ? "11" : p11_num.text)
                    player12.setPlayerNumber(p12_num.text === "" ? "12" : p12_num.text)

                    roster.visible = false
                    gear.visible = true
                    grid.visible = true
                    edit_roster.visible = true
                }
            }
        }
    }

    Text{
        text: "ENTER YOUR ROSTER"
        font.family: "Copperplate Gothic Bold"
        font.pointSize: 18
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: parent.top
        anchors.topMargin: 10
    }


}
