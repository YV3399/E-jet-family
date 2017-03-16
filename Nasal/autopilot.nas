var Node = {
	speed: props.globals.getNode("/autopilot/settings/speed", 1),
	hdg: props.globals.getNode("/autopilot/settings/heading", 1),
	alt: props.globals.getNode("/autopilot/settings/altitude", 1),
};

var toggleTOGA = func() {
	var node = Node.speed;

	if (node.getValue() == "speed-to-ga") {
		node.setValue("");
	} else {
		node.setValue("speed-to-ga");
	}
};

var toggleGS = func() {
	var hdgNode = Node.hdg;
	var altNode = Node.alt;

	if (altNode.getValue() == "gs1-hold") {
		hdgNode.setValue("dg-heading-hold");
		altNode.setValue("altitude-hold");
	} else {
		hdgNode.setValue("nav1-hold");
		altNode.setValue("gs1-hold");
	}
};

var toggleHeadingMode = func(hdg) {
	var node = Node.hdg;

	if (node.getValue() == hdg) {
		node.setValue("dg-heading-hold");
	} else {
		node.setValue(hdg);
	}
};