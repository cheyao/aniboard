// Units: mm
// Copyright: @Cyao 2025

include <BOSL/constants.scad>
use <BOSL/shapes.scad>
include <common.scad>

module main_body() {
	difference() {
		translate([-WALL_THICKNESS, -PCB_HEIGHT-WALL_THICKNESS, 0])
		cuboid([PCB_WIDTH+WALL_THICKNESS*2, PCB_HEIGHT+WALL_THICKNESS*2, WALL_THICKNESS+PLATE_TO_BOTTOM], 
		       fillet=5, edges=EDGE_FR_RT+EDGE_BK_RT+EDGE_FR_LF+EDGE_BK_LF, center=false, $fn=24);

		translate([0, -PCB_HEIGHT, WALL_THICKNESS])
		if (PCB_ROUNDED) {
			cuboid([PCB_WIDTH, PCB_HEIGHT, PLATE_TO_BOTTOM+0.001], fillet=PCB_FILLET_RADIUS, 
			       edges=EDGE_FR_RT+EDGE_BK_RT+EDGE_FR_LF+EDGE_BK_LF, center=false, $fn=24);
		} else {
			cube([PCB_WIDTH, PCB_HEIGHT, PLATE_TO_BOTTOM+0.001]);
		}
	}
}

module screw_hole() {
	translate([0, 0, -2.5])
	cylinder(d=3.4, h=WALL_THICKNESS+PLATE_TO_BOTTOM+5, $fn=25);

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

module case() {
	main_case();
}

case();

