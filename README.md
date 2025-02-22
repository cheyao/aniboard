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

## PCB 

The PCB's size is 355x120mm

| Schematic |
| - |
| ![](https://cloud-mvfukuv6n-hack-club-bot.vercel.app/1image.png) |

| Front |
| - |
| ![](https://cloud-mvfukuv6n-hack-club-bot.vercel.app/2image.png) |

| Back |
| - |
| ![](https://cloud-mvfukuv6n-hack-club-bot.vercel.app/3image.png) |

3D render pictures:

![](https://cloud-mvfukuv6n-hack-club-bot.vercel.app/4image.png)
![](https://cloud-mvfukuv6n-hack-club-bot.vercel.app/5image.png)
![](https://cloud-mvfukuv6n-hack-club-bot.vercel.app/6image.png)
![](https://cloud-5pcsstpbq-hack-club-bot.vercel.app/0image.png)

## Case

![](https://cloud-mvfukuv6n-hack-club-bot.vercel.app/0image.png)

The case is fully parametric and made with OpenSCAD, allowed me to make a online case generator. Link after the YSWS ends.

I chose to not add any engraving since it will look bad. I would want to print my case In school with ams and custom colored fillament when I buy some new fillament. (I need hq to print my case in white for the moment)

## BOM

| Name                             | Qty | Price (EUR) |
| -------------------------------- | --- | ----------- |
| JWK Cupid Switch                 | 88  | 36.60/w ship|
| 2u MX stabilizor                 | 1   | 21.39       |
| 2.25u MX stabilizer              | 2   | ^           |
| 2.75u MX stabilizer              | 2   | ^           |
| 6.25u MX stabilizer              | 1   | ^           |
| SK6812MINI-E                     | 88  | 10.99/100pc |
| MiniMELF diodes                  | 88  | 00.73/100pc |
| 0603 GLED Vf2.1 30mA             | 6   | 0.49        |
| 400pF 0402 capacitor             | 4   | 3.49 c      |
| 10nF 0402 capacitor              | 4   | c           |
| 0.1uf 0805 capacitors            | 90  | 1.20        |
| 0.1uf 0402 capacitors            | 4   | c           |
| 1uf 0805 capacitor (0402 sub)    | 1   | c           |
| 4.7uf capacitors                 | 3   | c           |
| 220Ω 0805 resistor               | 4   | 1.47 a      |
| 470Ω 0805 resistor               | 3   | a           |
| 4.7kΩ 0805 resistor              | 2   | a           |
| 4.7kΩ 0402 resistor              | 8   | 2.84 b      |
| 5.1kΩ 0805 resistor              | 4   | a           |
| 1kΩ 0402 resistor                | 4   | b           |
| 10kΩ 0402 resistor               | 10  | b           |
| 100kΩ 0402 resistor              | 4   | b           |
| 0.91" OLED SSD1306               | 1   | 1.75        |
| Orph/Raspberry Pi Pico           | 1   | High Seas   |
| F Type USB C USB4135 Receptacles | 2   | 1.65        |
| SN74LVC1T45DBVR                  | 1   | 2.65        |
| TPS259470ARPWR                   | 4   | 4.08        |
| Case (white "./production/case.stl") | 1 | Hack Club |
| Plate (white "./production/case.stl")| 1 | Hack Club |
| Acrylic ("./production/acrylic.dxf") | 1 | Hack Club |
| M3 Heatset inserts               | 4   | 2.11        |
| M3 Bolts                         | 4   | 2.42        |

| Total Price | PCB      | Switches | Fasteners | Keycaps | Stabilizers | Other   |
| ----------- | -------- | -------- | --------- | ------- | ----------- | ------- |
| ~118.23/ws  | 35.00/ws | 36.60/ws | 4.53/ns   | ???     | 21.39/ns    | 35.5/ns |

The stabs are 22.38 USD so going to transfer 5$ to HQ.

Cupid: https://keygem.com/products/cupid-switch-group-buy-10pcs?variant=44806087770380

## Notes:
This got me 60h on cafe :sob:

