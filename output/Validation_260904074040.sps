* Encoding: UTF-8.
* Generated deterministically by Survey Programming AI.
* Source: (V1_R100696) Marktumfrage_CME_Veranstaltungsmarkt_revised.docx.
TITLE 'Umfrage: Format-Präferenzen und Trendentwicklung in der ärztlichen Fortbildung'.
* Project: Marktumfrage CME Veranstaltungsmarkt.


*===============================================================================.
* SECTION Block 0 - Screening: Block 0 - Screening.
*===============================================================================.

* Question S3.


* [ERROR] S3 darf nur einen der vorgesehenen Antwortcodes enthalten.
COMPUTE V_S3_INVALID_CODES = 0.
IF ((NOT MISSING(S3) AND NOT ANY(S3, '1', '2', '3'))) V_S3_INVALID_CODES = 1.



* [ERROR] Teilnehmende mit Antwort Nein werden unmittelbar ausgescreent.
COMPUTE V_S3_SCREENOUT = 0.
IF (S3 = '2') V_S3_SCREENOUT = 1.




* Question S4.


* [ERROR] S4 darf nur einen der vorgesehenen Antwortcodes enthalten.
COMPUTE V_S4_INVALID_CODES = 0.
IF ((NOT MISSING(S4) AND NOT ANY(S4, '1', '2'))) V_S4_INVALID_CODES = 1.



* [ERROR] Teilnehmende mit Antwort Nein werden unmittelbar ausgescreent.
COMPUTE V_S4_SCREENOUT = 0.
IF (S4 = '2') V_S4_SCREENOUT = 1.




* Question S1.


* [ERROR] S1 darf nur einen der elf vorgesehenen Antwortcodes enthalten.
COMPUTE V_S1_INVALID_CODES = 0.
IF ((NOT MISSING(S1) AND NOT ANY(S1, '1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11'))) V_S1_INVALID_CODES = 1.




* Question S2.


* [ERROR] S2 darf nur einen der vier vorgesehenen Antwortcodes enthalten.
COMPUTE V_S2_INVALID_CODES = 0.
IF ((NOT MISSING(S2) AND NOT ANY(S2, '1', '2', '3', '4'))) V_S2_INVALID_CODES = 1.





*===============================================================================.
* SECTION Block A - Status quo: Wie wird heute gesammelt: Block A - Status quo: Wie wird heute gesammelt.
*===============================================================================.

* Question A1.


* [ERROR] A1 darf nur die sechs vorgegebenen Formatcodes enthalten.
COMPUTE V_A1_INVALID_CODES = 0.
IF ((NOT MISSING(A1) AND NOT ANY(A1, '1', '2', '3', '4', '5', '6'))) V_A1_INVALID_CODES = 1.



* [ERROR] A1 wird als Mehrfachauswahl mit den vorgesehenen Formatvariablen geprüft.
!MULTI_A svar=A1.
COMPUTE V_A1_MULTIPLE_RESPONSE = 0.
IF ((NOT MISSING(A1_1) AND NOT ANY(A1_1, 0, 1)) OR (NOT MISSING(A1_2) AND NOT ANY(A1_2, 0, 1)) OR (NOT MISSING(A1_3) AND NOT ANY(A1_3, 0, 1)) OR (NOT MISSING(A1_4) AND NOT ANY(A1_4, 0, 1)) OR (NOT MISSING(A1_5) AND NOT ANY(A1_5, 0, 1)) OR (NOT MISSING(A1_6) AND NOT ANY(A1_6, 0, 1))) V_A1_MULTIPLE_RESPONSE = 1.




* Question A2.


* [ERROR] A2 darf nur einen der fünf vorgesehenen Anteilsbereiche enthalten.
COMPUTE V_A2_INVALID_CODES = 0.
IF ((NOT MISSING(A2) AND NOT ANY(A2, '1', '2', '3', '4', '5'))) V_A2_INVALID_CODES = 1.




* Question A3.


