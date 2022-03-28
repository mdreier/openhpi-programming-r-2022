codeoceanR::rt_score()

# A1 ----
# Wieviele Zeichen gibt es in 'superkalifragilistischexpialigetisch'?
s <- 'superkalifragilistischexpialigetisch'
anzahlZeichen <- nchar(s)


# A2 ----
# Schreibe den obigen Spruch von Mary Poppins in Großbuchstaben.
spruchGross <- toupper(s)


# A3 ----
# Erhalte die Zeichen der Stellen 10 bis 22.
spruchTeil <- substr(s, start="10", stop="22")


# A4 ----
# Erstelle einen Vektor mit "Buchstabe_A", "Buchstabe_B", ... bis "Buchstabe_Z".
# Tipp: Siehe 2.2 Logik A7 :)
buchstaben <- paste("Buchstabe", LETTERS, sep="_")


# Mache weiter in "R23_Zeichenketten_2.R"
