* Encoding: UTF-8.
* Generated deterministically by Survey Programming AI.
* Source: (V1_R100696) Marktumfrage_CME_Veranstaltungsmarkt_revised.docx.
TITLE 'Umfrage: Format-Präferenzen und Trendentwicklung in der ärztlichen Fortbildung'.



*===============================================================================.
* SECTION 0: Screening.
*===============================================================================.

* Question S3.


* [ERROR] S3 must contain one of the defined response codes.
COMPUTE V_S3_INVALID_CODES = 0.
IF ((NOT MISSING(S3) AND NOT ANY(S3, '1', '2', '3'))) V_S3_INVALID_CODES = 1.



* [ERROR] Respondents selecting Nein must be screened out immediately.
COMPUTE V_S3_SCREEN_OUT = 0.
IF (S3 = '2') V_S3_SCREEN_OUT = 1.




* Question S4.


* [ERROR] S4 must contain one of the defined response codes.
COMPUTE V_S4_INVALID_CODES = 0.
IF ((NOT MISSING(S4) AND NOT ANY(S4, '1', '2'))) V_S4_INVALID_CODES = 1.



* [ERROR] Respondents selecting Nein must be screened out immediately.
COMPUTE V_S4_SCREEN_OUT = 0.
IF (S4 = '2') V_S4_SCREEN_OUT = 1.




* Question S1.


* [INFO] The Sonstige response is explicitly identified as free text.
COMPUTE V_S1_OPEN_END = 0.
IF (MISSING(S1)) V_S1_OPEN_END = 1.




* Question S2.


* [ERROR] S2 must contain one of the defined response codes.
COMPUTE V_S2_INVALID_CODES = 0.
IF ((NOT MISSING(S2) AND NOT ANY(S2, '1', '2', '3', '4'))) V_S2_INVALID_CODES = 1.





*===============================================================================.
* SECTION A: Status quo: Wie wird heute gesammelt.
*===============================================================================.

* Question A1.


* [ERROR] A1 selections must use one of the defined option codes.
COMPUTE V_A1_INVALID_CODES = 0.
IF ((NOT MISSING(A1) AND NOT ANY(A1, '1', '2', '3', '4', '5', '6'))) V_A1_INVALID_CODES = 1.



* [ERROR] A1 is a multiple-response question using the six listed formats.
COMPUTE V_A1_MULTIPLE_RESPONSE = 0.
IF ((NOT MISSING(A1_1) AND NOT ANY(A1_1, 0, 1)) OR (NOT MISSING(A1_2) AND NOT ANY(A1_2, 0, 1)) OR (NOT MISSING(A1_3) AND NOT ANY(A1_3, 0, 1)) OR (NOT MISSING(A1_4) AND NOT ANY(A1_4, 0, 1)) OR (NOT MISSING(A1_5) AND NOT ANY(A1_5, 0, 1)) OR (NOT MISSING(A1_6) AND NOT ANY(A1_6, 0, 1))) V_A1_MULTIPLE_RESPONSE = 1.




* Question A2.


* [ERROR] A2 must contain one of the five defined percentage-band codes.
COMPUTE V_A2_INVALID_CODES = 0.
IF ((NOT MISSING(A2) AND NOT ANY(A2, '1', '2', '3', '4', '5'))) V_A2_INVALID_CODES = 1.




* Question A3.


* [ERROR] A3 must contain one of the five defined response codes.
COMPUTE V_A3_INVALID_CODES = 0.
IF ((NOT MISSING(A3) AND NOT ANY(A3, '1', '2', '3', '4', '5'))) V_A3_INVALID_CODES = 1.





*===============================================================================.
* SECTION B: Präferenz (Kernblock).
*===============================================================================.

* Question B1.


* [ERROR] B1 is explicitly required.
COMPUTE V_B1_MANDATORY = 0.
IF (MISSING(B1)) V_B1_MANDATORY = 1.



* [ERROR] B1 must contain one of the two defined forced-choice codes.
COMPUTE V_B1_INVALID_CODES = 0.
IF ((NOT MISSING(B1) AND NOT ANY(B1, '1', '2'))) V_B1_INVALID_CODES = 1.




* Question B2.


* [ERROR] B2 rankings must use ranks 1 through 4 for the four listed formats.
COMPUTE V_B2_RANKING = 0.
IF ((NOT MISSING(B2_1) AND NOT RANGE(B2_1, 1, 4)) OR (NOT MISSING(B2_2) AND NOT RANGE(B2_2, 1, 4)) OR (NOT MISSING(B2_3) AND NOT RANGE(B2_3, 1, 4)) OR (NOT MISSING(B2_4) AND NOT RANGE(B2_4, 1, 4))) V_B2_RANKING = 1.



