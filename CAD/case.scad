// Units: mm
// Copyright: @Cyao 2025

include <BOSL/constants.scad>
use <BOSL/shapes.scad>
include <common.scad>

module main_body() {
	difference() {
		translate([-WALL_THICKNESS, -PCB_HEIGHT-WALL_THICKNESS, 0])
		cuboid([PCB_WIDTH+WALL_THICKNESS*2, PCB_HEIGHT+WALL_THICKNESS*2, WALL_THICKNESS+PCB_TO_BOTTOM + 1.6 + 5 - PLATE_THICKNESS], 
		       fillet=5, edges=EDGE_FR_RT+EDGE_BK_RT+EDGE_FR_LF+EDGE_BK_LF, center=false, $fn=24);

		translate([0.5, -PCB_HEIGHT+0.5, WALL_THICKNESS+0.001])
		if (PCB_ROUNDED) {
			cuboid([PCB_WIDTH+1, PCB_HEIGHT+1, PCB_TO_BOTTOM + 1.6 + 5 - PLATE_THICKNESS+0.002], fillet=PCB_FILLET_RADIUS, 
			       edges=EDGE_FR_RT+EDGE_BK_RT+EDGE_FR_LF+EDGE_BK_LF, center=false, $fn=24);
		} else {
			cube([PCB_WIDTH, PCB_HEIGHT, PCB_TO_BOTTOM + 1.6 + 5 - PLATE_THICKNESS+0.002]);
		}
	}
}

module screw_hole() {
	translate([0, 0, -2.5])
	cylinder(d=3.4, h=WALL_THICKNESS+PCB_TO_BOTTOM + 1.6 + 5 - PLATE_THICKNESS+5, $fn=25);

	translate([0, 0, -0.001])
	cylinder(d=6, h=3.401, $fn=25);
}

module main_case() {
	difference() {
		main_body();

		translate([-WALL_THICKNESS/2+0.5, WALL_THICKNESS/2-0.5, -0.001])
		screw_hole();

		translate([-WALL_THICKNESS/2+0.5, -WALL_THICKNESS/2+0.5-PCB_HEIGHT, -0.001])
		screw_hole();

		translate([PCB_WIDTH+WALL_THICKNESS/2-0.5, WALL_THICKNESS/2-0.5, -0.001])
		screw_hole();

		translate([PCB_WIDTH+WALL_THICKNESS/2-0.5, -WALL_THICKNESS/2+0.5-PCB_HEIGHT, -0.001])
		screw_hole();
	}
}

module support() {
	difference() {
		if (SUPPORT_FILLET) {
			translate([SUPPORT_MARGIN, SUPPORT_MARGIN, 0])
			cuboid([(PCB_WIDTH + 2 * WALL_THICKNESS)-SUPPORT_MARGIN*2, (PCB_HEIGHT + 2 * WALL_THICKNESS)-SUPPORT_MARGIN*2, (PCB_HEIGHT + 2 * WALL_THICKNESS)*sin(KEYBOARD_ANGLE)+KEYBOARD_OFFSET],
				fillet=SUPPORT_FILLET_RADIUS,
				edges=EDGE_FR_RT+EDGE_BK_RT+EDGE_FR_LF+EDGE_BK_LF, center=false, $fn=24);
		} else if (SUPPORT_CHAMFER) {
			translate([SUPPORT_MARGIN, SUPPORT_MARGIN, 0])
			cuboid([(PCB_WIDTH + 2 * WALL_THICKNESS)-SUPPORT_MARGIN*2, (PCB_HEIGHT + 2 * WALL_THICKNESS)-SUPPORT_MARGIN*2, (PCB_HEIGHT + 2 * WALL_THICKNESS)*sin(KEYBOARD_ANGLE)+KEYBOARD_OFFSET],
				chamfer=SUPPORT_CHAMFER_AMMOUNT,
				edges=EDGE_FR_RT+EDGE_BK_RT+EDGE_FR_LF+EDGE_BK_LF, center=false, $fn=24);
		} else {
			translate([SUPPORT_MARGIN, SUPPORT_MARGIN, 0])
			cuboid([(PCB_WIDTH + 2 * WALL_THICKNESS)-SUPPORT_MARGIN*2, (PCB_HEIGHT + 2 * WALL_THICKNESS)-SUPPORT_MARGIN*2, (PCB_HEIGHT + 2 * WALL_THICKNESS)*sin(KEYBOARD_ANGLE)+KEYBOARD_OFFSET], center=false, $fn=24);
		}

		translate([0, 0, (PCB_HEIGHT + 2 * WALL_THICKNESS)*sin(KEYBOARD_ANGLE)+KEYBOARD_OFFSET])
		rotate(KEYBOARD_ANGLE, [-1, 0, 0])
		translate([-0.001, -(PCB_HEIGHT + 2 * WALL_THICKNESS)*11-0.001])
		cube([(PCB_WIDTH + 2 * WALL_THICKNESS)+0.002, (PCB_HEIGHT + 2 * WALL_THICKNESS)*22+0.002*222, (PCB_HEIGHT + 2 * WALL_THICKNESS)*sin(KEYBOARD_ANGLE)+20]);
	}
}

module usb() {
	if (USB_TURN) {
		translate([USB_OFFSET_X, -USB_OFFSET_Y+USB_CUTOUT_WIDTH/2, WALL_THICKNESS+0.1])
		translate([-0.001+WALL_THICKNESS*1.5, -USB_CUTOUT_WIDTH, 0])
		rotate(90, [0, 0, 1])
		cube([USB_CUTOUT_WIDTH, WALL_THICKNESS*4, USB_CUTOUT_HEIGHT]);
	} else {
		translate([USB_OFFSET_X-USB_CUTOUT_WIDTH/2, -USB_OFFSET_Y, WALL_THICKNESS+0.1])
		translate([0, -WALL_THICKNESS*1.5, 0])
		cube([USB_CUTOUT_WIDTH, WALL_THICKNESS*4, USB_CUTOUT_HEIGHT]);
	}
}

module case() {
	union() {
		translate([0, 0, (PCB_HEIGHT + 2 * WALL_THICKNESS)*sin(KEYBOARD_ANGLE)-0.001+KEYBOARD_OFFSET])
		rotate(KEYBOARD_ANGLE, [-1, 0, 0])
		translate([PCB_WIDTH+WALL_THICKNESS, WALL_THICKNESS, 0])
		rotate(180, [0, 0, 1])
		difference () {
			main_case();

			usb();
		}

		support();
	}
}

case();

