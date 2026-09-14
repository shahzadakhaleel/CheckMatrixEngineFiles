* Encoding: UTF-8.
* Generated deterministically by Survey Programming AI.
* Source: (V1_R100696) Marktumfrage_CME_Veranstaltungsmarkt_revised.docx.
TITLE 'Umfrage: Format-Präferenzen und Trendentwicklung in der ärztlichen Fortbildung'.
* Project: Marktumfrage CME Veranstaltungsmarkt.


*===============================================================================.
* SECTION UNMAPPED: Unmapped validations.
*===============================================================================.

* Question INTRO.
* No validation generated: Informational introduction text with no respondent-entered answer or validation-relevant instruction.




*===============================================================================.
* SECTION Block 0 - Screening: Block 0 - Screening.
*===============================================================================.

* Question S3.


* [ERROR] A response is required for the screening question.
COMPUTE V_S3_MANDATORY = 0.
IF (MISSING(S3)) V_S3_MANDATORY = 1.



* [ERROR] Only the defined response codes are valid.
COMPUTE V_S3_CODES = 0.
IF ((NOT MISSING(S3) AND NOT ANY(S3, '1', '2', '3'))) V_S3_CODES = 1.



* [ERROR] Respondents answering Nein are screened out immediately.
COMPUTE V_S3_SCREENOUT = 0.
IF (S3 = '2') V_S3_SCREENOUT = 1.




* Question S4.


* [ERROR] A response is required for the screening question.
COMPUTE V_S4_MANDATORY = 0.
IF (MISSING(S4)) V_S4_MANDATORY = 1.



* [ERROR] Only the defined response codes are valid.
COMPUTE V_S4_CODES = 0.
IF ((NOT MISSING(S4) AND NOT ANY(S4, '1', '2'))) V_S4_CODES = 1.



* [ERROR] Respondents answering Nein are screened out immediately.
COMPUTE V_S4_SCREENOUT = 0.
IF (S4 = '2') V_S4_SCREENOUT = 1.




* Question S1.


* [ERROR] A response is required for the single-choice specialty question.
COMPUTE V_S1_MANDATORY = 0.
IF (MISSING(S1)) V_S1_MANDATORY = 1.



* [ERROR] Only the defined specialty codes are valid.
COMPUTE V_S1_CODES = 0.
IF ((NOT MISSING(S1) AND NOT ANY(S1, '1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11'))) V_S1_CODES = 1.




* Question S2.


* [ERROR] A response is required for the single-choice workplace question.
COMPUTE V_S2_MANDATORY = 0.
IF (MISSING(S2)) V_S2_MANDATORY = 1.



* [ERROR] Only the defined workplace codes are valid.
COMPUTE V_S2_CODES = 0.
IF ((NOT MISSING(S2) AND NOT ANY(S2, '1', '2', '3', '4'))) V_S2_CODES = 1.





*===============================================================================.
* SECTION Block A - Status quo: Wie wird heute gesammelt: Block A - Status quo: Wie wird heute gesammelt.
*===============================================================================.

* Question A1.


* [ERROR] At least one participation format must be selected.
COMPUTE V_A1_MANDATORY = 0.
IF (MISSING(A1)) V_A1_MANDATORY = 1.



* [ERROR] Validate the multi-response participation-format selections.
!MULTI_A svar=A1.
COMPUTE V_A1_MULTI = 0.
IF ((NOT MISSING(A1_1) AND NOT ANY(A1_1, 0, 1)) OR (NOT MISSING(A1_2) AND NOT ANY(A1_2, 0, 1)) OR (NOT MISSING(A1_3) AND NOT ANY(A1_3, 0, 1)) OR (NOT MISSING(A1_4) AND NOT ANY(A1_4, 0, 1)) OR (NOT MISSING(A1_5) AND NOT ANY(A1_5, 0, 1)) OR (NOT MISSING(A1_6) AND NOT ANY(A1_6, 0, 1))) V_A1_MULTI = 1.




* Question A2.