* [ERROR] B2 must not assign the same rank more than once.
COMPUTE V_B2_DUPLICATE_RANKINGS = 0.
IF (NOT MISSING(B2_1) AND B2_1 = B2_2) V_B2_DUPLICATE_RANKINGS = 1.
IF (NOT MISSING(B2_1) AND B2_1 = B2_3) V_B2_DUPLICATE_RANKINGS = 1.
IF (NOT MISSING(B2_1) AND B2_1 = B2_4) V_B2_DUPLICATE_RANKINGS = 1.
IF (NOT MISSING(B2_2) AND B2_2 = B2_3) V_B2_DUPLICATE_RANKINGS = 1.
IF (NOT MISSING(B2_2) AND B2_2 = B2_4) V_B2_DUPLICATE_RANKINGS = 1.
IF (NOT MISSING(B2_3) AND B2_3 = B2_4) V_B2_DUPLICATE_RANKINGS = 1.





*===============================================================================.
* SECTION C: Die zwei gegenläufigen Kräfte.
*===============================================================================.

* Question C1.


* [ERROR] C1 selections must use one of the defined option codes.
COMPUTE V_C1_INVALID_CODES = 0.
IF ((NOT MISSING(C1) AND NOT ANY(C1, '1', '2', '3', '4', '5', '6', '7', '8'))) V_C1_INVALID_CODES = 1.



* [ERROR] C1 allows a maximum of three selections.
COMPUTE V_C1_MAXIMUM_SELECTIONS = 0.
IF (SUM(C1_1, C1_2, C1_3, C1_4, C1_5, C1_6, C1_7, C1_8) > 3) V_C1_MAXIMUM_SELECTIONS = 1.



* [ERROR] C1 option 8 is exclusive and cannot be selected with any other option.
COMPUTE V_C1_EXCLUSIVE_ANSWER = 0.
IF (SUM(C1_8) > 0 AND SUM(C1_1, C1_2, C1_3, C1_4, C1_5, C1_6, C1_7, C1_8) > 1) V_C1_EXCLUSIVE_ANSWER = 1.




* Question C2.


* [ERROR] C2 selections must use one of the defined option codes.
COMPUTE V_C2_INVALID_CODES = 0.
IF ((NOT MISSING(C2) AND NOT ANY(C2, '1', '2', '3', '4', '5', '6'))) V_C2_INVALID_CODES = 1.



* [ERROR] C2 allows a maximum of two selections.
COMPUTE V_C2_MAXIMUM_SELECTIONS = 0.
IF (SUM(C2_1, C2_2, C2_3, C2_4, C2_5, C2_6) > 2) V_C2_MAXIMUM_SELECTIONS = 1.



* [ERROR] C2 option 6 is exclusive and cannot be selected with any other option.
COMPUTE V_C2_EXCLUSIVE_ANSWER = 0.
IF (SUM(C2_6) > 0 AND SUM(C2_1, C2_2, C2_3, C2_4, C2_5, C2_6) > 1) V_C2_EXCLUSIVE_ANSWER = 1.





*===============================================================================.
* SECTION D: Zukunftserwartung (der Trend).
*===============================================================================.

* Question D1.


* [ERROR] D1 must contain one of the five defined response codes.
COMPUTE V_D1_INVALID_CODES = 0.
IF ((NOT MISSING(D1) AND NOT ANY(D1, '1', '2', '3', '4', '5'))) V_D1_INVALID_CODES = 1.




* Question D2.


* [ERROR] D2 must contain one of the five defined response codes.
COMPUTE V_D2_INVALID_CODES = 0.
IF ((NOT MISSING(D2) AND NOT ANY(D2, '1', '2', '3', '4', '5'))) V_D2_INVALID_CODES = 1.




* Question D3.


* [ERROR] D3 selections must use one of the defined option codes.
COMPUTE V_D3_INVALID_CODES = 0.
IF ((NOT MISSING(D3) AND NOT ANY(D3, '1', '2', '3', '4', '5', '6'))) V_D3_INVALID_CODES = 1.



* [ERROR] D3 allows a maximum of three selections.
COMPUTE V_D3_MAXIMUM_SELECTIONS = 0.
IF (SUM(D3_1, D3_2, D3_3, D3_4, D3_5, D3_6) > 3) V_D3_MAXIMUM_SELECTIONS = 1.



