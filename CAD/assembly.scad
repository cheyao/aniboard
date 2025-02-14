use <case.scad>
use <plate.scad>
include <common.scad>

translate([-TOTAL_WIDTH, -TOTAL_HEIGHT-0.9, WALL_THICKNESS+PLATE_TO_BOTTOM])
rotate(KEYBOARD_ANGLE, [1, 0, 0])
translate([WALL_THICKNESS, PCB_HEIGHT+WALL_THICKNESS, 0])
plate();

translate([0, 0, 0])
rotate(180, [0, 0, 1])
case();
