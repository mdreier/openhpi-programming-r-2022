codeoceanR::rt_score()

person <-     c("Alex","Bela","Chris","Dora","Emil","Fine","Gabi","Hans","Ines")
augenfarbe <- c("grau","grün","blau","braun","grau","blau","grau","grün","grau")
einkommen <-  c(  2300,   500,  1500,    700,   900,  2000,  3400,  1500,  600)

# A1 ----
# Konvertiere "Augenfarbe", um den richtigen Datentyp für Kategorien zu verwenden.
# Hinweis: das objekt selbst muss verändert werden, also das Ergebnis der
# Konvertierungsfunktion soll zugewiesen werden. 
# Objekte können dafür einfach überschrieben werden, siehe Lektion 1.1 Folie Zuweisung (assignment)
augenfarbe <- factor(augenfarbe)

# A2 ----
# Welche Augenfarben kommen wie oft vor?
tabelleAugen <- table(augenfarbe)


# A3 ----
# Was ist das mittlere Einkommen (mean) pro Augenfarbe?
farbeEinkommen <- tapply(einkommen, augenfarbe, mean)


# A4 ----
mehraugen <- c(augenfarbe, factor("nussbraun"))
# Füge dem Vektor 'mehraugen' einen Eintrag "nussbraun" an.
# Hinweis: Falls du vektor_mit_factors[42] <- "neue Kategorie" verwenden möchtest,
# füge zuerst dem Faktor das neue Level hinzu.
# Du kannst aber auch einfach 'c' verwenden :)



# Im (dir unsichtbaren) Testskript werden Funktionen immer mit mehreren Eingaben getestet.
# Solltest du eine Testmeldung nicht nachvollziehen können,
# kopiere das Beispiel und probiere es im Skript selbst mal aus.
# Verwende innerhalb der Funktion keine Objekte aus dem globalen Environment.
# Siehe Nachtrag unter https://open.hpi.de/courses/programmieren-r2022/question/97cf13bf-5e81-4aa5-bbb3-b2cffa64d549


# A5 ----
# Welche Personen haben die häufigste Augenfarbe?
# Hint: eine Häufigkeitstabelle hat Namen, die mit `names()` erhalten werden können.
# Diese bleiben erhalten, wenn der Index des Maximums ermittelt wird.
personenMitFarbe <- function(namen, farben) {
    haeufigsteFarbe <- names(which.max(table(farben)))
    namen[farben == haeufigsteFarbe]
}
personenMitFarbe(person, augenfarbe) # Alex, Emil, Gabi, Ines


# A6 -----
# Erhalte 'min', 'median', 'mean' sowie 'max' Einkommen pro Farbe.
# Die Ausgabe soll aussehen wie bei 'nchar' in den Folien.
statistik <- function(x) c(min(x), median(x), mean(x), max(x))
mmmmEinkommen <- tapply(X = einkommen, INDEX = augenfarbe, FUN=statistik)
mmmmEinkommen
# $blau
#   1500   1750   1750   2000 
# $braun
#    700    700    700    700 
# $grau
#    600   1600   1800   3400 
# $grün
#   Min. Median   Mean   Max.    # Diese Namenszeilen sind optional, kommen in B1.
#    500   1000   1000   1500 



# B1 ----
# Unbewerteter Codegolf Bonus: Was ist die kürzeste Lösung für Aufgabe 6? 
# Leerzeichen werden nicht gezählt.
# tb_start
s <- function(x) c(min(x), median(x), mean(x), max(x))
mmmmEinkommenKurz <- tapply(einkommen, augenfarbe, s)
# tb_ende


# Wenn du fertig bist, übermittle bitte deinen Punktestand an openHPI mit:
# codeoceanR::rt_submit()
