Der MendelMax soll mit einigen Modifikationen versehen werden:

* Nur 8mm Stahlwellen
* IGUS RJMP-01-08 Gleitlager: Diese sind größer als die LM8UU-Lager. 

Der Kunststoffsatz von RepRap-Fab setzt dies um, ist momentan jedoch
nicht verfügbar
(http://reprap-fab.org/shop/product_info.php?products_id=84). 

### Rahmen
Der Rahmen kommt vom MendelMax 1.0:

www.thingiverse.com/thing:12645

Hier sind einige Teile nicht verwendbar, da die Z-Achse z.B. 10mm
Durchmesser hat. Diese Teile werden entsprechend modifiziert. Der
MendelMax 1.5 hat die Schrittmotoren unten statt oben. Da der Rahmen
allerdings recht stabil sein wird, denke ich nicht, dass das
zusaetzliche Gewicht der Schrittmotoren ein Problem sein wird. Die
Konstruktion mit Schrittmotoren unten hat dagegen den Nachteil, dass die
Last der Achse auf den Schrittmotoren liegt. Mit den Teilen von Aleph
Objects wird der Motor oben angebracht und unten in eime 608zz-Lager
gefuehrt:

www.thingiverse.com/thing:15861
www.thingiverse.com/thing:14918

### X/Y/Z-Achse

Die X-Y-Z-Achse basiert auf den Teilen von Jonas Kühling. Um die
IGUS-Lager verwenden zu koennen muss die Definition der Lagerhalterungen
geaendert werden. Die Originale sind hier verfuegbar:

http://www.thingiverse.com/thing:18657
http://www.thingiverse.com/thing:18384
http://www.thingiverse.com/thing:16158
http://www.thingiverse.com/thing:19127

Die Teile muessen wie folgt geaendert werden:

* Aussendurchmesser: LM8UU 15mm -> RJMP 16mm
* Laenge: LM8UU 24mm -> RJMP 25mm

Beim Durchmesser hatte Kuehling 0.2mm mehr Luft gegeben - das uebertrage
ich so auf die RJMPs.

Unter

    mods/MD

sind die geaenderten Teile abgelegt.

### Weitere Teile

Die Endstops kommen von Aleph Objects:
http://www.thingiverse.com/thing:17729


## Zu druckende Teile

Die folgenden Teile müssen für den Mendelmax tatsächlich gedruckt
werden:

Offizielle MM1.0-Teile:
4x    LowerVertex_4_off.stl
4x    LowerVertex_Mittle_4_off.stl
4x    Top_Vertex_X_4_off.stl
2x    Top_Vertex_Y_2_off.stl
4x    Y_Rod_Clasp_4_off.stl
2x    Y_Rod_Mount_2_off.stl

Modifizierte Teile:
3x    endstop-3.stl
1x    x-flag_1.stl
1x    y-flag_1.stl
1x    z-flag_1.stl
1x    Y_Idler_DoubleB_1.stl
1x    Y_Motor_Mount_1.stl
2x    Lower_Z_Mount_2.stl
2x    Upper_Z_Mount_2.stl
4x    Z_Clamp_4.stl

1x    MD_x-carriage_rjmp0108_1.stl
1x    MD_x-ends_threadedrod-motor_1.stl
1x    MD_x-ends_threadedrod-idler_1.stl
1x    MD_y-carriage_1.stl

Die Jigs im Verzeichnis Jigs drucke ich selbst.


