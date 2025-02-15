# Cyao macropad firmware
# Rev 1.1
# Copyright 2024
# Licensed under zlib license
import board
import busio
import time
import board
from rainbowio import colorwheel

from kmk.kmk_keyboard import KMKKeyboard
from kmk.keys import KC
from kmk.scanners import DiodeOrientation
from kmk.modules.macros import Macros
from kmk.extensions.display import Display, TextEntry, ImageEntry
from kmk.extensions.display.ssd1306 import SSD1306
from kmk.extensions.RGB import RGB
from kmk.extensions.rgb import AnimationModes
from kmk.extensions.media_keys import MediaKeys

LED_PIN = board.D10;

bus = busio.I2C(board.SCL, board.SDA);
driver = SSD1306(i2c=bus, device_address=0x3C);
display = Display(
    display=driver,
    width=128,
    height=64,
    dim_time=10,
    dim_target=0.2,
    off_time=1200,
    brightness=0.7
);
display.entries = [
    ImageEntry(image="pic.bmp", x=0, y=0),
];

keyboard = KMKKeyboard();

macros = Macros();
keyboard.modules.append(macros);
keyboard.extensions.append(display);
keyboard.extensions.append(MediaKeys())

keyboard.col_pins = (board.D16, board.D17, board.D18, board.D19, board.D20, board.D21, board.D22, board.D26, board.D27, board.D11, board.D12, board.D13, board.D14, board.D10, board.D9, board.D8, board.D3);
keyboard.row_pins = (board.D15, board.D2, board.D1, board.D0, board.D7, board.D6);
keyboard.diode_orientation = DiodeOrientation.COL2ROW;

rgb = RGB(pixel_pin=board.D28, num_pixels=4, animation_speed=1, animation_mode=AnimationModes.SWIRL, val_default=30, val_limit=40)
keyboard.extensions.append(rgb)

from kmk.modules.macros import Press, Release, Tap, Delay
from kmk.modules.mouse_keys import MouseKeys
keyboard.modules.append(MouseKeys())

keyboard.keymap = [
    [
        KC.ESC , KC.MUTE, KC.VOLD, KC.VOLU, KC.MPRV, KC.MSTP, KC.MNXT, KC.BRID, KC.BRIU, KC.NO  , KC.NO  , KC.NO  , KC.NO  , KC.DEL ,
        KC.GRV , KC.N1  , KC.N2  , KC.N3  , KC.N4  , KC.N5  , KC.N6  , KC.N7  , KC.N8  , KC.N9  , KC.N0  , KC.MINS, KC.EQL , KC.BSPC,
    ],
];

if __name__ == '__main__':
    keyboard.go();

