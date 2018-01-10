---
title: Funktionen in **R**
subtitle: Ein Einstieg an der 
  Forstlichen Versuchs- und Forschungsanstalt Baden-W&uuml;rttemberg.
author: Dominik Cullmann
output:
   html_document
---

# Funktionen in R

## Was sind Funktionen?

* Funktionen sind Programmkonstrukte, mit denen Du Teile des von Dir geschriebenen Codes wiederverwenden kannst
(Siehe [Wikipedia](https://de.wikipedia.org/wiki/Funktion_(Programmierung))).
* R-Funktionen kennst Du wahrscheinlich schon: `sum()`, `mean()`, `summary()`


## Warum Funktionen?

* Damit Du Teile des von Dir geschriebenen Codes wiederverwenden kannst.
* Dann musst Du, wenn Du Fehler im Code entdeckst, diesen auch nur an einer Stelle korrigieren.

### Wann?
Immer wenn Du merkst, dass Du (alten) Code mehrfach kopierst und an anderer Stelle einf&uuml;gst und ihn kaum ver&auml;nderst, solltest Du dar&uuml;ber nachdenken, eine Funktion (oder mehrere) daraus zu machen. 

# Praxis 

## Eine Summenfunktion f&uuml;r R

### Warum wir diese Funktion nicht schreiben sollten

Eine Summenfunktion gibt es wahrscheinlich in jeder Programmiersprache, in **R** hei&szlig;t sie `sum()`. Diese Funktion ist besser, stabiler und schneller, als alles, das wir selbst programmieren k&ouml;nnen.

### Warum wir es trotzdem tun

Ich habe die Summenberechnung ausf&uuml;hrlich als Beispiel zur Schleifenprogrammierung in 
[Programmieren in R](https://fvafrcu.github.io/programmieren_in_r/#gute-schleifen) benutzt.

## Ein Codest&uuml;ck


```r
a  <- c(2, 3, 4, 10)
value <- 0
for (a_i in a) {
    value <- value + a_i 
}
print(value)
```

```
## [1] 19
```