* [ERROR] D3 option 6 is exclusive and cannot be selected with any other option.
COMPUTE V_D3_EXCLUSIVE_ANSWER = 0.
IF (SUM(D3_6) > 0 AND SUM(D3_1, D3_2, D3_3, D3_4, D3_5, D3_6) > 1) V_D3_EXCLUSIVE_ANSWER = 1.




* Question D4.


* [ERROR] D4 ratings must be on the stated 1-to-5 agreement scale.
COMPUTE V_D4_INVALID_CODES = 0.
IF ((NOT MISSING(D4) AND NOT ANY(D4, 1, 2, 3, 4, 5))) V_D4_INVALID_CODES = 1.





*===============================================================================.
* SECTION E: Auswahl & Anbieter.
*===============================================================================.

* Question E1.


* [ERROR] E1 is a forced Top 3 ranking using ranks 1 through 3.
COMPUTE V_E1_RANKING = 0.
IF ((NOT MISSING(E1_1) AND NOT RANGE(E1_1, 1, 3)) OR (NOT MISSING(E1_2) AND NOT RANGE(E1_2, 1, 3)) OR (NOT MISSING(E1_3) AND NOT RANGE(E1_3, 1, 3)) OR (NOT MISSING(E1_4) AND NOT RANGE(E1_4, 1, 3)) OR (NOT MISSING(E1_5) AND NOT RANGE(E1_5, 1, 3)) OR (NOT MISSING(E1_6) AND NOT RANGE(E1_6, 1, 3)) OR (NOT MISSING(E1_7) AND NOT RANGE(E1_7, 1, 3))) V_E1_RANKING = 1.



* [ERROR] E1 must not assign the same rank more than once.
COMPUTE V_E1_DUPLICATE_RANKINGS = 0.
IF (NOT MISSING(E1_1) AND E1_1 = E1_2) V_E1_DUPLICATE_RANKINGS = 1.
IF (NOT MISSING(E1_1) AND E1_1 = E1_3) V_E1_DUPLICATE_RANKINGS = 1.
IF (NOT MISSING(E1_1) AND E1_1 = E1_4) V_E1_DUPLICATE_RANKINGS = 1.
IF (NOT MISSING(E1_1) AND E1_1 = E1_5) V_E1_DUPLICATE_RANKINGS = 1.
IF (NOT MISSING(E1_1) AND E1_1 = E1_6) V_E1_DUPLICATE_RANKINGS = 1.
IF (NOT MISSING(E1_1) AND E1_1 = E1_7) V_E1_DUPLICATE_RANKINGS = 1.
IF (NOT MISSING(E1_2) AND E1_2 = E1_3) V_E1_DUPLICATE_RANKINGS = 1.
IF (NOT MISSING(E1_2) AND E1_2 = E1_4) V_E1_DUPLICATE_RANKINGS = 1.
IF (NOT MISSING(E1_2) AND E1_2 = E1_5) V_E1_DUPLICATE_RANKINGS = 1.
IF (NOT MISSING(E1_2) AND E1_2 = E1_6) V_E1_DUPLICATE_RANKINGS = 1.
IF (NOT MISSING(E1_2) AND E1_2 = E1_7) V_E1_DUPLICATE_RANKINGS = 1.
IF (NOT MISSING(E1_3) AND E1_3 = E1_4) V_E1_DUPLICATE_RANKINGS = 1.
IF (NOT MISSING(E1_3) AND E1_3 = E1_5) V_E1_DUPLICATE_RANKINGS = 1.
IF (NOT MISSING(E1_3) AND E1_3 = E1_6) V_E1_DUPLICATE_RANKINGS = 1.
IF (NOT MISSING(E1_3) AND E1_3 = E1_7) V_E1_DUPLICATE_RANKINGS = 1.
IF (NOT MISSING(E1_4) AND E1_4 = E1_5) V_E1_DUPLICATE_RANKINGS = 1.
IF (NOT MISSING(E1_4) AND E1_4 = E1_6) V_E1_DUPLICATE_RANKINGS = 1.
IF (NOT MISSING(E1_4) AND E1_4 = E1_7) V_E1_DUPLICATE_RANKINGS = 1.
IF (NOT MISSING(E1_5) AND E1_5 = E1_6) V_E1_DUPLICATE_RANKINGS = 1.
IF (NOT MISSING(E1_5) AND E1_5 = E1_7) V_E1_DUPLICATE_RANKINGS = 1.
IF (NOT MISSING(E1_6) AND E1_6 = E1_7) V_E1_DUPLICATE_RANKINGS = 1.