* [ERROR] A response is required for the online-CME-share question.
COMPUTE V_A2_MANDATORY = 0.
IF (MISSING(A2)) V_A2_MANDATORY = 1.



* [ERROR] Only the defined percentage-band codes are valid.
COMPUTE V_A2_CODES = 0.
IF ((NOT MISSING(A2) AND NOT ANY(A2, '1', '2', '3', '4', '5'))) V_A2_CODES = 1.




* Question A3.


* [ERROR] A response is required for the single-choice barrier question.
COMPUTE V_A3_MANDATORY = 0.
IF (MISSING(A3)) V_A3_MANDATORY = 1.



* [ERROR] Only the defined barrier codes are valid.
COMPUTE V_A3_CODES = 0.
IF ((NOT MISSING(A3) AND NOT ANY(A3, '1', '2', '3', '4', '5'))) V_A3_CODES = 1.





*===============================================================================.
* SECTION Block B - Präferenz (Kernblock): Block B - Präferenz (Kernblock).
*===============================================================================.

* Question B1.


* [ERROR] A forced-choice response is required.
COMPUTE V_B1_MANDATORY = 0.
IF (MISSING(B1)) V_B1_MANDATORY = 1.



* [ERROR] Only the two defined forced-choice codes are valid.
COMPUTE V_B1_CODES = 0.
IF ((NOT MISSING(B1) AND NOT ANY(B1, '1', '2'))) V_B1_CODES = 1.




* Question B2.


* [ERROR] A completed ranking is required.
COMPUTE V_B2_MANDATORY = 0.
IF (MISSING(B2)) V_B2_MANDATORY = 1.



* [ERROR] The four formats must use ranking values from 1 through 4.
!Rank_ALL_CHK svar=B2.
COMPUTE V_B2_RANKING = 0.
IF ((NOT MISSING(B2_1) AND NOT RANGE(B2_1, 1, 4)) OR (NOT MISSING(B2_2) AND NOT RANGE(B2_2, 1, 4)) OR (NOT MISSING(B2_3) AND NOT RANGE(B2_3, 1, 4)) OR (NOT MISSING(B2_4) AND NOT RANGE(B2_4, 1, 4))) V_B2_RANKING = 1.



* [ERROR] No two formats may receive the same rank.
COMPUTE V_B2_DUPLICATES = 0.
IF (NOT MISSING(B2_1) AND B2_1 = B2_2) V_B2_DUPLICATES = 1.
IF (NOT MISSING(B2_1) AND B2_1 = B2_3) V_B2_DUPLICATES = 1.
IF (NOT MISSING(B2_1) AND B2_1 = B2_4) V_B2_DUPLICATES = 1.
IF (NOT MISSING(B2_2) AND B2_2 = B2_3) V_B2_DUPLICATES = 1.
IF (NOT MISSING(B2_2) AND B2_2 = B2_4) V_B2_DUPLICATES = 1.
IF (NOT MISSING(B2_3) AND B2_3 = B2_4) V_B2_DUPLICATES = 1.





*===============================================================================.
* SECTION Block C - Die zwei gegenläufigen Kräfte: Block C - Die zwei gegenläufigen Kräfte.
*===============================================================================.

* Question C1.


* [ERROR] At least one reason must be selected.
COMPUTE V_C1_MANDATORY = 0.
IF (MISSING(C1)) V_C1_MANDATORY = 1.



* [ERROR] No more than three reasons may be selected.
COMPUTE V_C1_MAX = 0.
IF (SUM(C1_1, C1_2, C1_3, C1_4, C1_5, C1_6, C1_7, C1_8) > 3) V_C1_MAX = 1.



* [ERROR] Nichts davon is exclusive and cannot be selected with another reason.
!MULTI_B svar=C1.
COMPUTE V_C1_EXCLUSIVE = 0.
IF (SUM(C1_8) > 0 AND SUM(C1_1, C1_2, C1_3, C1_4, C1_5, C1_6, C1_7, C1_8) > 1) V_C1_EXCLUSIVE = 1.




* Question C2.


* [ERROR] At least one reason must be selected.
COMPUTE V_C2_MANDATORY = 0.
IF (MISSING(C2)) V_C2_MANDATORY = 1.