* [ERROR] A3 darf nur einen der fünf vorgesehenen Antwortcodes enthalten.
COMPUTE V_A3_INVALID_CODES = 0.
IF ((NOT MISSING(A3) AND NOT ANY(A3, '1', '2', '3', '4', '5'))) V_A3_INVALID_CODES = 1.





*===============================================================================.
* SECTION Block B - Präferenz (Kernblock): Block B - Präferenz (Kernblock).
*===============================================================================.

* Question B1.


* [ERROR] B1 darf nur eine der beiden vorgegebenen Präferenzen enthalten.
COMPUTE V_B1_INVALID_CODES = 0.
IF ((NOT MISSING(B1) AND NOT ANY(B1, '1', '2'))) V_B1_INVALID_CODES = 1.




* Question B2.


* [ERROR] B2 muss die vier Formate mit Rangwerten von 1 bis 4 abbilden.
!Rank_ALL_CHK svar=B2 rank=4.
COMPUTE V_B2_RANKING = 0.
IF ((NOT MISSING(B2_1) AND NOT RANGE(B2_1, 1, 4)) OR (NOT MISSING(B2_2) AND NOT RANGE(B2_2, 1, 4)) OR (NOT MISSING(B2_3) AND NOT RANGE(B2_3, 1, 4)) OR (NOT MISSING(B2_4) AND NOT RANGE(B2_4, 1, 4))) V_B2_RANKING = 1.





*===============================================================================.
* SECTION Block C - Die zwei gegenläufigen Kräfte: Block C - Die zwei gegenläufigen Kräfte.
*===============================================================================.

* Question C1.


* [ERROR] C1 darf nur die acht vorgegebenen Antwortcodes enthalten.
COMPUTE V_C1_INVALID_CODES = 0.
IF ((NOT MISSING(C1) AND NOT ANY(C1, '1', '2', '3', '4', '5', '6', '7', '8'))) V_C1_INVALID_CODES = 1.



* [ERROR] In C1 dürfen höchstens drei Antworten ausgewählt werden.
!MULTI_B svar=C1 ctr=3.
COMPUTE V_C1_MAXIMUM_SELECTIONS = 0.
IF (SUM(C1_1, C1_2, C1_3, C1_4, C1_5, C1_6, C1_7, C1_8) > 3) V_C1_MAXIMUM_SELECTIONS = 1.



* [ERROR] Die exklusive Antwort 'nichts davon' darf nicht gemeinsam mit anderen Antworten ausgewählt werden.
COMPUTE V_C1_EXCLUSIVE_ANSWERS = 0.
IF (SUM(C1_8) > 0 AND SUM(C1_1, C1_2, C1_3, C1_4, C1_5, C1_6, C1_7, C1_8) > 1) V_C1_EXCLUSIVE_ANSWERS = 1.




* Question C2.


* [ERROR] C2 darf nur die sechs vorgegebenen Antwortcodes enthalten.
COMPUTE V_C2_INVALID_CODES = 0.
IF ((NOT MISSING(C2) AND NOT ANY(C2, '1', '2', '3', '4', '5', '6'))) V_C2_INVALID_CODES = 1.



* [ERROR] In C2 dürfen höchstens zwei Antworten ausgewählt werden.
!MULTI_B svar=C2 ctr=2.
COMPUTE V_C2_MAXIMUM_SELECTIONS = 0.
IF (SUM(C2_1, C2_2, C2_3, C2_4, C2_5, C2_6) > 2) V_C2_MAXIMUM_SELECTIONS = 1.



* [ERROR] Die exklusive Antwort 'nichts davon' darf nicht gemeinsam mit anderen Antworten ausgewählt werden.
COMPUTE V_C2_EXCLUSIVE_ANSWERS = 0.
IF (SUM(C2_6) > 0 AND SUM(C2_1, C2_2, C2_3, C2_4, C2_5, C2_6) > 1) V_C2_EXCLUSIVE_ANSWERS = 1.





*===============================================================================.
* SECTION Block D - Zukunftserwartung (der Trend): Block D - Zukunftserwartung (der Trend).
*===============================================================================.

* Question D1.


