# URL-Weiterleitung

Ich hoste https://mcpostleipzig.de auf Github Pages.  Dabei gibt
es ein paar zu lösende Probleme:

- https://www.mcpostleipzig.de soll ein Alias oder eine Umleitung
  oder was auch immer nach https://mcpostleipzig.de sein.
  Aus irgendwelchen Gründen funktioniert das nur über http aber
  nicht über https.  Ich habe den entsprechenden CNAME Eintrag im
  DNS vorgenommen, so wie es die Github Pages Dokumentation verlangt.
  Geht trotzdem nicht.
- https://mc-post-leipzig.de und https://www.mc-post-leipzig.de
  sollen auch entsprechende Aliase oder Umleitungen nach
  https://mcpostleipzig.de sein.
- Der Alias bzw. die Umleitung soll nicht nur mit dem Toplevel-Pfad
  funktionieren, sondern auch mit beliebigen URL-Pfaden.

Als Lösung habe ich eine minimale Elm-Anwendung gebaut, die den
`window.location.pathname` ausliest und zum gleichen Pfad auf der
Website https://mcpostleipzig.de weiterleitet.

(Hätte man das auch mit ein paar Zeilen Javascript machen können?
Ja.)

Ein wichtiger Baustein dabei ist, dass man in Github Pages die Datei
404.html als catch-all Pfadziel für fehlende URL-Pfade verwenden
kann.  Der einzige Nachteil, den das hat, ist dass der Client
trotz der funktionierenden Umleitung zunächst einen Statuscode
404 erhält.  Das ist vermutlich nicht besonders SEO-freundlich,
aber eine bessere Lösung sehe ich nicht und immerhin funktioniert
die Umleitung tadellos.
