codeoceanR::rt_score()
codeoceanR::rt_plot1()

# Wir werden wieder mit Random-Walk-Daten arbeiten:
set.seed(35) ; num <- cumsum(rnorm(500,sd=150)) - 159.6

# B5 ----
# Zeichne 'num' als Liniengrafik.
# tb5_start
plot(num, type = "l")
# tb5_ende


# B6 ----
# Berechne die Koordinaten des lokalen Minimums zwischen den Elementen 200 und 400.
lmx <- which(num == min(num[200:400]))
lmy <- min(num[200:400])
# Füge ein großes (6 Einheiten) Rautensymbol (Rhombus) an dieser Stelle ein,
# mit dickem (3) roten Rand, gefüllt mit halbtransparenter blauer Farbe (#0000FF77).

# tb6_start
points(x = lmx, y = lmy,
    pch = 23,
    cex = 6,
    lwd = 3,
    col = "red",
    bg = "#0000FF77")
# tb6_ende


# B7 ----
# Plotte 'num' mit einer logarithmischen Skala auf der y-Achse.
# Die Dokumentation erklärt das benötigte Argument.
# Verwende eine 2 Einheiten dicke seagreen Linie.
# Unterdrücke die y-Achse.
# 'plot' hat ein Argument, um Code auszuführen, bevor die Linie geplottet wird.
# Es heißt 'panel.first' und ist dokumentiert in   ?plot.default 
# Verwende berryFunctions::logAxis(2) für dieses Argument.
# tb7_start
plot(
    num,
    type = "l",
    log = "y",
    panel.first = berryFunctions::logAxis(2),
    col = "seagreen",
    lwd = 2,
    yaxt = "n"
)
# tb7_ende


# B8 ----
# Kopiere deine Lösung von oben.
# - Setze dann den Bereich der x-Achse auf 0 bis 80.
# - Unterdrücke die standardmäßige Bereichserweiterung von 4% auf der x-Achse.
# Schaue in der Hilfe von ?par nach, wie das gemacht werden kann. 
# (Oder in der 4.1 Zusatzfolie "Achsenbereich genau")
# tb8_start
plot(
    num,
    type = "l",
    log = "y",
    panel.first = berryFunctions::logAxis(2),
    col = "seagreen",
    lwd = 2,
    yaxt = "n",
    xlim = c(0, 80),
    xaxs = "i"
)
# tb8_ende


# B9 ----
# Erstelle das Schweiz-Diagramm aus Aufgabe 4.1 A1-5/B1 neu, jetzt mit den Legenden.


# Wenn du fertig bist, übermittle bitte deinen Punktestand an openHPI mit:
# codeoceanR::rt_submit()
codeoceanR::rt_plot2() 
