* Encoding: UTF-8.
* Generated deterministically by Survey Programming AI.
* Source: (V1_R100696) Marktumfrage_CME_Veranstaltungsmarkt_revised.docx.
TITLE 'Umfrage: Format-Präferenzen und Trendentwicklung in der ärztlichen Fortbildung'.
* Project: V1_R100696 Marktumfrage CME Veranstaltungsmarkt revised.


*===============================================================================.
* SECTION Block 0 - Screening: Block 0 - Screening.
*===============================================================================.

* Question S3.


* [ERROR] S3 darf nur gültige Antwortcodes enthalten.
COMPUTE V_S3_INVALID_CODES = 0.
IF ((NOT MISSING(S3) AND NOT ANY(S3, '1', '2', '3'))) V_S3_INVALID_CODES = 1.



* [ERROR] Bei der Antwort Nein wird die befragte Person aus der Befragung ausgeschlossen.
COMPUTE V_S3_SCREEN_OUT = 0.
IF (S3 = '2') V_S3_SCREEN_OUT = 1.




* Question S4.


* [ERROR] S4 darf nur gültige Antwortcodes enthalten.
COMPUTE V_S4_INVALID_CODES = 0.
IF ((NOT MISSING(S4) AND NOT ANY(S4, '1', '2'))) V_S4_INVALID_CODES = 1.



* [ERROR] Bei der Antwort Nein wird die befragte Person aus der Befragung ausgeschlossen.
COMPUTE V_S4_SCREEN_OUT = 0.
IF (S4 = '2') V_S4_SCREEN_OUT = 1.




* Question S1.


* [ERROR] S1 muss beantwortet werden.
COMPUTE V_S1_MANDATORY = 0.
IF (MISSING(S1)) V_S1_MANDATORY = 1.



* [ERROR] S1 darf nur gültige Antwortcodes enthalten.
COMPUTE V_S1_INVALID_CODES = 0.
IF ((NOT MISSING(S1) AND NOT ANY(S1, '1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11'))) V_S1_INVALID_CODES = 1.




* Question S2.


* [ERROR] S2 muss beantwortet werden.
COMPUTE V_S2_MANDATORY = 0.
IF (MISSING(S2)) V_S2_MANDATORY = 1.



* [ERROR] S2 darf nur gültige Antwortcodes enthalten.
COMPUTE V_S2_INVALID_CODES = 0.
IF ((NOT MISSING(S2) AND NOT ANY(S2, '1', '2', '3', '4'))) V_S2_INVALID_CODES = 1.





*===============================================================================.
* SECTION Block A - Status quo: Wie wird heute gesammelt: Block A - Status quo: Wie wird heute gesammelt.
*===============================================================================.

* Question A1.


* [ERROR] A1 muss beantwortet werden.
COMPUTE V_A1_MANDATORY = 0.
IF (MISSING(A1)) V_A1_MANDATORY = 1.



* [ERROR] A1 muss als Mehrfachauswahl mit den vorgesehenen Antwortvariablen geprüft werden.
COMPUTE V_A1_MULTIPLE_RESPONSE = 0.
IF ((NOT MISSING(A1_1) AND NOT ANY(A1_1, 0, 1)) OR (NOT MISSING(A1_2) AND NOT ANY(A1_2, 0, 1)) OR (NOT MISSING(A1_3) AND NOT ANY(A1_3, 0, 1)) OR (NOT MISSING(A1_4) AND NOT ANY(A1_4, 0, 1)) OR (NOT MISSING(A1_5) AND NOT ANY(A1_5, 0, 1)) OR (NOT MISSING(A1_6) AND NOT ANY(A1_6, 0, 1))) V_A1_MULTIPLE_RESPONSE = 1.




* Question A2.


* [ERROR] A2 muss beantwortet werden.
COMPUTE V_A2_MANDATORY = 0.
IF (MISSING(A2)) V_A2_MANDATORY = 1.



* [ERROR] A2 darf nur gültige Antwortcodes enthalten.
COMPUTE V_A2_INVALID_CODES = 0.
IF ((NOT MISSING(A2) AND NOT ANY(A2, '1', '2', '3', '4', '5'))) V_A2_INVALID_CODES = 1.