* [ERROR] D1 darf nur einen der fünf vorgesehenen Entwicklungscodes enthalten.
COMPUTE V_D1_INVALID_CODES = 0.
IF ((NOT MISSING(D1) AND NOT ANY(D1, '1', '2', '3', '4', '5'))) V_D1_INVALID_CODES = 1.




* Question D2.


* [ERROR] D2 darf nur einen der fünf vorgesehenen Entwicklungscodes enthalten.
COMPUTE V_D2_INVALID_CODES = 0.
IF ((NOT MISSING(D2) AND NOT ANY(D2, '1', '2', '3', '4', '5'))) V_D2_INVALID_CODES = 1.




* Question D3.


* [ERROR] D3 darf nur die sechs vorgegebenen Antwortcodes enthalten.
COMPUTE V_D3_INVALID_CODES = 0.
IF ((NOT MISSING(D3) AND NOT ANY(D3, '1', '2', '3', '4', '5', '6'))) V_D3_INVALID_CODES = 1.



* [ERROR] In D3 dürfen höchstens drei Antworten ausgewählt werden.
!MULTI_B svar=D3 ctr=3.
COMPUTE V_D3_MAXIMUM_SELECTIONS = 0.
IF (SUM(D3_1, D3_2, D3_3, D3_4, D3_5, D3_6) > 3) V_D3_MAXIMUM_SELECTIONS = 1.



* [ERROR] Die exklusive Antwort 'nichts davon' darf nicht gemeinsam mit anderen Antworten ausgewählt werden.
COMPUTE V_D3_EXCLUSIVE_ANSWERS = 0.
IF (SUM(D3_6) > 0 AND SUM(D3_1, D3_2, D3_3, D3_4, D3_5, D3_6) > 1) V_D3_EXCLUSIVE_ANSWERS = 1.




* Question D4.


* [ERROR] D4 darf nur die Ratingcodes 1 bis 5 enthalten.
COMPUTE V_D4_INVALID_CODES = 0.
IF ((NOT MISSING(D4) AND NOT ANY(D4, '1', '2', '3', '4', '5'))) V_D4_INVALID_CODES = 1.



* [ERROR] Die Bewertung in D4 muss innerhalb der Skala 1 bis 5 liegen.
!Numeric svar=D4 min='1' max='5'.
COMPUTE V_D4_NUMERIC_RANGE = 0.
IF ((NOT MISSING(D4) AND NOT ANY(D4, 1, 2, 3, 4, 5))) V_D4_NUMERIC_RANGE = 1.





*===============================================================================.
* SECTION Block E - Auswahl & Anbieter: Block E - Auswahl & Anbieter.
*===============================================================================.

* Question E1.


* [ERROR] E1 muss die Auswahl als Top-3-Ranking mit Rangwerten von 1 bis 3 abbilden.
!Rank_ALL_CHK svar=E1 rank=3.
COMPUTE V_E1_RANKING = 0.
IF ((NOT MISSING(E1_1) AND NOT RANGE(E1_1, 1, 3)) OR (NOT MISSING(E1_2) AND NOT RANGE(E1_2, 1, 3)) OR (NOT MISSING(E1_3) AND NOT RANGE(E1_3, 1, 3)) OR (NOT MISSING(E1_4) AND NOT RANGE(E1_4, 1, 3)) OR (NOT MISSING(E1_5) AND NOT RANGE(E1_5, 1, 3)) OR (NOT MISSING(E1_6) AND NOT RANGE(E1_6, 1, 3)) OR (NOT MISSING(E1_7) AND NOT RANGE(E1_7, 1, 3))) V_E1_RANKING = 1.




* Question E2.


* [ERROR] E2 darf nur einen der vier vorgesehenen Antwortcodes enthalten.
COMPUTE V_E2_INVALID_CODES = 0.
IF ((NOT MISSING(E2) AND NOT ANY(E2, '1', '2', '3', '4'))) V_E2_INVALID_CODES = 1.




* Question E3.


* [WARNING] E3 ist als offene Texteingabe zu prüfen.
COMPUTE V_E3_OPEN_END = 0.
IF (MISSING(E3)) V_E3_OPEN_END = 1.





