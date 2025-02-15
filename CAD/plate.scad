// Units: mm
// Copyright: @Cyao 2025

include <BOSL/constants.scad>
use <BOSL/shapes.scad>
include <common.scad>

// TODO: Acrylic for OLED

module key_holes() {
	translate([KEY_OFFSET_X, -KEY_OFFSET_Y, 0])
	difference() {
		translate([0.001, -KEYS_HEIGHT+0.001, 0])
		square([KEYS_WIDTH-0.002, KEYS_HEIGHT-0.002]);

		import(file=PLATE_FILE_NAME);
	}
}


// Base of the plate with holes
module base() {
	difference() {
		translate([-WALL_THICKNESS, -PCB_HEIGHT-WALL_THICKNESS, 0])
		cuboid([PCB_WIDTH+WALL_THICKNESS*2, PCB_HEIGHT+WALL_THICKNESS*2, PLATE_THICKNESS], fillet=5, edges=EDGE_FR_RT+EDGE_BK_RT+EDGE_FR_LF+EDGE_BK_LF, center=false, $fn=24);

		translate([0, 0, -0.002])
		linear_extrude(height=PLATE_THICKNESS+0.004, convexity=60)
		key_holes();
	}
}

module chamfer() {
	translate([0, -(PCB_HEIGHT + 2 * WALL_THICKNESS)+WALL_THICKNESS, TOP_EXTEND+PLATE_THICKNESS-CHAMFER_AMMOUNT])
	rotate(CHAMFER_ANGLE, [1, 0, 0])
	translate([-WALL_THICKNESS-25, -40, 0])
	cube([(PCB_WIDTH + 2 * WALL_THICKNESS) + 50, 80, 10]);

	translate([0, WALL_THICKNESS, TOP_EXTEND+PLATE_THICKNESS-CHAMFER_AMMOUNT])
	rotate(CHAMFER_ANGLE, [-1, 0, 0])
	translate([-WALL_THICKNESS-25, -40, 0])
	cube([(PCB_WIDTH + 2 * WALL_THICKNESS) + 50, 80, 10]);

	translate([(PCB_WIDTH + 2 * WALL_THICKNESS)-WALL_THICKNESS, 0, TOP_EXTEND+PLATE_THICKNESS-CHAMFER_AMMOUNT])
	rotate(CHAMFER_ANGLE, [0, 1, 0])
	translate([-40, -(PCB_HEIGHT + 2 * WALL_THICKNESS)-25+WALL_THICKNESS, 0])
	cube([80, (PCB_HEIGHT + 2 * WALL_THICKNESS) + 50, 10]);

	translate([-WALL_THICKNESS, 0, TOP_EXTEND+PLATE_THICKNESS-CHAMFER_AMMOUNT])
	rotate(CHAMFER_ANGLE, [0, -1, 0])
	translate([-40, -(PCB_HEIGHT + 2 * WALL_THICKNESS)-25+WALL_THICKNESS, 0])
	cube([80, (PCB_HEIGHT + 2 * WALL_THICKNESS) + 50, 10]);
}

module fillet() {
	translate([-25, WALL_THICKNESS, TOP_EXTEND+PLATE_THICKNESS])
	interior_fillet(l=(PCB_WIDTH + 2 * WALL_THICKNESS) + 50, r=FILLET_RADIUS, orient=ORIENT_X_180, align=V_RIGHT, $fn=40);

	translate([0, -PCB_HEIGHT-WALL_THICKNESS, TOP_EXTEND+PLATE_THICKNESS])
	rotate(180, [0, 0, 1])
	translate([-(PCB_WIDTH + 2 * WALL_THICKNESS) - 25, 0, 0])
	interior_fillet(l=(PCB_WIDTH + 2 * WALL_THICKNESS) + 50, r=FILLET_RADIUS, orient=ORIENT_X_180, align=V_RIGHT, $fn=40);

	translate([-WALL_THICKNESS, -PCB_HEIGHT-WALL_THICKNESS-25, TOP_EXTEND+PLATE_THICKNESS])
	rotate(90, [0, 0, 1])
	interior_fillet(l=(PCB_HEIGHT + 2 * WALL_THICKNESS) + 50, r=FILLET_RADIUS, orient=ORIENT_X_180, align=V_RIGHT, $fn=40);

	translate([PCB_WIDTH+WALL_THICKNESS, 25+WALL_THICKNESS, TOP_EXTEND+PLATE_THICKNESS])
	rotate(270, [0, 0, 1])
	interior_fillet(l=(PCB_HEIGHT + 2 * WALL_THICKNESS) + 50, r=FILLET_RADIUS, orient=ORIENT_X_180, align=V_RIGHT, $fn=40);
}

module edge() {
	difference() {
		translate([-WALL_THICKNESS, -PCB_HEIGHT-WALL_THICKNESS, 0])
		cuboid([PCB_WIDTH+WALL_THICKNESS*2, PCB_HEIGHT+WALL_THICKNESS*2, TOP_EXTEND], fillet=5, edges=EDGE_FR_RT+EDGE_BK_RT+EDGE_FR_LF+EDGE_BK_LF, center=false, $fn=24);

		translate([KEY_OFFSET_X, -KEY_OFFSET_Y, 0])
		translate([0, 0, -0.002])
		linear_extrude(height=TOP_EXTEND+0.004, convexity=50)
		translate([-2, -KEYS_HEIGHT-2, 0])
		square([KEYS_WIDTH-0.002+4, KEYS_HEIGHT+4], center=false);

		if (CHAMFER) {
			translate([0, 0, -PLATE_THICKNESS])
			chamfer();
		}

		if (FILLET) {
			translate([0, 0, -PLATE_THICKNESS])
			fillet();
		}
	}
}

module main_body() {
	union() {
		base();

		translate([0, 0, PLATE_THICKNESS-0.001])
		edge();
	}
}

module oled_hole() {
	translate([OLED_OFFSET_X-0.2, -OLED_OFFSET_Y-OLED_HEIGHT+0.2, -40])
	cube([OLED_WIDTH+0.4, OLED_HEIGHT+0.4, 90]);
}

module insert() {
	cylinder(h=4.0001, d=4.7, $fn=10);
}

module plate() {
	difference() {
		main_body();

		translate([-WALL_THICKNESS/2+0.5, WALL_THICKNESS/2-0.5, -0.001])
		insert();

		translate([-WALL_THICKNESS/2+0.5, -WALL_THICKNESS/2+0.5-PCB_HEIGHT, -0.001])
		insert();

		translate([PCB_WIDTH+WALL_THICKNESS/2-0.5, WALL_THICKNESS/2-0.5, -0.001])
		insert();

		translate([PCB_WIDTH+WALL_THICKNESS/2-0.5, -WALL_THICKNESS/2+0.5-PCB_HEIGHT, -0.001])
		insert();

		oled_hole();
	}
}

plate();

