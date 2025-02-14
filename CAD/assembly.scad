use <case.scad>
use <plate.scad>
include <common.scad>

rotate(KEYBOARD_ANGLE, [1, 0, 0])
translate([WALL_THICKNESS, PCB_HEIGHT+WALL_THICKNESS, 0])
plate();
