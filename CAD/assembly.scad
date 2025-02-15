use <case.scad>
use <plate.scad>
include <common.scad>

translate([0, cos(90-KEYBOARD_ANGLE)*(WALL_THICKNESS+PCB_TO_BOTTOM + 1.6 + 5 - PLATE_THICKNESS), sin(90-KEYBOARD_ANGLE)*(WALL_THICKNESS+PCB_TO_BOTTOM + 1.6 + 5 - PLATE_THICKNESS)+sin(KEYBOARD_ANGLE)*(2*WALL_THICKNESS+PCB_HEIGHT)])
translate([PCB_WIDTH + 2 * WALL_THICKNESS, 0, 0])
rotate(-KEYBOARD_ANGLE, [1, 0, 0])
rotate(180, [0, 0, 1])
translate([WALL_THICKNESS, -WALL_THICKNESS, 0])
plate();

case();