* Question A3.


* [ERROR] A3 muss beantwortet werden.
COMPUTE V_A3_MANDATORY = 0.
IF (MISSING(A3)) V_A3_MANDATORY = 1.



* [ERROR] A3 darf nur gültige Antwortcodes enthalten.
COMPUTE V_A3_INVALID_CODES = 0.
IF ((NOT MISSING(A3) AND NOT ANY(A3, '1', '2', '3', '4', '5'))) V_A3_INVALID_CODES = 1.





*===============================================================================.
* SECTION Block B - Präferenz (Kernblock): Block B - Präferenz (Kernblock).
*===============================================================================.

* Question B1.


* [ERROR] B1 als Forced Choice muss beantwortet werden.
COMPUTE V_B1_MANDATORY = 0.
IF (MISSING(B1)) V_B1_MANDATORY = 1.



* [ERROR] B1 darf nur gültige Antwortcodes enthalten.
COMPUTE V_B1_INVALID_CODES = 0.
IF ((NOT MISSING(B1) AND NOT ANY(B1, '1', '2'))) V_B1_INVALID_CODES = 1.




* Question B2.


* [ERROR] B2 muss beantwortet werden.
COMPUTE V_B2_MANDATORY = 0.
IF (MISSING(B2)) V_B2_MANDATORY = 1.



* [ERROR] B2 muss als Ranking mit Rangwerten bis 4 geprüft werden.
COMPUTE V_B2_RANKING = 0.
IF ((NOT MISSING(B2_1) AND NOT RANGE(B2_1, 1, 4)) OR (NOT MISSING(B2_2) AND NOT RANGE(B2_2, 1, 4)) OR (NOT MISSING(B2_3) AND NOT RANGE(B2_3, 1, 4)) OR (NOT MISSING(B2_4) AND NOT RANGE(B2_4, 1, 4))) V_B2_RANKING = 1.





*===============================================================================.
* SECTION Block C - Die zwei gegenläufigen Kräfte: Block C - Die zwei gegenläufigen Kräfte.
*===============================================================================.

* Question C1.


* [ERROR] C1 muss beantwortet werden.
COMPUTE V_C1_MANDATORY = 0.
IF (MISSING(C1)) V_C1_MANDATORY = 1.



* [ERROR] C1 muss als Mehrfachauswahl geprüft werden.
COMPUTE V_C1_MULTIPLE_RESPONSE = 0.
IF ((NOT MISSING(C1_1) AND NOT ANY(C1_1, 0, 1)) OR (NOT MISSING(C1_2) AND NOT ANY(C1_2, 0, 1)) OR (NOT MISSING(C1_3) AND NOT ANY(C1_3, 0, 1)) OR (NOT MISSING(C1_4) AND NOT ANY(C1_4, 0, 1)) OR (NOT MISSING(C1_5) AND NOT ANY(C1_5, 0, 1)) OR (NOT MISSING(C1_6) AND NOT ANY(C1_6, 0, 1)) OR (NOT MISSING(C1_7) AND NOT ANY(C1_7, 0, 1)) OR (NOT MISSING(C1_8) AND NOT ANY(C1_8, 0, 1))) V_C1_MULTIPLE_RESPONSE = 1.



* [ERROR] In C1 dürfen höchstens 3 Antworten ausgewählt werden.
COMPUTE V_C1_MAXIMUM_SELECTIONS = 0.
IF (SUM(C1_1, C1_2, C1_3, C1_4, C1_5, C1_6, C1_7, C1_8) > 3) V_C1_MAXIMUM_SELECTIONS = 1.



* [ERROR] Die exklusive Antwort „nichts davon“ darf nicht gemeinsam mit anderen Antworten ausgewählt werden.
COMPUTE V_C1_EXCLUSIVE_ANSWER = 0.
IF (SUM(C1_8) > 0 AND SUM(C1_1, C1_2, C1_3, C1_4, C1_5, C1_6, C1_7, C1_8) > 1) V_C1_EXCLUSIVE_ANSWER = 1.




* Question C2.


