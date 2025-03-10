# Aniboard - Anime themed keyboard

*Insert Final Product Picture*

Made by cyao: `@Cyao` on slack, github.com/cheyao

Features:
- 88x keys!
- Morally correct Alt, Command, Control layout
- 0.91" OLED for your favourite pictures
- 88x Neopixels capable of eating 5.28A! Portable hand warmer :3
- Optional triple USB power input to feed all the hungry neopixels.
- Cute anime silkscreens! (Open PCB in KiCAD and zoom out to find a easter egg :3)
- Adaptive power MUXing and overcurrent fail safes
- Multiple fail safes, optional solder bridge configs
- Super compact design
- Self define tilt (Go edit in `CAD/constants.scad` and regenerate)
- Employes metal electrode leadless face technology to ensure high-reliability and precision with predictable characteristics
- High accuracy, long-term stability, moisture resistance, high-temperature resistance
- Made with precise Hot Air solder reflow technology
- KMK firmware, live edit your keymaps

## PCB 

The PCB's size is 355x120mm

| Schematic |
| - |
| ![](https://hc-cdn.hel1.your-objectstorage.com/s/v3/09d90ffa24aed77b1ae56afef70530dee7fdacdb_image.png) |

| Two sides |
| - |
| ![](https://hc-cdn.hel1.your-objectstorage.com/s/v3/2ae59847a65c4f448d295430f29034cd0e29b193_image.png) |

| Front |
| - |
| ![](https://hc-cdn.hel1.your-objectstorage.com/s/v3/1ebfd98ae70e31802d3d6c18383500e4204dd31c_image.png) |

| Back |
| - |
| ![](https://hc-cdn.hel1.your-objectstorage.com/s/v3/09d90ffa24aed77b1ae56afef70530dee7fdacdb_image.png) |

3D render pictures:

![](https://cloud-oeefxhuld-hack-club-bot.vercel.app/0image.png)
![](https://cloud-kce8onab7-hack-club-bot.vercel.app/0image.png)
![](https://cloud-mvfukuv6n-hack-club-bot.vercel.app/6image.png)
![](https://cloud-5pcsstpbq-hack-club-bot.vercel.app/0image.png)

## Case

![](https://hc-cdn.hel1.your-objectstorage.com/s/v3/9c0b47d453868a2126a5fb956b4d0c169e8a88f4_image.png)

The case v1 is fully parametric and made with OpenSCAD, allowed me to make a online case generator. Link after the YSWS ends.

V2 is made with freecad, and is of top mount style.

I chose to not add any engraving since it will look bad. I would want to print my case In school with ams and custom colored fillament when I buy some new fillament. (I need hq to print my case in white for the moment)

## BOM

These were old prices for aliexpress, see bottom for lcsc prices (better)

| Name                             | Qty | Price (EUR) |
| -------------------------------- | --- | ----------- |
| JWK Cupid Switch                 | 88  | 36.60/w ship|
| 2u MX stabilizor                 | 1   | 27.99       |
| 2.25u MX stabilizer              | 2   | ^           |
| 2.75u MX stabilizer              | 2   | ^           |
| 6.25u MX stabilizer              | 1   | ^           |
| 0.91" OLED SSD1306               | 1   | 1.75        |
| 0.1uf 0805 capacitors            | 92  | 1.20        |
| 4.7uf 0805 capacitors            | 3   | c           |
| 1uf   0805 capacitor             | 1   | c           |
| MiniMELF diodes                  | 88  | 00.73/100pc |
| 0603 GLED Vf2.1 30mA             | 4   | 0.49        |
| F Type USB C USB4135 Receptacles | 2   | 1.65        |
| SK6812MINI-E                     | 88  | 10.99/100pc |
| 470Ω 0805 resistor               | 5   | a           |
| 4.7kΩ 0805 resistor              | 4   | a           |
| 5.1kΩ 0805 resistor              | 4   | a           |
| TPS2116DRL                       | 2   | 4.08        |
| SN74LVC1T45DBVR                  | 1   | 2.65        |
| Orph/Raspberry Pi Pico           | 1   | High Seas   |
| Top (Preferably pink, else white "./production/top.stl") | 1 | Hack Club |
| Bot (Preferably pink, else white "./production/bottom.stl") | 1 | Hack Club |
| Plate (Preferably transparent, else white "./production/plate.stl")| 1 | Hack Club |
| Acrylic ("./production/acrylic.dxf") | 1 | Hack Club |
| M2 Heatset Inserts 4OD 4mm       | 24  | 1.80        |
| M2 Torx Thin Head Bolts 5mm      | 12  | 1.63        |
| M2 Torx Thin Head Bolts 5mm      | 12  | 2.30        |

Old:

| Total Price | PCB      | Switches | Fasteners | Keycaps | Stabilizers | Other     |
| ----------- | -------- | -------- | --------- | ------- | ----------- | --------- |
| ~120.00/ws  | 35.00/ws | 38.81/ws | 5.72/ns   | TODO    | 26.67/ns    | ~22.98/ws |

~The stabs are 22.38 USD so going to transfer 5$ to HQ.~ Done, https://hcb.hackclub.com/hackpad/donations - Chengyin Yao aka Cyao

~Uhh I think the TX are still over budget? Gonna figure something out.~ Found in budget TX!

Cupid: https://keygem.com/products/cupid-switch-group-buy-10pcs?variant=44806087770380

## Notes:

This got me 60h on cafe :sob:

