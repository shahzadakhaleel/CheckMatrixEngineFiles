* Encoding: UTF-8.
* Generated deterministically by Survey Programming AI.
* Source: (V1_R100696) Marktumfrage_CME_Veranstaltungsmarkt_revised.docx.
TITLE 'Umfrage: Format-Präferenzen und Trendentwicklung in der ärztlichen Fortbildung'.
* Project: Marktumfrage CME Veranstaltungsmarkt.


*===============================================================================.
* SECTION Block 0 - Screening: Block 0 - Screening.
*===============================================================================.

* Question S3.


* [ERROR] Antwort muss einem zulässigen Antwortcode entsprechen.
COMPUTE V_S3_R1 = 0.
IF ((NOT MISSING(S3) AND NOT ANY(S3, '1', '2', '3'))) V_S3_R1 = 1.



* [WARNING] Teilnehmende mit Antwort Nein werden unmittelbar ausgescreent.
COMPUTE V_S3_R2 = 0.
IF (S3 = '2') V_S3_R2 = 1.




* Question S4.


* [ERROR] Antwort muss einem zulässigen Antwortcode entsprechen.
COMPUTE V_S4_R1 = 0.
IF ((NOT MISSING(S4) AND NOT ANY(S4, '1', '2'))) V_S4_R1 = 1.



* [WARNING] Teilnehmende mit Antwort Nein werden unmittelbar ausgescreent.
COMPUTE V_S4_R2 = 0.
IF (S4 = '2') V_S4_R2 = 1.




* Question S1.


* [ERROR] Antwort muss einem zulässigen Fachrichtungs-Code entsprechen.
COMPUTE V_S1_R1 = 0.
IF ((NOT MISSING(S1) AND NOT ANY(S1, '1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11'))) V_S1_R1 = 1.




* Question S2.


* [ERROR] Antwort muss einem zulässigen Tätigkeitsort-Code entsprechen.
COMPUTE V_S2_R1 = 0.
IF ((NOT MISSING(S2) AND NOT ANY(S2, '1', '2', '3', '4'))) V_S2_R1 = 1.





*===============================================================================.
* SECTION Block A - Status quo: Wie wird heute gesammelt: Block A - Status quo: Wie wird heute gesammelt.
*===============================================================================.

* Question A1.


* [ERROR] Mehrfachantworten müssen aus den vorgesehenen Formatoptionen bestehen.
COMPUTE V_A1_R1 = 0.
IF ((NOT MISSING(A1_1) AND NOT ANY(A1_1, 0, 1)) OR (NOT MISSING(A1_2) AND NOT ANY(A1_2, 0, 1)) OR (NOT MISSING(A1_3) AND NOT ANY(A1_3, 0, 1)) OR (NOT MISSING(A1_4) AND NOT ANY(A1_4, 0, 1)) OR (NOT MISSING(A1_5) AND NOT ANY(A1_5, 0, 1)) OR (NOT MISSING(A1_6) AND NOT ANY(A1_6, 0, 1))) V_A1_R1 = 1.



* [ERROR] Ausgewählte Formate müssen zulässigen Antwortcodes entsprechen.
COMPUTE V_A1_R2 = 0.
IF ((NOT MISSING(A1) AND NOT ANY(A1, '1', '2', '3', '4', '5', '6'))) V_A1_R2 = 1.




* Question A2.


* [ERROR] Antwort muss einem zulässigen Online-Anteils-Code entsprechen.
COMPUTE V_A2_R1 = 0.
IF ((NOT MISSING(A2) AND NOT ANY(A2, '1', '2', '3', '4', '5'))) V_A2_R1 = 1.




* Question A3.


* [ERROR] Antwort muss einem zulässigen Hürden-Code entsprechen.
COMPUTE V_A3_R1 = 0.
IF ((NOT MISSING(A3) AND NOT ANY(A3, '1', '2', '3', '4', '5'))) V_A3_R1 = 1.





*===============================================================================.
* SECTION Block B - Präferenz (Kernblock): Block B - Präferenz (Kernblock).
*===============================================================================.

* Question B1.


* [ERROR] Antwort muss eine der beiden vorgegebenen Präferenzen sein.
COMPUTE V_B1_R1 = 0.
IF ((NOT MISSING(B1) AND NOT ANY(B1, '1', '2'))) V_B1_R1 = 1.




* Question B2.


* [ERROR] Rangwerte müssen innerhalb der vorgegebenen Rangfolge von 1 bis 4 liegen.
COMPUTE V_B2_R1 = 0.
IF ((NOT MISSING(B2_1) AND NOT RANGE(B2_1, 1, 4)) OR (NOT MISSING(B2_2) AND NOT RANGE(B2_2, 1, 4)) OR (NOT MISSING(B2_3) AND NOT RANGE(B2_3, 1, 4)) OR (NOT MISSING(B2_4) AND NOT RANGE(B2_4, 1, 4))) V_B2_R1 = 1.





*===============================================================================.
* SECTION Block C - Die zwei gegenläufigen Kräfte: Block C - Die zwei gegenläufigen Kräfte.
*===============================================================================.

* Question C1.