* [ERROR] C2 muss beantwortet werden.
COMPUTE V_C2_MANDATORY = 0.
IF (MISSING(C2)) V_C2_MANDATORY = 1.



* [ERROR] C2 muss als Mehrfachauswahl geprüft werden.
COMPUTE V_C2_MULTIPLE_RESPONSE = 0.
IF ((NOT MISSING(C2_1) AND NOT ANY(C2_1, 0, 1)) OR (NOT MISSING(C2_2) AND NOT ANY(C2_2, 0, 1)) OR (NOT MISSING(C2_3) AND NOT ANY(C2_3, 0, 1)) OR (NOT MISSING(C2_4) AND NOT ANY(C2_4, 0, 1)) OR (NOT MISSING(C2_5) AND NOT ANY(C2_5, 0, 1)) OR (NOT MISSING(C2_6) AND NOT ANY(C2_6, 0, 1))) V_C2_MULTIPLE_RESPONSE = 1.



* [ERROR] In C2 dürfen höchstens 2 Antworten ausgewählt werden.
COMPUTE V_C2_MAXIMUM_SELECTIONS = 0.
IF (SUM(C2_1, C2_2, C2_3, C2_4, C2_5, C2_6) > 2) V_C2_MAXIMUM_SELECTIONS = 1.



* [ERROR] Die exklusive Antwort „nichts davon“ darf nicht gemeinsam mit anderen Antworten ausgewählt werden.
COMPUTE V_C2_EXCLUSIVE_ANSWER = 0.
IF (SUM(C2_6) > 0 AND SUM(C2_1, C2_2, C2_3, C2_4, C2_5, C2_6) > 1) V_C2_EXCLUSIVE_ANSWER = 1.





*===============================================================================.
* SECTION Block D - Zukunftserwartung (der Trend): Block D - Zukunftserwartung (der Trend).
*===============================================================================.

* Question D1.


* [ERROR] D1 muss beantwortet werden.
COMPUTE V_D1_MANDATORY = 0.
IF (MISSING(D1)) V_D1_MANDATORY = 1.



* [ERROR] D1 darf nur gültige Antwortcodes enthalten.
COMPUTE V_D1_INVALID_CODES = 0.
IF ((NOT MISSING(D1) AND NOT ANY(D1, '1', '2', '3', '4', '5'))) V_D1_INVALID_CODES = 1.




* Question D2.


* [ERROR] D2 muss beantwortet werden.
COMPUTE V_D2_MANDATORY = 0.
IF (MISSING(D2)) V_D2_MANDATORY = 1.



* [ERROR] D2 darf nur gültige Antwortcodes enthalten.
COMPUTE V_D2_INVALID_CODES = 0.
IF ((NOT MISSING(D2) AND NOT ANY(D2, '1', '2', '3', '4', '5'))) V_D2_INVALID_CODES = 1.




* Question D3.


* [ERROR] D3 muss beantwortet werden.
COMPUTE V_D3_MANDATORY = 0.
IF (MISSING(D3)) V_D3_MANDATORY = 1.



* [ERROR] D3 muss als Mehrfachauswahl geprüft werden.
COMPUTE V_D3_MULTIPLE_RESPONSE = 0.
IF ((NOT MISSING(D3_1) AND NOT ANY(D3_1, 0, 1)) OR (NOT MISSING(D3_2) AND NOT ANY(D3_2, 0, 1)) OR (NOT MISSING(D3_3) AND NOT ANY(D3_3, 0, 1)) OR (NOT MISSING(D3_4) AND NOT ANY(D3_4, 0, 1)) OR (NOT MISSING(D3_5) AND NOT ANY(D3_5, 0, 1)) OR (NOT MISSING(D3_6) AND NOT ANY(D3_6, 0, 1))) V_D3_MULTIPLE_RESPONSE = 1.



* [ERROR] In D3 dürfen höchstens 3 Antworten ausgewählt werden.
COMPUTE V_D3_MAXIMUM_SELECTIONS = 0.
IF (SUM(D3_1, D3_2, D3_3, D3_4, D3_5, D3_6) > 3) V_D3_MAXIMUM_SELECTIONS = 1.