* [ERROR] No more than two reasons may be selected.
COMPUTE V_C2_MAX = 0.
IF (SUM(C2_1, C2_2, C2_3, C2_4, C2_5, C2_6) > 2) V_C2_MAX = 1.



* [ERROR] Nichts davon is exclusive and cannot be selected with another reason.
!MULTI_B svar=C2.
COMPUTE V_C2_EXCLUSIVE = 0.
IF (SUM(C2_6) > 0 AND SUM(C2_1, C2_2, C2_3, C2_4, C2_5, C2_6) > 1) V_C2_EXCLUSIVE = 1.





*===============================================================================.
* SECTION Block D - Zukunftserwartung (der Trend): Block D - Zukunftserwartung (der Trend).
*===============================================================================.

* Question D1.


* [ERROR] A response is required for the future participation question.
COMPUTE V_D1_MANDATORY = 0.
IF (MISSING(D1)) V_D1_MANDATORY = 1.



* [ERROR] Only the defined trend codes are valid.
COMPUTE V_D1_CODES = 0.
IF ((NOT MISSING(D1) AND NOT ANY(D1, '1', '2', '3', '4', '5'))) V_D1_CODES = 1.




* Question D2.


* [ERROR] A response is required for the future online-participation question.
COMPUTE V_D2_MANDATORY = 0.
IF (MISSING(D2)) V_D2_MANDATORY = 1.



* [ERROR] Only the defined trend codes are valid.
COMPUTE V_D2_CODES = 0.
IF ((NOT MISSING(D2) AND NOT ANY(D2, '1', '2', '3', '4', '5'))) V_D2_CODES = 1.




* Question D3.


* [ERROR] At least one hindering reason must be selected.
COMPUTE V_D3_MANDATORY = 0.
IF (MISSING(D3)) V_D3_MANDATORY = 1.



* [ERROR] No more than three hindering reasons may be selected.
COMPUTE V_D3_MAX = 0.
IF (SUM(D3_1, D3_2, D3_3, D3_4, D3_5, D3_6) > 3) V_D3_MAX = 1.



* [ERROR] Nichts davon is exclusive and cannot be selected with another reason.
!MULTI_B svar=D3.
COMPUTE V_D3_EXCLUSIVE = 0.
IF (SUM(D3_6) > 0 AND SUM(D3_1, D3_2, D3_3, D3_4, D3_5, D3_6) > 1) V_D3_EXCLUSIVE = 1.




* Question D4.


* [ERROR] A response is required for the rating scale.
COMPUTE V_D4_MANDATORY = 0.
IF (MISSING(D4)) V_D4_MANDATORY = 1.



* [ERROR] Only rating codes 1 through 5 are valid.
COMPUTE V_D4_CODES = 0.
IF ((NOT MISSING(D4) AND NOT ANY(D4, '1', '2', '3', '4', '5'))) V_D4_CODES = 1.





*===============================================================================.
* SECTION Block E - Auswahl & Anbieter: Block E - Auswahl & Anbieter.
*===============================================================================.

* Question E1.


* [ERROR] A response is required for the forced Top 3 ranking.
COMPUTE V_E1_MANDATORY = 0.
IF (MISSING(E1)) V_E1_MANDATORY = 1.



* [ERROR] The selected criteria must use ranking values from 1 through 3 for the forced Top 3.
!Rank_ALL_CHK svar=E1.
COMPUTE V_E1_RANKING = 0.
IF ((NOT MISSING(E1_1) AND NOT RANGE(E1_1, 1, 3)) OR (NOT MISSING(E1_2) AND NOT RANGE(E1_2, 1, 3)) OR (NOT MISSING(E1_3) AND NOT RANGE(E1_3, 1, 3)) OR (NOT MISSING(E1_4) AND NOT RANGE(E1_4, 1, 3)) OR (NOT MISSING(E1_5) AND NOT RANGE(E1_5, 1, 3)) OR (NOT MISSING(E1_6) AND NOT RANGE(E1_6, 1, 3)) OR (NOT MISSING(E1_7) AND NOT RANGE(E1_7, 1, 3))) V_E1_RANKING = 1.



