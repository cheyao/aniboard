// Units: mm
// Copyright: @Cyao 2025
// Common variables for the case

// NOTE: This requires you to have the MCU on the backplate
// NOTE: ALL VALUES ARE ABSOLUTE

include <BOSL/constants.scad>
use <BOSL/shapes.scad>

// --------------------------
// Constants area
// --------------------------

// KLE from https://kbplate.ai03.com/ and https://www.keyboard-layout-editor.com/
PLATE_FILE_NAME = "plate.dxf";

// How much do you want your keyboard to tilt?
KEYBOARD_ANGLE = 6;
// Offset a bit from the ground?
KEYBOARD_OFFSET = 0;

// Width of the PCB
PCB_ROUNDED = false;
PCB_FILLET_RADIUS = 5;
PCB_WIDTH = 355;
PCB_HEIGHT = 120;

// X and Y offset the the MIDDLE of the USB port from the TOP LEFT of the board
USB_OFFSET_X = 354.97;
USB_OFFSET_Y = 11.71;
// False means your usb is at the top/bottom of the case, true means left/right
USB_TURN = true;

// Offset of your keys from the top left of the board
KEY_OFFSET_X = 4.119;
KEY_OFFSET_Y = 4.015;

// Total width of the keys
KEYS_WIDTH = 347.66;
KEYS_HEIGHT = 114.3;

// Thickness of the walls
WALL_THICKNESS = 7;

// Round top edges?
FILLET = false;
FILLET_RADIUS = 2;
CHAMFER = true;
CHAMFER_ANGLE = 22;
CHAMFER_AMMOUNT = 1.5;

// Round support edges?
SUPPORT_FILLET = true;
SUPPORT_FILLET_RADIUS = 5;
SUPPORT_CHAMFER = false;
SUPPORT_CHAMFER_AMMOUNT = 2;

// How much smaller the support is
SUPPORT_MARGIN = 8;

assert(!(CHAMFER && FILLET), "You can't activate fillet and chamfer at the same time!");
assert(!(SUPPORT_CHAMFER && SUPPORT_FILLET), "You can't activate fillet and chamfer at the same time!");

// OLED settings, the default is for a 0.91" OLED
// If you want your OLED to poke out, use the module size
OLED_HOLE = true;
OLED_WIDTH = 27;
OLED_HEIGHT = 11.5;
OLED_OFFSET_X = 300.9;
OLED_OFFSET_Y = 4.56;

// You prob wan't to leave it like this
TOP_EXTEND = 5;

// 2.9 for low flex, 4 for high flex
// distance from the bottom of the PCB to the case
PCB_TO_BOTTOM = 3.2;

// --------------------------
// Advanced area
// --------------------------

// Should be kept 1.5mm: https://cdn.shopify.com/s/files/1/0657/6075/5954/files/SPEC-CPG151101S21_Kailh_Red_Switch_b6770d67-8f51-48d9-9ec1-45442f4de278.pdf?v=1667196539
PLATE_THICKNESS = 1.5;
PCB_THICKNESS = 1.6;

// Cutout size for USB
USB_CUTOUT_WIDTH = 15;
USB_CUTOUT_HEIGHT = 7;

// --------------------------
// Don't touch - Common calculated variables
// --------------------------

// From the top of the plate to the inner edge of the case
TOTAL_INNER_HEIGHT = PCB_THICKNESS + PCB_TO_BOTTOM + 5;
TOTAL_WIDTH = PCB_WIDTH + 2 * WALL_THICKNESS;
TOTAL_HEIGHT = PCB_HEIGHT + 2 * WALL_THICKNESS;

PLATE_TO_BOTTOM = PCB_TO_BOTTOM + 1.6 + 5 - PLATE_THICKNESS;