* [ERROR] Die exklusive Antwort „nichts davon“ darf nicht gemeinsam mit anderen Antworten ausgewählt werden.
COMPUTE V_D3_EXCLUSIVE_ANSWER = 0.
IF (SUM(D3_6) > 0 AND SUM(D3_1, D3_2, D3_3, D3_4, D3_5, D3_6) > 1) V_D3_EXCLUSIVE_ANSWER = 1.




* Question D4.


* [ERROR] D4 muss beantwortet werden.
COMPUTE V_D4_MANDATORY = 0.
IF (MISSING(D4)) V_D4_MANDATORY = 1.



* [ERROR] D4 darf nur die Ratingwerte 1 bis 5 enthalten.
COMPUTE V_D4_NUMERIC_RANGE = 0.
IF ((NOT MISSING(D4) AND NOT ANY(D4, '1', '2', '3', '4', '5'))) V_D4_NUMERIC_RANGE = 1.





*===============================================================================.
* SECTION Block E - Auswahl & Anbieter: Block E - Auswahl & Anbieter.
*===============================================================================.

* Question E1.


* [ERROR] E1 muss beantwortet werden.
COMPUTE V_E1_MANDATORY = 0.
IF (MISSING(E1)) V_E1_MANDATORY = 1.



* [ERROR] E1 muss als erzwungenes Top-3-Ranking mit Rangwerten bis 3 geprüft werden.
COMPUTE V_E1_RANKING = 0.
IF ((NOT MISSING(E1_1) AND NOT RANGE(E1_1, 1, 3)) OR (NOT MISSING(E1_2) AND NOT RANGE(E1_2, 1, 3)) OR (NOT MISSING(E1_3) AND NOT RANGE(E1_3, 1, 3)) OR (NOT MISSING(E1_4) AND NOT RANGE(E1_4, 1, 3)) OR (NOT MISSING(E1_5) AND NOT RANGE(E1_5, 1, 3)) OR (NOT MISSING(E1_6) AND NOT RANGE(E1_6, 1, 3)) OR (NOT MISSING(E1_7) AND NOT RANGE(E1_7, 1, 3))) V_E1_RANKING = 1.




* Question E2.


* [ERROR] E2 muss beantwortet werden.
COMPUTE V_E2_MANDATORY = 0.
IF (MISSING(E2)) V_E2_MANDATORY = 1.



* [ERROR] E2 darf nur gültige Antwortcodes enthalten.
COMPUTE V_E2_INVALID_CODES = 0.
IF ((NOT MISSING(E2) AND NOT ANY(E2, '1', '2', '3', '4'))) V_E2_INVALID_CODES = 1.




* Question E3.


* [ERROR] E3 muss beantwortet werden.
COMPUTE V_E3_MANDATORY = 0.
IF (MISSING(E3)) V_E3_MANDATORY = 1.



* [ERROR] E3 muss als offene Texteingabe geprüft werden.
COMPUTE V_E3_OPEN_END = 0.
IF (MISSING(E3)) V_E3_OPEN_END = 1.





*===============================================================================.
* SECTION Block F – Klassifikation: Block F – Klassifikation.
*===============================================================================.

* Question F1.


* [ERROR] F1 muss beantwortet werden.
COMPUTE V_F1_MANDATORY = 0.
IF (MISSING(F1)) V_F1_MANDATORY = 1.



* [ERROR] F1 darf nur gültige Antwortcodes enthalten.
COMPUTE V_F1_INVALID_CODES = 0.
IF ((NOT MISSING(F1) AND NOT ANY(F1, '1', '2', '3', '4', '5'))) V_F1_INVALID_CODES = 1.




* Question F2.


* [ERROR] F2 muss beantwortet werden.
COMPUTE V_F2_MANDATORY = 0.
IF (MISSING(F2)) V_F2_MANDATORY = 1.



* [ERROR] F2 darf nur gültige Antwortcodes enthalten.
COMPUTE V_F2_INVALID_CODES = 0.
IF ((NOT MISSING(F2) AND NOT ANY(F2, '1', '2', '3'))) V_F2_INVALID_CODES = 1.




