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

### Weitere Teile

Die Endstops kommen von Aleph Objects:
http://www.thingiverse.com/thing:17729

