import QtQuick 2.1
import BasicUIControls 1.0
import qb.components 1.0

//function balloonMode(balloonmode, animationtime, animationtype)
//                  "qrc:/qb/components/Balloon.qml"


//	function balloonMode(balloonmode, animationtime, animationtype, visibleindimstate) {
//		animationInterval = interval between new sprites to show
//		qmlAnimationURL = animationtype by url ( like >>>>    "qrc:/qb/components/Balloon.qml"    <<<<)
//		balloonmode ="Start" or "Stop" to start and stop the animation (current animation will be finished
//		visibleindimstate ="yes" or "no" will choose if the animation is visible in the dimstate

//		balloonMode("Start",1000,"qrc:/qb/components/Roach.qml","no")
//		balloonMode("Start",2000,"qrc:/qb/components/Balloon.qml","yes")
//		balloonMode("Stop")


Tile {
	id: balloonTile
	property bool dimState: screenStateController.dimmedColors

	NewTextLabel {
		id: clickText
		width: isNxt ? 284 : 220;  
		height: (parent.height/3) -2
		buttonActiveColor: "lightgrey"
		buttonHoverColor: "blue"
		enabled : true
		textColor : "black"
		textDisabledColor : "grey"
		buttonText:  "Click here for Balloons!"
		anchors {
			top: parent.top
			topMargin: 1
			horizontalCenter: parent.horizontalCenter 
			}
		visible: !dimState
	}


	NewTextLabel {
		id: clickText2
		width: isNxt ? 284 : 220;  
		height: (parent.height/3) -2
		buttonActiveColor: "lightgrey"
		buttonHoverColor: "blue"
		enabled : true
		textColor : "black"
		textDisabledColor : "grey"
		buttonText:  "Start!"
		anchors {
			top: clickText.bottom
			topMargin: 1
			horizontalCenter: parent.horizontalCenter 
			}
		//onClicked: {balloonMode("Start",2000,"qrc:/qb/components/Balloon.qml","yes");}
		onClicked: {balloonMode("Start",1000,"qrc:/qb/components/Roach.qml","no");}




		visible: !dimState
	}


	NewTextLabel {
		id: clickText3
		width: isNxt ? 284 : 220;  
		height: (parent.height/3) -2
		buttonActiveColor: "lightgrey"
		buttonHoverColor: "blue"
		enabled : true
		textColor : "black"
		textDisabledColor : "grey"
		buttonText:  "Stop!"
		anchors {
			top: clickText2.bottom
			topMargin: 1
			horizontalCenter: parent.horizontalCenter 
			}
		//onClicked: {balloonMode("Stop",2000, "qrc:/qb/components/Balloon.qml","yes");}
		onClicked: {balloonMode("Stop");}

		//onClicked: {balloonMode("Stop",1000, "qrc:/qb/components/Roach.qml","yes");}

		visible: !dimState
	}


}