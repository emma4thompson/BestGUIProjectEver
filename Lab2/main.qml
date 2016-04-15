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
        source:"10_Invincible.wav"
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
            source: "logo_trans.png"
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: parent.top
            anchors.topMargin: 100
        }
    }

    Audio
    {
        id: playRoar
        source: "C:/msysgit/cst_238/ProjectTest/src/LionRoar.wav"
        autoLoad: true
    }

    MyButton{
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

        }
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
        anchors.horizontalCenter: parent.horizontalCenter
        y: volleyball.minHeight + volleyball.height
        source: "shadow.png"
    }

    Image {
        id: volleyball
        height: 50
        width: 50
        property int maxHeight: window.height / 3
        property int minHeight: 2 * window.height / 3

        anchors.horizontalCenter: parent.horizontalCenter
        y: minHeight
        source: "volleyball.png"

    }
}

