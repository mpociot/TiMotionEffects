var TiMotionEffects = require('de.marcelpociot.motioneffects');

// open a single window
var win = Ti.UI.createWindow({
	backgroundColor:'white'
});

var label = Ti.UI.createLabel({
	text: 'Parallax effect',
	layout: 'horizontal',
	font: {
		fontSize: 20
	},
	horizontalMotionEffect: {
		min: -10,
		max: 10
	},
	verticalMotionEffect: {
		min: -10,
		max: 10
	}
});
win.add(label);
win.open();