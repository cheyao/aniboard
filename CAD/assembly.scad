use <case.scad>
use <plate.scad>
include <common.scad>

translate([WALL_THICKNESS, cos(KEYBOARD_ANGLE)*TOTAL_HEIGHT+cos(90-KEYBOARD_ANGLE)*(WALL_THICKNESS+PLATE_TO_BOTTOM), sin(90-KEYBOARD_ANGLE)*(WALL_THICKNESS+PLATE_TO_BOTTOM)])
rotate(-KEYBOARD_ANGLE, [1, 0, 0])
translate([0, -WALL_THICKNESS, 0])
plate();

case();