* [ERROR] No two criteria may receive the same rank.
COMPUTE V_E1_DUPLICATES = 0.
IF (NOT MISSING(E1_1) AND E1_1 = E1_2) V_E1_DUPLICATES = 1.
IF (NOT MISSING(E1_1) AND E1_1 = E1_3) V_E1_DUPLICATES = 1.
IF (NOT MISSING(E1_1) AND E1_1 = E1_4) V_E1_DUPLICATES = 1.
IF (NOT MISSING(E1_1) AND E1_1 = E1_5) V_E1_DUPLICATES = 1.
IF (NOT MISSING(E1_1) AND E1_1 = E1_6) V_E1_DUPLICATES = 1.
IF (NOT MISSING(E1_1) AND E1_1 = E1_7) V_E1_DUPLICATES = 1.
IF (NOT MISSING(E1_2) AND E1_2 = E1_3) V_E1_DUPLICATES = 1.
IF (NOT MISSING(E1_2) AND E1_2 = E1_4) V_E1_DUPLICATES = 1.
IF (NOT MISSING(E1_2) AND E1_2 = E1_5) V_E1_DUPLICATES = 1.
IF (NOT MISSING(E1_2) AND E1_2 = E1_6) V_E1_DUPLICATES = 1.
IF (NOT MISSING(E1_2) AND E1_2 = E1_7) V_E1_DUPLICATES = 1.
IF (NOT MISSING(E1_3) AND E1_3 = E1_4) V_E1_DUPLICATES = 1.
IF (NOT MISSING(E1_3) AND E1_3 = E1_5) V_E1_DUPLICATES = 1.
IF (NOT MISSING(E1_3) AND E1_3 = E1_6) V_E1_DUPLICATES = 1.
IF (NOT MISSING(E1_3) AND E1_3 = E1_7) V_E1_DUPLICATES = 1.
IF (NOT MISSING(E1_4) AND E1_4 = E1_5) V_E1_DUPLICATES = 1.
IF (NOT MISSING(E1_4) AND E1_4 = E1_6) V_E1_DUPLICATES = 1.
IF (NOT MISSING(E1_4) AND E1_4 = E1_7) V_E1_DUPLICATES = 1.
IF (NOT MISSING(E1_5) AND E1_5 = E1_6) V_E1_DUPLICATES = 1.
IF (NOT MISSING(E1_5) AND E1_5 = E1_7) V_E1_DUPLICATES = 1.
IF (NOT MISSING(E1_6) AND E1_6 = E1_7) V_E1_DUPLICATES = 1.




* Question E2.


* [ERROR] A response is required for the single-choice provider-influence question.
COMPUTE V_E2_MANDATORY = 0.
IF (MISSING(E2)) V_E2_MANDATORY = 1.



* [ERROR] Only the defined provider-influence codes are valid.
COMPUTE V_E2_CODES = 0.
IF ((NOT MISSING(E2) AND NOT ANY(E2, '1', '2', '3', '4'))) V_E2_CODES = 1.




* Question E3.


* [ERROR] A text response is required for the spontaneous-recall question.
COMPUTE V_E3_MANDATORY = 0.
IF (MISSING(E3)) V_E3_MANDATORY = 1.



* [ERROR] Validate that the open-text response is handled as text input.
!String svar=E3.
COMPUTE V_E3_OPEN = 0.
IF (MISSING(E3)) V_E3_OPEN = 1.





*===============================================================================.
* SECTION Block F – Klassifikation: Block F – Klassifikation.
*===============================================================================.

* Question F1.


* [ERROR] A response is required for the age-group classification.
COMPUTE V_F1_MANDATORY = 0.
IF (MISSING(F1)) V_F1_MANDATORY = 1.



* [ERROR] Only the defined age-group codes are valid.
COMPUTE V_F1_CODES = 0.
IF ((NOT MISSING(F1) AND NOT ANY(F1, '1', '2', '3', '4', '5'))) V_F1_CODES = 1.