* [ERROR] Antworten müssen aus den vorgesehenen Gründen bestehen.
COMPUTE V_C1_R1 = 0.
IF ((NOT MISSING(C1_1) AND NOT ANY(C1_1, 0, 1)) OR (NOT MISSING(C1_2) AND NOT ANY(C1_2, 0, 1)) OR (NOT MISSING(C1_3) AND NOT ANY(C1_3, 0, 1)) OR (NOT MISSING(C1_4) AND NOT ANY(C1_4, 0, 1)) OR (NOT MISSING(C1_5) AND NOT ANY(C1_5, 0, 1)) OR (NOT MISSING(C1_6) AND NOT ANY(C1_6, 0, 1)) OR (NOT MISSING(C1_7) AND NOT ANY(C1_7, 0, 1)) OR (NOT MISSING(C1_8) AND NOT ANY(C1_8, 0, 1))) V_C1_R1 = 1.



* [ERROR] Ausgewählte Gründe müssen zulässigen Antwortcodes entsprechen.
COMPUTE V_C1_R2 = 0.
IF ((NOT MISSING(C1) AND NOT ANY(C1, '1', '2', '3', '4', '5', '6', '7', '8'))) V_C1_R2 = 1.



* [ERROR] Es dürfen höchstens drei Gründe ausgewählt werden.
COMPUTE V_C1_R3 = 0.
IF (SUM(C1_1, C1_2, C1_3, C1_4, C1_5, C1_6, C1_7, C1_8) > 3) V_C1_R3 = 1.



* [ERROR] Die exklusive Antwort „nichts davon“ darf nicht mit anderen Antworten kombiniert werden.
COMPUTE V_C1_R4 = 0.
IF (SUM(C1_8) > 0 AND SUM(C1_1, C1_2, C1_3, C1_4, C1_5, C1_6, C1_7, C1_8) > 1) V_C1_R4 = 1.




* Question C2.


* [ERROR] Antworten müssen aus den vorgesehenen Gründen bestehen.
COMPUTE V_C2_R1 = 0.
IF ((NOT MISSING(C2_1) AND NOT ANY(C2_1, 0, 1)) OR (NOT MISSING(C2_2) AND NOT ANY(C2_2, 0, 1)) OR (NOT MISSING(C2_3) AND NOT ANY(C2_3, 0, 1)) OR (NOT MISSING(C2_4) AND NOT ANY(C2_4, 0, 1)) OR (NOT MISSING(C2_5) AND NOT ANY(C2_5, 0, 1)) OR (NOT MISSING(C2_6) AND NOT ANY(C2_6, 0, 1))) V_C2_R1 = 1.



* [ERROR] Ausgewählte Gründe müssen zulässigen Antwortcodes entsprechen.
COMPUTE V_C2_R2 = 0.
IF ((NOT MISSING(C2) AND NOT ANY(C2, '1', '2', '3', '4', '5', '6'))) V_C2_R2 = 1.



* [ERROR] Es dürfen höchstens zwei Gründe ausgewählt werden.
COMPUTE V_C2_R3 = 0.
IF (SUM(C2_1, C2_2, C2_3, C2_4, C2_5, C2_6) > 2) V_C2_R3 = 1.



* [ERROR] Die exklusive Antwort „nichts davon“ darf nicht mit anderen Antworten kombiniert werden.
COMPUTE V_C2_R4 = 0.
IF (SUM(C2_6) > 0 AND SUM(C2_1, C2_2, C2_3, C2_4, C2_5, C2_6) > 1) V_C2_R4 = 1.





*===============================================================================.
* SECTION Block D - Zukunftserwartung (der Trend): Block D - Zukunftserwartung (der Trend).
*===============================================================================.

* Question D1.


* [ERROR] Antwort muss einem zulässigen Entwicklungscode entsprechen.
COMPUTE V_D1_R1 = 0.
IF ((NOT MISSING(D1) AND NOT ANY(D1, '1', '2', '3', '4', '5'))) V_D1_R1 = 1.




* Question D2.


* [ERROR] Antwort muss einem zulässigen Entwicklungscode entsprechen.
COMPUTE V_D2_R1 = 0.
IF ((NOT MISSING(D2) AND NOT ANY(D2, '1', '2', '3', '4', '5'))) V_D2_R1 = 1.




* Question D3.


* [ERROR] Antworten müssen aus den vorgesehenen Hinderungsgründen bestehen.
COMPUTE V_D3_R1 = 0.
IF ((NOT MISSING(D3_1) AND NOT ANY(D3_1, 0, 1)) OR (NOT MISSING(D3_2) AND NOT ANY(D3_2, 0, 1)) OR (NOT MISSING(D3_3) AND NOT ANY(D3_3, 0, 1)) OR (NOT MISSING(D3_4) AND NOT ANY(D3_4, 0, 1)) OR (NOT MISSING(D3_5) AND NOT ANY(D3_5, 0, 1)) OR (NOT MISSING(D3_6) AND NOT ANY(D3_6, 0, 1))) V_D3_R1 = 1.



