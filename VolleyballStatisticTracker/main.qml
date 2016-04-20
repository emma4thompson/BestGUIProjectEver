//Emma Thompson
//Lab2
//BestGUIProjectEver

import QtQuick 2.5
import QtQuick.Window 2.2
import QtQuick.Controls 1.4
import QtMultimedia 5.6

Window {
    id: window
    visible: true
    width: 1366
    height: 720

    Audio{
        id: heartofcourage
        //source:"10_Invincible.wav"
        autoPlay: true
    }

    Rectangle{
        anchors.fill: parent
        gradient: Gradient {
            GradientStop {
                position: 0.00;
                color: "#ffffff";
            }
            GradientStop {
                position: 0.38;
                color: "#ffffff";
            }
            GradientStop {
                position: 1.00;
                color: "#0e9fb5";
            }
        }

        Image{
            id: logo
            visible: true
            source: "logo_trans.png"
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: parent.top
            anchors.topMargin: 100
        }
    }

    Audio
    {
        id: playRoar
        //source: "LionRoar.wav"
        autoLoad: true
    }

    MyButton{
        id: mybutton
        visible: true
        height: parent.height * .075
        width: parent.width * .075
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 100
        onHoverStarted:
        {
            text_color = "White"
            color = "Black"
        }
        onHoverFinished:
        {
            text_color = "Black"
            color = "White"
        }
        onClicked:
        {
            playRoar.play()
            logo.visible = false
            mybutton.visible = false
            shadow.visible = false
            volleyball.visible = false
            grid.visible = true
        }
    }
    Grid{
        id: grid
        visible: false
        height: parent.height * .9
        width: parent.width * .9
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        horizontalItemAlignment: Grid.AlignHCenter;
        verticalItemAlignment: Grid.AlignTop;
        rows: 8
        columns: 21
        spacing: 10

        //for the number of players, do this for each
        Rectangle{ id: p1_name; height: parent.height * .033; width: parent.width * .07; radius: 5; color: "#4f4e4e"; Text{ text: player1.getPlayerName(); font.family: "Rockwell Extra Bold"; font.pointSize: 10; color: "white"; anchors.horizontalCenter: parent.horizontalCenter; anchors.verticalCenter:  parent.verticalCenter }}
        Rectangle{ id: p1_number; height: parent.height * .033; width: parent.width * .03; radius: 5; color: "#4f4e4e"; Text{ text: player1.getPlayerNumber(); font.family: "Rockwell Extra Bold"; font.pointSize: 10; color: "white"; anchors.horizontalCenter: parent.horizontalCenter; anchors.verticalCenter:  parent.verticalCenter }}
        Rectangle{ id: p1_attack_kill; height: parent.height * .033; width: parent.width * .03; radius: 5; color: "black"; Text{ text: player1.attack_kill.getStatCount(); font.family: "Rockwell Extra Bold"; font.pointSize: 10; color: "white"; anchors.horizontalCenter: parent.horizontalCenter; anchors.verticalCenter:  parent.verticalCenter }}
        Rectangle{ id: p1_attack_error; height: parent.height * .033; width: parent.width * .03; radius: 5; color: "black"; Text{ text: "3"; font.family: "Rockwell Extra Bold"; font.pointSize: 10; color: "white"; anchors.horizontalCenter: parent.horizontalCenter; anchors.verticalCenter:  parent.verticalCenter }}
        Rectangle{ id: p1_attack_zero; height: parent.height * .033; width: parent.width * .03; radius: 5; color: "black"; Text{ text: "3"; font.family: "Rockwell Extra Bold"; font.pointSize: 10; color: "white"; anchors.horizontalCenter: parent.horizontalCenter; anchors.verticalCenter:  parent.verticalCenter }}
        Rectangle{ id: p1_assist; height: parent.height * .033; width: parent.width * .03; radius: 5; color: "teal"; Text{ text: "3"; font.family: "Rockwell Extra Bold"; font.pointSize: 10; color: "white"; anchors.horizontalCenter: parent.horizontalCenter; anchors.verticalCenter:  parent.verticalCenter }}
        Rectangle{ id: p1_serve_plus; height: parent.height * .033; width: parent.width * .03; radius: 5; color: "black"; Text{ text: "3"; font.family: "Rockwell Extra Bold"; font.pointSize: 10; color: "white"; anchors.horizontalCenter: parent.horizontalCenter; anchors.verticalCenter:  parent.verticalCenter }}
        Rectangle{ id: p1_serve_minus; height: parent.height * .033; width: parent.width * .03; radius: 5; color: "black"; Text{ text: "3"; font.family: "Rockwell Extra Bold"; font.pointSize: 10; color: "white"; anchors.horizontalCenter: parent.horizontalCenter; anchors.verticalCenter:  parent.verticalCenter }}
        Rectangle{ id: p1_serve_ace; height: parent.height * .033; width: parent.width * .03; radius: 5; color: "black"; Text{ text: "3"; font.family: "Rockwell Extra Bold"; font.pointSize: 10; color: "white"; anchors.horizontalCenter: parent.horizontalCenter; anchors.verticalCenter:  parent.verticalCenter }}
        Rectangle{ id: p1_dig; height: parent.height * .033; width: parent.width * .03; radius: 5; color: "teal"; Text{ text: "3"; font.family: "Rockwell Extra Bold"; font.pointSize: 10; color: "white"; anchors.horizontalCenter: parent.horizontalCenter; anchors.verticalCenter:  parent.verticalCenter }}
        Rectangle{ id: p1_s_rec_plus; height: parent.height * .033; width: parent.width * .03; radius: 5; color: "black"; Text{ text: "3"; font.family: "Rockwell Extra Bold"; font.pointSize: 10; color: "white"; anchors.horizontalCenter: parent.horizontalCenter; anchors.verticalCenter:  parent.verticalCenter }}
        Rectangle{ id: p1_s_rec_minus; height: parent.height * .033; width: parent.width * .03; radius: 5; color: "black"; Text{ text: "3"; font.family: "Rockwell Extra Bold"; font.pointSize: 10; color: "white"; anchors.horizontalCenter: parent.horizontalCenter; anchors.verticalCenter:  parent.verticalCenter }}
        Rectangle{ id: p1_s_rec_zero; height: parent.height * .033; width: parent.width * .03; radius: 5; color: "black"; Text{ text: "3"; font.family: "Rockwell Extra Bold"; font.pointSize: 10; color: "white"; anchors.horizontalCenter: parent.horizontalCenter; anchors.verticalCenter:  parent.verticalCenter }}
        Rectangle{ id: p1_solo_block; height: parent.height * .033; width: parent.width * .03; radius: 5; color: "teal"; Text{ text: "3"; font.family: "Rockwell Extra Bold"; font.pointSize: 10; color: "white"; anchors.horizontalCenter: parent.horizontalCenter; anchors.verticalCenter:  parent.verticalCenter }}
        Rectangle{ id: p1_block_assist; height: parent.height * .033; width: parent.width * .03; radius: 5; color: "teal"; Text{ text: "3"; font.family: "Rockwell Extra Bold"; font.pointSize: 10; color: "white"; anchors.horizontalCenter: parent.horizontalCenter; anchors.verticalCenter:  parent.verticalCenter }}
        Rectangle{ id: p1_ball_drop; height: parent.height * .033; width: parent.width * .03; radius: 5; color: "#4f4e4e"; Text{ text: "3"; font.family: "Rockwell Extra Bold"; font.pointSize: 10; color: "white"; anchors.horizontalCenter: parent.horizontalCenter; anchors.verticalCenter:  parent.verticalCenter }}
        Rectangle{ id: p1_foot_fault; height: parent.height * .033; width: parent.width * .03; radius: 5; color: "#8b8a8a"; Text{ text: "3"; font.family: "Rockwell Extra Bold"; font.pointSize: 10; color: "white"; anchors.horizontalCenter: parent.horizontalCenter; anchors.verticalCenter:  parent.verticalCenter }}
        Rectangle{ id: p1_net_fault; height: parent.height * .033; width: parent.width * .03; radius: 5; color: "#a2a2a2"; Text{ text: "3"; font.family: "Rockwell Extra Bold"; font.pointSize: 10; color: "white"; anchors.horizontalCenter: parent.horizontalCenter; anchors.verticalCenter:  parent.verticalCenter }}
        Rectangle{ id: p1_lift; height: parent.height * .033; width: parent.width * .03; radius: 5; color: "#c4c4c4"; Text{ text: "3"; font.family: "Rockwell Extra Bold"; font.pointSize: 10; color: "white"; anchors.horizontalCenter: parent.horizontalCenter; anchors.verticalCenter:  parent.verticalCenter }}
        Rectangle{ id: p1_double_contact; height: parent.height * .033; width: parent.width * .03; radius: 5; color: "#d5d5d5"; Text{ text: "3"; font.family: "Rockwell Extra Bold"; font.pointSize: 10; color: "white"; anchors.horizontalCenter: parent.horizontalCenter; anchors.verticalCenter:  parent.verticalCenter }}
        Rectangle{ id: p1_out_of_rotation; height: parent.height * .033; width: parent.width * .03; radius: 5; color: "#e4e4e4"; Text{ text: "3"; font.family: "Rockwell Extra Bold"; font.pointSize: 10; color: "white"; anchors.horizontalCenter: parent.horizontalCenter; anchors.verticalCenter:  parent.verticalCenter }}
        Rectangle{ id: p1_out_of_rotation2; height: parent.height * .033; width: parent.width * .03; radius: 5; color: "#e4e4e4"; Text{ text: "3"; font.family: "Rockwell Extra Bold"; font.pointSize: 10; color: "white"; anchors.horizontalCenter: parent.horizontalCenter; anchors.verticalCenter:  parent.verticalCenter }}
    }

    //! [0]
    SequentialAnimation {
        SequentialAnimation {
            ParallelAnimation {
                YAnimator {
                    target: volleyball;
                    from: volleyball.minHeight;
                    to: volleyball.maxHeight
                    easing.type: Easing.OutExpo;
                    duration: 300
                }
                ScaleAnimator {
                    target: shadow
                    from: 1
                    to: 0.5
                    easing.type: Easing.OutExpo;
                    duration: 300
                }
            }
            ParallelAnimation {
                YAnimator {
                    target: volleyball;
                    from: volleyball.maxHeight;
                    to: volleyball.minHeight
                    easing.type: Easing.OutBounce;
                    duration: 1000
                }
                ScaleAnimator {
                    target: shadow
                    from: 0.5
                    to: 1.5
                    easing.type: Easing.OutBounce;
                    duration: 1000
                }
            }
        }
        PauseAnimation { duration: 500 }
        running: true
        loops: Animation.Infinite
    }
    //! [0]

    // The shadow for the volleyball
    Image {
        id: shadow;
        visible: true
        anchors.horizontalCenter: parent.horizontalCenter
        y: volleyball.minHeight + volleyball.height
        source: "shadow.png"
    }

    Image {
        id: volleyball
        visible: true
        height: 50
        width: 50
        property int maxHeight: window.height / 3
        property int minHeight: 2 * window.height / 3

        anchors.horizontalCenter: parent.horizontalCenter
        y: minHeight
        source: "volleyball.png"

    }
}