* Question F2.


* [ERROR] A response is required for the country classification.
COMPUTE V_F2_MANDATORY = 0.
IF (MISSING(F2)) V_F2_MANDATORY = 1.



* [ERROR] Only the defined country codes are valid.
COMPUTE V_F2_CODES = 0.
IF ((NOT MISSING(F2) AND NOT ANY(F2, '1', '2', '3'))) V_F2_CODES = 1.




* Question F3.


* [ERROR] A response is required for the professional-experience classification.
COMPUTE V_F3_MANDATORY = 0.
IF (MISSING(F3)) V_F3_MANDATORY = 1.



* [ERROR] Only the defined professional-experience codes are valid.
COMPUTE V_F3_CODES = 0.
IF ((NOT MISSING(F3) AND NOT ANY(F3, '1', '2', '3', '4'))) V_F3_CODES = 1.





*===============================================================================.
* FINAL VALIDATION SUMMARY.
*===============================================================================.
COMPUTE VALIDATION_OVERALL = MAX(V_S3_MANDATORY, V_S3_CODES, V_S3_SCREENOUT, V_S4_MANDATORY, V_S4_CODES, V_S4_SCREENOUT, V_S1_MANDATORY, V_S1_CODES, V_S2_MANDATORY, V_S2_CODES, V_A1_MANDATORY, V_A1_MULTI, V_A2_MANDATORY, V_A2_CODES, V_A3_MANDATORY, V_A3_CODES, V_B1_MANDATORY, V_B1_CODES, V_B2_MANDATORY, V_B2_RANKING, V_B2_DUPLICATES, V_C1_MANDATORY, V_C1_MAX, V_C1_EXCLUSIVE, V_C2_MANDATORY, V_C2_MAX, V_C2_EXCLUSIVE, V_D1_MANDATORY, V_D1_CODES, V_D2_MANDATORY, V_D2_CODES, V_D3_MANDATORY, V_D3_MAX, V_D3_EXCLUSIVE, V_D4_MANDATORY, V_D4_CODES, V_E1_MANDATORY, V_E1_RANKING, V_E1_DUPLICATES, V_E2_MANDATORY, V_E2_CODES, V_E3_MANDATORY, V_E3_OPEN, V_F1_MANDATORY, V_F1_CODES, V_F2_MANDATORY, V_F2_CODES, V_F3_MANDATORY, V_F3_CODES).
FREQUENCIES VARIABLES=V_S3_MANDATORY V_S3_CODES V_S3_SCREENOUT V_S4_MANDATORY V_S4_CODES V_S4_SCREENOUT V_S1_MANDATORY V_S1_CODES V_S2_MANDATORY V_S2_CODES V_A1_MANDATORY V_A1_MULTI V_A2_MANDATORY V_A2_CODES V_A3_MANDATORY V_A3_CODES V_B1_MANDATORY V_B1_CODES V_B2_MANDATORY V_B2_RANKING V_B2_DUPLICATES V_C1_MANDATORY V_C1_MAX V_C1_EXCLUSIVE V_C2_MANDATORY V_C2_MAX V_C2_EXCLUSIVE V_D1_MANDATORY V_D1_CODES V_D2_MANDATORY V_D2_CODES V_D3_MANDATORY V_D3_MAX V_D3_EXCLUSIVE V_D4_MANDATORY V_D4_CODES V_E1_MANDATORY V_E1_RANKING V_E1_DUPLICATES V_E2_MANDATORY V_E2_CODES V_E3_MANDATORY V_E3_OPEN V_F1_MANDATORY V_F1_CODES V_F2_MANDATORY V_F2_CODES V_F3_MANDATORY V_F3_CODES VALIDATION_OVERALL.

* MODEL WARNINGS.
* The questionnaire marks all respondent questions as required=false; mandatory rules were inferred from the instruction to treat ordinary survey questions as mandatory unless explicitly optional or conditionally routed.
* No separate variable for the S1 Sonstige free-text field is specified, so no other-specify consistency rule was added.


EXECUTE.
