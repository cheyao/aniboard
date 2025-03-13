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
| ![](https://hc-cdn.hel1.your-objectstorage.com/s/v3/7086031d2e1673942ba96f7d15b3926c1fe56514_image.png) |

| Two sides |
| - |
| ![](https://hc-cdn.hel1.your-objectstorage.com/s/v3/719b5b19e3c723a87c6afca3c2e19ae891ebd4b1_image.png) |

| Front |
| - |
| ![](https://hc-cdn.hel1.your-objectstorage.com/s/v3/b40619f6595407ab66a610c5e2f9a224efed5149_image.png) |

| Back |
| - |
| ![](https://hc-cdn.hel1.your-objectstorage.com/s/v3/42cc6e4673064bc51a2fabf5e8a4c8ca744c256b_image.png) |

3D render pictures:

![](https://cloud-oeefxhuld-hack-club-bot.vercel.app/0image.png)
![](https://cloud-kce8onab7-hack-club-bot.vercel.app/0image.png)
![](https://cloud-mvfukuv6n-hack-club-bot.vercel.app/6image.png)
![](https://cloud-5pcsstpbq-hack-club-bot.vercel.app/0image.png)

## Case

![](https://hc-cdn.hel1.your-objectstorage.com/s/v3/7c8fa4735b76d297e6a9e97e1f1f4ab40246be63_image.png)

The case v1 is fully parametric and made with OpenSCAD, allowed me to make a online case generator. Link after the YSWS ends.

V2 is made with freecad, and is of top mount style.

I chose to not add any engraving since it will look bad. I would want to print my case In school with ams and custom colored fillament when I buy some new fillament. (I need hq to print my case in white for the moment)

## BOM

These were old prices for aliexpress, see bottom for lcsc prices (better)

| Name                             | Qty | Price (EUR) |
| -------------------------------- | --- | ----------- |
| 0.91" OLED SSD1306               | 1   | |
| 0.1uf 0805 capacitors            | 90  | |
| 4.7uf 0805 capacitors            | 3   | |
| 1uf   0805 capacitor             | 3   | |
| MiniMELF diodes                  | 88  | |
| 0603 GLED Vf2.1 30mA             | 7   | |
| USB-C Receptacles                | 2   | |
| SK6812MINI-E                     | 88  | |
| 470Ω 0805 resistor               | 5   | |
| 4.7kΩ 0805 resistor              | 5   | |
| 5.1kΩ 0805 resistor              | 4   | |
| 10kΩ 0805 resistor               | 2   | |
| 1kΩ 0805 resistor                | 2   | |
| 200Ω 0805 resistor               | 3   | |
| TPS2116DRL                       | 2   | |
| SN74LVC1T45DBVR                  | 1   | |
| CH224K                           | 2   | |
| ESP12-E                          | 1   | |
| Orph/Raspberry Pi Pico           | 1   | High Seas   |
| Case (Preferably pink, else white "./production/case.3mf") | 1 | Me |
| Acrylic ("./production/acrylic.dxf") | 1 | Hack Club |
| M2 Heatset Inserts 4OD 4mm       | 28  | 1.74        |
| M2 Torx Thin Head Bolts 5mm 14mm | 16  | 2.08        |
| M2 Torx Thin Head Bolts 5mm 5mm  | 12  | 1.62        |
| JWK Cupid Switch                 | 88  | 36.60/w ship|
| 2u MX stabilizor                 | 5   | 27.99 (20$ new member) |
| 6.25u MX stabilizer              | 1   | ^           |

Old:

| Total Price | PCB      | Switches | Fasteners | Keycaps  | Stabilizers | Other     |
| ----------- | -------- | -------- | --------- | -------- | ----------- | --------- |
| 120.63/ws   | 35.00/ws | 38.81/ws | 5.44/ns   | 21.79/ws | 19.59/ns    | ~24.03/ws |

Please add this grant to my High Seas Digikey grant! <3

~The stabs are 22.38 USD so going to transfer 5$ to HQ.~ Done, https://hcb.hackclub.com/hackpad/donations - Chengyin Yao aka Cyao

~Uhh I think the TX are still over budget? Gonna figure something out.~ Found in budget TX! Gonna abuse new member discount lol.

The LCSC cart might seem to have excess of some components, it's either: minimal quanitity, or at the end I could spend 2.7$ more to save 6$ so why not

Cupid: https://keygem.com/products/cupid-switch-group-buy-10pcs?variant=44806087770380

## Notes:

This got me 60h on cafe :sob:

