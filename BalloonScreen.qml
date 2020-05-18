//balloon by oepi-loepi

import QtQuick 2.1
import qb.components 1.0
import BasicUIControls 1.0;
//import QtQuick.Controls 1.3

Screen {
	id: balloonScreen
	screenTitle: "Balloon!"
	opacity: 1
	property bool showBalloons : false

	onShown: {
		showBalloons  = true
	}

	onHidden: {
		showBalloons = false
	}

	Rectangle {
		id: game
		color: "transparent"
		width: parent.width; height: parent.height  		
		anchors {
			top: sparent.top
			left: parent.left
			topMargin:0
			leftMargin: 0
			}

		Timer {
			interval: 1000
			repeat: true
			running: showBalloons
			onTriggered: {
				var component = Qt.createComponent("Balloon.qml");
				var balloon = component.createObject(game);
				balloon.x = ((Math.random() * parent.width)-60);
				balloon.y = parent.height;
			}
		}

	}

}