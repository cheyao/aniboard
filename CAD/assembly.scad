use <case.scad>
use <plate.scad>
include <common.scad>

translate([WALL_THICKNESS, cos(KEYBOARD_ANGLE)*(PCB_HEIGHT + 2 * WALL_THICKNESS)+cos(90-KEYBOARD_ANGLE)*(WALL_THICKNESS+PCB_TO_BOTTOM + 1.6 + 5 - PLATE_THICKNESS), sin(90-KEYBOARD_ANGLE)*(WALL_THICKNESS+PCB_TO_BOTTOM + 1.6 + 5 - PLATE_THICKNESS)])
rotate(-KEYBOARD_ANGLE, [1, 0, 0])
translate([0, -WALL_THICKNESS, 0])
plate();

case();
