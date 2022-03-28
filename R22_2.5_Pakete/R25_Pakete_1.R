codeoceanR::rt_score()

# A1 ----
# Die Funktion zum Herunterladen und Einrichten externer Pakete speichert diese
# lokal auf dem Rechner. Das Argument `lib` setzt dafür den Ordner (Pfad).
# Standardmäßig (by default) wählt R einen Ordner dafür aus.
# Lese in der Dokumentation (Hilfe) der Installierfunktion die Erklärung zu lib.
# Wie heißt die Funktion, deren erster Ausgabewert den Pfad setzt?
funktionsName <- "nameDerFunktion"


# A2 ----
# Prüfe, ob das Paket 'parallel' verfügbar und verwendbar ist.
# t2_start

# t2_ende


# A3 ----
# Wann ist    library(pack) ; packfun(x)    besser als     pack::packfun(x)   ?
# Mehrfachnennung ist möglich (als Vektor).
# Dies ist eine der ganz wenigen Fragen mit einem gewissen Meinungsspielraum.
# Diskutiere gerne im Forum, ob die akzeptierte Lösung deiner Meinung entspricht :)
# https://open.hpi.de/courses/programmieren-r2022/question/b9b43226-7f15-4eba-b460-772f98ff7e33

# 1. Für Menschen soll klar sein, aus welchem Paket die Funktion verwendet wird.
# 2. Es existiert kein anderes CRAN Paket mit einer gleichnamigen Funktion.
# 3. Mehrere Funktionen aus dem Paket werden verwendet.
# 4. Im Skript werden viele Funktionen aus vielen Paketen verwendet.
# 5. Der Paketname ist sehr lang und soll nicht mehrfach im Code ausgeschrieben werden.
# 6. Die library Aufrufe am Skriptanfang machen klar, welche Pakete benötigt werden.
paketSyntax <- 0


# A4 ----
# Schau dir den Quellcode von 'sample' an.
# Welche Funktion ruft diese für die eigentliche Ausführung auf?
sampleFunktion <- "NameDerFunktion"


# A5 ----
# Schau dir den Quellcode von 'library' auf github an.
# Ab welcher Zeile wird die Funktion selbst definiert?
# Generiere den Direktlink, indem du auf die Zeilennummer klickst und die Adresse kopierst.
libraryURL <- "LinkZurZeile"


# Wenn du fertig bist, übermittle bitte deinen Punktestand an openHPI mit:
# codeoceanR::rt_submit()