*===============================================================================.
* SECTION Block F – Klassifikation: Block F – Klassifikation.
*===============================================================================.

* Question F1.


* [ERROR] F1 darf nur einen der fünf vorgesehenen Altersgruppencodes enthalten.
COMPUTE V_F1_INVALID_CODES = 0.
IF ((NOT MISSING(F1) AND NOT ANY(F1, '1', '2', '3', '4', '5'))) V_F1_INVALID_CODES = 1.




* Question F2.


* [ERROR] F2 darf nur einen der drei vorgesehenen Ländercodes enthalten.
COMPUTE V_F2_INVALID_CODES = 0.
IF ((NOT MISSING(F2) AND NOT ANY(F2, '1', '2', '3'))) V_F2_INVALID_CODES = 1.




* Question F3.


* [ERROR] F3 darf nur einen der vier vorgesehenen Berufserfahrungscodes enthalten.
COMPUTE V_F3_INVALID_CODES = 0.
IF ((NOT MISSING(F3) AND NOT ANY(F3, '1', '2', '3', '4'))) V_F3_INVALID_CODES = 1.





*===============================================================================.
* FINAL VALIDATION SUMMARY.
*===============================================================================.
COMPUTE VALIDATION_OVERALL = MAX(V_S3_INVALID_CODES, V_S3_SCREENOUT, V_S4_INVALID_CODES, V_S4_SCREENOUT, V_S1_INVALID_CODES, V_S2_INVALID_CODES, V_A1_INVALID_CODES, V_A1_MULTIPLE_RESPONSE, V_A2_INVALID_CODES, V_A3_INVALID_CODES, V_B1_INVALID_CODES, V_B2_RANKING, V_C1_INVALID_CODES, V_C1_MAXIMUM_SELECTIONS, V_C1_EXCLUSIVE_ANSWERS, V_C2_INVALID_CODES, V_C2_MAXIMUM_SELECTIONS, V_C2_EXCLUSIVE_ANSWERS, V_D1_INVALID_CODES, V_D2_INVALID_CODES, V_D3_INVALID_CODES, V_D3_MAXIMUM_SELECTIONS, V_D3_EXCLUSIVE_ANSWERS, V_D4_INVALID_CODES, V_D4_NUMERIC_RANGE, V_E1_RANKING, V_E2_INVALID_CODES, V_E3_OPEN_END, V_F1_INVALID_CODES, V_F2_INVALID_CODES, V_F3_INVALID_CODES).
FREQUENCIES VARIABLES=V_S3_INVALID_CODES V_S3_SCREENOUT V_S4_INVALID_CODES V_S4_SCREENOUT V_S1_INVALID_CODES V_S2_INVALID_CODES V_A1_INVALID_CODES V_A1_MULTIPLE_RESPONSE V_A2_INVALID_CODES V_A3_INVALID_CODES V_B1_INVALID_CODES V_B2_RANKING V_C1_INVALID_CODES V_C1_MAXIMUM_SELECTIONS V_C1_EXCLUSIVE_ANSWERS V_C2_INVALID_CODES V_C2_MAXIMUM_SELECTIONS V_C2_EXCLUSIVE_ANSWERS V_D1_INVALID_CODES V_D2_INVALID_CODES V_D3_INVALID_CODES V_D3_MAXIMUM_SELECTIONS V_D3_EXCLUSIVE_ANSWERS V_D4_INVALID_CODES V_D4_NUMERIC_RANGE V_E1_RANKING V_E2_INVALID_CODES V_E3_OPEN_END V_F1_INVALID_CODES V_F2_INVALID_CODES V_F3_INVALID_CODES VALIDATION_OVERALL.

* MODEL WARNINGS.
* Für die Rankingfragen B2 und E1 ist keine separate Prüfung auf doppelte Rangwerte aufgenommen, da die kanonischen Variablen keine expliziten Optionsvariablen ausweisen und keine zusätzlichen Variablennamen erfunden werden dürfen.


EXECUTE.