* Question F3.


* [ERROR] F3 muss beantwortet werden.
COMPUTE V_F3_MANDATORY = 0.
IF (MISSING(F3)) V_F3_MANDATORY = 1.



* [ERROR] F3 darf nur gültige Antwortcodes enthalten.
COMPUTE V_F3_INVALID_CODES = 0.
IF ((NOT MISSING(F3) AND NOT ANY(F3, '1', '2', '3', '4'))) V_F3_INVALID_CODES = 1.





*===============================================================================.
* FINAL VALIDATION SUMMARY.
*===============================================================================.
COMPUTE VALIDATION_OVERALL = MAX(V_S3_INVALID_CODES, V_S3_SCREEN_OUT, V_S4_INVALID_CODES, V_S4_SCREEN_OUT, V_S1_MANDATORY, V_S1_INVALID_CODES, V_S2_MANDATORY, V_S2_INVALID_CODES, V_A1_MANDATORY, V_A1_MULTIPLE_RESPONSE, V_A2_MANDATORY, V_A2_INVALID_CODES, V_A3_MANDATORY, V_A3_INVALID_CODES, V_B1_MANDATORY, V_B1_INVALID_CODES, V_B2_MANDATORY, V_B2_RANKING, V_C1_MANDATORY, V_C1_MULTIPLE_RESPONSE, V_C1_MAXIMUM_SELECTIONS, V_C1_EXCLUSIVE_ANSWER, V_C2_MANDATORY, V_C2_MULTIPLE_RESPONSE, V_C2_MAXIMUM_SELECTIONS, V_C2_EXCLUSIVE_ANSWER, V_D1_MANDATORY, V_D1_INVALID_CODES, V_D2_MANDATORY, V_D2_INVALID_CODES, V_D3_MANDATORY, V_D3_MULTIPLE_RESPONSE, V_D3_MAXIMUM_SELECTIONS, V_D3_EXCLUSIVE_ANSWER, V_D4_MANDATORY, V_D4_NUMERIC_RANGE, V_E1_MANDATORY, V_E1_RANKING, V_E2_MANDATORY, V_E2_INVALID_CODES, V_E3_MANDATORY, V_E3_OPEN_END, V_F1_MANDATORY, V_F1_INVALID_CODES, V_F2_MANDATORY, V_F2_INVALID_CODES, V_F3_MANDATORY, V_F3_INVALID_CODES).
FREQUENCIES VARIABLES=V_S3_INVALID_CODES V_S3_SCREEN_OUT V_S4_INVALID_CODES V_S4_SCREEN_OUT V_S1_MANDATORY V_S1_INVALID_CODES V_S2_MANDATORY V_S2_INVALID_CODES V_A1_MANDATORY V_A1_MULTIPLE_RESPONSE V_A2_MANDATORY V_A2_INVALID_CODES V_A3_MANDATORY V_A3_INVALID_CODES V_B1_MANDATORY V_B1_INVALID_CODES V_B2_MANDATORY V_B2_RANKING V_C1_MANDATORY V_C1_MULTIPLE_RESPONSE V_C1_MAXIMUM_SELECTIONS V_C1_EXCLUSIVE_ANSWER V_C2_MANDATORY V_C2_MULTIPLE_RESPONSE V_C2_MAXIMUM_SELECTIONS V_C2_EXCLUSIVE_ANSWER V_D1_MANDATORY V_D1_INVALID_CODES V_D2_MANDATORY V_D2_INVALID_CODES V_D3_MANDATORY V_D3_MULTIPLE_RESPONSE V_D3_MAXIMUM_SELECTIONS V_D3_EXCLUSIVE_ANSWER V_D4_MANDATORY V_D4_NUMERIC_RANGE V_E1_MANDATORY V_E1_RANKING V_E2_MANDATORY V_E2_INVALID_CODES V_E3_MANDATORY V_E3_OPEN_END V_F1_MANDATORY V_F1_INVALID_CODES V_F2_MANDATORY V_F2_INVALID_CODES V_F3_MANDATORY V_F3_INVALID_CODES VALIDATION_OVERALL.



EXECUTE.