* [ERROR] Ausgewählte Hinderungsgründe müssen zulässigen Antwortcodes entsprechen.
COMPUTE V_D3_R2 = 0.
IF ((NOT MISSING(D3) AND NOT ANY(D3, '1', '2', '3', '4', '5', '6'))) V_D3_R2 = 1.



* [ERROR] Es dürfen höchstens drei Hinderungsgründe ausgewählt werden.
COMPUTE V_D3_R3 = 0.
IF (SUM(D3_1, D3_2, D3_3, D3_4, D3_5, D3_6) > 3) V_D3_R3 = 1.



* [ERROR] Die exklusive Antwort „nichts davon“ darf nicht mit anderen Antworten kombiniert werden.
COMPUTE V_D3_R4 = 0.
IF (SUM(D3_6) > 0 AND SUM(D3_1, D3_2, D3_3, D3_4, D3_5, D3_6) > 1) V_D3_R4 = 1.




* Question D4.


* [ERROR] Bewertung muss innerhalb der Skala von 1 bis 5 liegen.
COMPUTE V_D4_R1 = 0.
IF ((NOT MISSING(D4) AND NOT ANY(D4, 1, 2, 3, 4, 5))) V_D4_R1 = 1.





*===============================================================================.
* SECTION Block E - Auswahl & Anbieter: Block E - Auswahl & Anbieter.
*===============================================================================.

* Question E1.


* [ERROR] Die Rangwerte müssen innerhalb der erzwungenen Top-3-Rangfolge von 1 bis 3 liegen.
COMPUTE V_E1_R1 = 0.
IF ((NOT MISSING(E1_1) AND NOT RANGE(E1_1, 1, 3)) OR (NOT MISSING(E1_2) AND NOT RANGE(E1_2, 1, 3)) OR (NOT MISSING(E1_3) AND NOT RANGE(E1_3, 1, 3)) OR (NOT MISSING(E1_4) AND NOT RANGE(E1_4, 1, 3)) OR (NOT MISSING(E1_5) AND NOT RANGE(E1_5, 1, 3)) OR (NOT MISSING(E1_6) AND NOT RANGE(E1_6, 1, 3)) OR (NOT MISSING(E1_7) AND NOT RANGE(E1_7, 1, 3))) V_E1_R1 = 1.




* Question E2.


* [ERROR] Antwort muss einem zulässigen Einfluss-Code entsprechen.
COMPUTE V_E2_R1 = 0.
IF ((NOT MISSING(E2) AND NOT ANY(E2, '1', '2', '3', '4'))) V_E2_R1 = 1.




* Question E3.
* No validation generated: Optionales Freitextfeld ohne vorgegebene Inhalts-, Längen- oder Konsistenzanforderung.




*===============================================================================.
* SECTION Block F – Klassifikation: Block F – Klassifikation.
*===============================================================================.

* Question F1.


* [ERROR] Antwort muss einem zulässigen Altersgruppen-Code entsprechen.
COMPUTE V_F1_R1 = 0.
IF ((NOT MISSING(F1) AND NOT ANY(F1, '1', '2', '3', '4', '5'))) V_F1_R1 = 1.




* Question F2.


* [ERROR] Antwort muss einem zulässigen Länder-Code entsprechen.
COMPUTE V_F2_R1 = 0.
IF ((NOT MISSING(F2) AND NOT ANY(F2, '1', '2', '3'))) V_F2_R1 = 1.




* Question F3.


* [ERROR] Antwort muss einem zulässigen Berufserfahrungs-Code entsprechen.
COMPUTE V_F3_R1 = 0.
IF ((NOT MISSING(F3) AND NOT ANY(F3, '1', '2', '3', '4'))) V_F3_R1 = 1.





*===============================================================================.
* FINAL VALIDATION SUMMARY.
*===============================================================================.
COMPUTE VALIDATION_OVERALL = MAX(V_S3_R1, V_S3_R2, V_S4_R1, V_S4_R2, V_S1_R1, V_S2_R1, V_A1_R1, V_A1_R2, V_A2_R1, V_A3_R1, V_B1_R1, V_B2_R1, V_C1_R1, V_C1_R2, V_C1_R3, V_C1_R4, V_C2_R1, V_C2_R2, V_C2_R3, V_C2_R4, V_D1_R1, V_D2_R1, V_D3_R1, V_D3_R2, V_D3_R3, V_D3_R4, V_D4_R1, V_E1_R1, V_E2_R1, V_F1_R1, V_F2_R1, V_F3_R1).
FREQUENCIES VARIABLES=V_S3_R1 V_S3_R2 V_S4_R1 V_S4_R2 V_S1_R1 V_S2_R1 V_A1_R1 V_A1_R2 V_A2_R1 V_A3_R1 V_B1_R1 V_B2_R1 V_C1_R1 V_C1_R2 V_C1_R3 V_C1_R4 V_C2_R1 V_C2_R2 V_C2_R3 V_C2_R4 V_D1_R1 V_D2_R1 V_D3_R1 V_D3_R2 V_D3_R3 V_D3_R4 V_D4_R1 V_E1_R1 V_E2_R1 V_F1_R1 V_F2_R1 V_F3_R1 VALIDATION_OVERALL.



EXECUTE.