* Question E2.


* [ERROR] E2 must contain one of the four defined response codes.
COMPUTE V_E2_INVALID_CODES = 0.
IF ((NOT MISSING(E2) AND NOT ANY(E2, '1', '2', '3', '4'))) V_E2_INVALID_CODES = 1.




* Question E3.


* [INFO] E3 is explicitly an open-text question requesting respondent-provided names.
COMPUTE V_E3_OPEN_END = 0.
IF (MISSING(E3)) V_E3_OPEN_END = 1.





*===============================================================================.
* SECTION F: Klassifikation.
*===============================================================================.

* Question F1.


* [ERROR] F1 must contain one of the five defined age-group codes.
COMPUTE V_F1_INVALID_CODES = 0.
IF ((NOT MISSING(F1) AND NOT ANY(F1, '1', '2', '3', '4', '5'))) V_F1_INVALID_CODES = 1.




* Question F2.


* [ERROR] F2 must contain one of the three defined country codes.
COMPUTE V_F2_INVALID_CODES = 0.
IF ((NOT MISSING(F2) AND NOT ANY(F2, '1', '2', '3'))) V_F2_INVALID_CODES = 1.




* Question F3.


* [ERROR] F3 must contain one of the four defined professional-experience codes.
COMPUTE V_F3_INVALID_CODES = 0.
IF ((NOT MISSING(F3) AND NOT ANY(F3, '1', '2', '3', '4'))) V_F3_INVALID_CODES = 1.





*===============================================================================.
* FINAL VALIDATION SUMMARY.
*===============================================================================.
COMPUTE VALIDATION_OVERALL = MAX(V_S3_INVALID_CODES, V_S3_SCREEN_OUT, V_S4_INVALID_CODES, V_S4_SCREEN_OUT, V_S1_OPEN_END, V_S2_INVALID_CODES, V_A1_INVALID_CODES, V_A1_MULTIPLE_RESPONSE, V_A2_INVALID_CODES, V_A3_INVALID_CODES, V_B1_MANDATORY, V_B1_INVALID_CODES, V_B2_RANKING, V_B2_DUPLICATE_RANKINGS, V_C1_INVALID_CODES, V_C1_MAXIMUM_SELECTIONS, V_C1_EXCLUSIVE_ANSWER, V_C2_INVALID_CODES, V_C2_MAXIMUM_SELECTIONS, V_C2_EXCLUSIVE_ANSWER, V_D1_INVALID_CODES, V_D2_INVALID_CODES, V_D3_INVALID_CODES, V_D3_MAXIMUM_SELECTIONS, V_D3_EXCLUSIVE_ANSWER, V_D4_INVALID_CODES, V_E1_RANKING, V_E1_DUPLICATE_RANKINGS, V_E2_INVALID_CODES, V_E3_OPEN_END, V_F1_INVALID_CODES, V_F2_INVALID_CODES, V_F3_INVALID_CODES).
FREQUENCIES VARIABLES=V_S3_INVALID_CODES V_S3_SCREEN_OUT V_S4_INVALID_CODES V_S4_SCREEN_OUT V_S1_OPEN_END V_S2_INVALID_CODES V_A1_INVALID_CODES V_A1_MULTIPLE_RESPONSE V_A2_INVALID_CODES V_A3_INVALID_CODES V_B1_MANDATORY V_B1_INVALID_CODES V_B2_RANKING V_B2_DUPLICATE_RANKINGS V_C1_INVALID_CODES V_C1_MAXIMUM_SELECTIONS V_C1_EXCLUSIVE_ANSWER V_C2_INVALID_CODES V_C2_MAXIMUM_SELECTIONS V_C2_EXCLUSIVE_ANSWER V_D1_INVALID_CODES V_D2_INVALID_CODES V_D3_INVALID_CODES V_D3_MAXIMUM_SELECTIONS V_D3_EXCLUSIVE_ANSWER V_D4_INVALID_CODES V_E1_RANKING V_E1_DUPLICATE_RANKINGS V_E2_INVALID_CODES V_E3_OPEN_END V_F1_INVALID_CODES V_F2_INVALID_CODES V_F3_INVALID_CODES VALIDATION_OVERALL.

* MODEL WARNINGS.
* S1 is labelled as single choice but was parsed as an open question with no canonical option codes; therefore no coded-response validation was added.
* D4 has no parsed option records; its invalid-code check relies on the explicit 1-to-5 scale stated in the question text.


EXECUTE.
