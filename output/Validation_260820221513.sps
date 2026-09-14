* Encoding: UTF-8.
* Generated deterministically by Survey Programming AI.
* Source: (V3_R93941) 12847_BD_Nexus_Post_Market_Surveillance_Qre_260429_James_02.docx.
TITLE 'Nexus Post Market Surveillance Questionnaires for Picot 1 and Picot 2 — Questionnaire for PICOT 1 - “Multistep” or “25 Steps” function'.
* Project: 12847.


*===============================================================================.
* SECTION Questionnaire for PICOT 1 - “Multistep” or “25 Steps” function.: Questionnaire for PICOT 1 - “Multistep” or “25 Steps” function..
*===============================================================================.

* Question Q0.


* [ERROR] Q0 must contain a valid response code.
COMPUTE V_Q0_INVALID_CODES = 0.
IF ((NOT MISSING(Q0) AND NOT ANY(Q0, 1, 2))) V_Q0_INVALID_CODES = 1.



* [ERROR] Respondents selecting that they have not used the function must be screened out and the questionnaire closed.
COMPUTE V_Q0_SCREEN_OUT = 0.
IF (Q0 = 2) V_Q0_SCREEN_OUT = 1.




* Question Q1.


* [ERROR] Q1 responses must use the listed clinical-area codes.
COMPUTE V_Q1_INVALID_CODES = 0.
IF ((NOT MISSING(Q1) AND NOT ANY(Q1, '1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12'))) V_Q1_INVALID_CODES = 1.



* [WARNING] Q1 permits selection of all applicable clinical areas.
!MULTI_A svar=Q1.
COMPUTE V_Q1_MULTIPLE_RESPONSE = 0.
IF ((NOT MISSING(Q1_1) AND NOT ANY(Q1_1, 0, 1)) OR (NOT MISSING(Q1_2) AND NOT ANY(Q1_2, 0, 1)) OR (NOT MISSING(Q1_3) AND NOT ANY(Q1_3, 0, 1)) OR (NOT MISSING(Q1_4) AND NOT ANY(Q1_4, 0, 1)) OR (NOT MISSING(Q1_5) AND NOT ANY(Q1_5, 0, 1)) OR (NOT MISSING(Q1_6) AND NOT ANY(Q1_6, 0, 1)) OR (NOT MISSING(Q1_7) AND NOT ANY(Q1_7, 0, 1)) OR (NOT MISSING(Q1_8) AND NOT ANY(Q1_8, 0, 1)) OR (NOT MISSING(Q1_9) AND NOT ANY(Q1_9, 0, 1)) OR (NOT MISSING(Q1_10) AND NOT ANY(Q1_10, 0, 1)) OR (NOT MISSING(Q1_11) AND NOT ANY(Q1_11, 0, 1)) OR (NOT MISSING(Q1_12) AND NOT ANY(Q1_12, 0, 1))) V_Q1_MULTIPLE_RESPONSE = 1.





*===============================================================================.
* SECTION Q2–Q8 rating and ranking questions: Q2–Q8 rating and ranking questions.
*===============================================================================.

* Question Q2_01.


* [ERROR] Q2_01 must be coded from 1 (Never) through 7 (More than 10 times per shift).
COMPUTE V_Q2_01_RANGE = 0.
IF ((NOT MISSING(Q2_01) AND NOT ANY(Q2_01, 1, 2, 3, 4, 5, 6, 7))) V_Q2_01_RANGE = 1.




* Question Q2_02.


* [ERROR] Q2_02 must be coded from 1 (Never) through 7 (More than 10 times per shift).
COMPUTE V_Q2_02_RANGE = 0.
IF ((NOT MISSING(Q2_02) AND NOT ANY(Q2_02, 1, 2, 3, 4, 5, 6, 7))) V_Q2_02_RANGE = 1.




* Question Q2_03.


* [ERROR] Q2_03 must be coded from 1 (Never) through 7 (More than 10 times per shift).
COMPUTE V_Q2_03_RANGE = 0.
IF ((NOT MISSING(Q2_03) AND NOT ANY(Q2_03, 1, 2, 3, 4, 5, 6, 7))) V_Q2_03_RANGE = 1.




* Question Q2_04.


* [ERROR] Q2_04 must be coded from 1 (Never) through 7 (More than 10 times per shift).
COMPUTE V_Q2_04_RANGE = 0.
IF ((NOT MISSING(Q2_04) AND NOT ANY(Q2_04, 1, 2, 3, 4, 5, 6, 7))) V_Q2_04_RANGE = 1.




* Question Q2_05.


* [ERROR] Q2_05 must be coded from 1 (Never) through 7 (More than 10 times per shift).
COMPUTE V_Q2_05_RANGE = 0.
IF ((NOT MISSING(Q2_05) AND NOT ANY(Q2_05, 1, 2, 3, 4, 5, 6, 7))) V_Q2_05_RANGE = 1.




* Question Q3_01.


* [ERROR] Q3_01 must be coded from 1 (Not at all) through 5 (Substantially).
COMPUTE V_Q3_01_RANGE = 0.
IF ((NOT MISSING(Q3_01) AND NOT ANY(Q3_01, 1, 2, 3, 4, 5))) V_Q3_01_RANGE = 1.




* Question Q3_02.


* [ERROR] Q3_02 must be coded from 1 (Not at all) through 5 (Substantially).
COMPUTE V_Q3_02_RANGE = 0.
IF ((NOT MISSING(Q3_02) AND NOT ANY(Q3_02, 1, 2, 3, 4, 5))) V_Q3_02_RANGE = 1.




* Question Q3_03.


* [ERROR] Q3_03 must be coded from 1 (Not at all) through 5 (Substantially).
COMPUTE V_Q3_03_RANGE = 0.
IF ((NOT MISSING(Q3_03) AND NOT ANY(Q3_03, 1, 2, 3, 4, 5))) V_Q3_03_RANGE = 1.




* Question Q3_04.


* [ERROR] Q3_04 must be coded from 1 (Not at all) through 5 (Substantially).
COMPUTE V_Q3_04_RANGE = 0.
IF ((NOT MISSING(Q3_04) AND NOT ANY(Q3_04, 1, 2, 3, 4, 5))) V_Q3_04_RANGE = 1.




* Question Q3_05.


* [ERROR] Q3_05 must be coded from 1 (Not at all) through 5 (Substantially).
COMPUTE V_Q3_05_RANGE = 0.
IF ((NOT MISSING(Q3_05) AND NOT ANY(Q3_05, 1, 2, 3, 4, 5))) V_Q3_05_RANGE = 1.




* Question Q4.
* No validation generated: The parent grid has no variable; its row-level variables and checks are represented by Q4_01 through Q4_05.



* Question Q4_01.


* [ERROR] Q4_01 must be coded from 1 (Not important) through 5 (Extremely important).
COMPUTE V_Q4_01_RANGE = 0.
IF ((NOT MISSING(Q4_01) AND NOT ANY(Q4_01, 1, 2, 3, 4, 5))) V_Q4_01_RANGE = 1.




* Question Q4_02.


* [ERROR] Q4_02 must be coded from 1 (Not important) through 5 (Extremely important).
COMPUTE V_Q4_02_RANGE = 0.
IF ((NOT MISSING(Q4_02) AND NOT ANY(Q4_02, 1, 2, 3, 4, 5))) V_Q4_02_RANGE = 1.




* Question Q4_03.


* [ERROR] Q4_03 must be coded from 1 (Not important) through 5 (Extremely important).
COMPUTE V_Q4_03_RANGE = 0.
IF ((NOT MISSING(Q4_03) AND NOT ANY(Q4_03, 1, 2, 3, 4, 5))) V_Q4_03_RANGE = 1.




* Question Q4_04.


* [ERROR] Q4_04 must be coded from 1 (Not important) through 5 (Extremely important).
COMPUTE V_Q4_04_RANGE = 0.
IF ((NOT MISSING(Q4_04) AND NOT ANY(Q4_04, 1, 2, 3, 4, 5))) V_Q4_04_RANGE = 1.




* Question Q4_05.


* [ERROR] Q4_05 must be coded from 1 (Not important) through 5 (Extremely important).
COMPUTE V_Q4_05_RANGE = 0.
IF ((NOT MISSING(Q4_05) AND NOT ANY(Q4_05, 1, 2, 3, 4, 5))) V_Q4_05_RANGE = 1.




* Question Q5.


* [ERROR] Q5 ranking responses must use ranks through 5 for the five listed outcomes.
!Rank_ALL_CHK svar=Q5.
COMPUTE V_Q5_RANKING = 0.
IF ((NOT MISSING(Q5_1) AND NOT RANGE(Q5_1, 1, 5)) OR (NOT MISSING(Q5_2) AND NOT RANGE(Q5_2, 1, 5)) OR (NOT MISSING(Q5_3) AND NOT RANGE(Q5_3, 1, 5)) OR (NOT MISSING(Q5_4) AND NOT RANGE(Q5_4, 1, 5)) OR (NOT MISSING(Q5_5) AND NOT RANGE(Q5_5, 1, 5))) V_Q5_RANKING = 1.




* Question Q6_01.


* [ERROR] Q6_01 must be coded from 1 (Not at all) through 5 (Substantially).
COMPUTE V_Q6_01_RANGE = 0.
IF ((NOT MISSING(Q6_01) AND NOT ANY(Q6_01, 1, 2, 3, 4, 5))) V_Q6_01_RANGE = 1.




* Question Q6_02.


* [ERROR] Q6_02 must be coded from 1 (Not at all) through 5 (Substantially).
COMPUTE V_Q6_02_RANGE = 0.
IF ((NOT MISSING(Q6_02) AND NOT ANY(Q6_02, 1, 2, 3, 4, 5))) V_Q6_02_RANGE = 1.




* Question Q6_03.


* [ERROR] Q6_03 must be coded from 1 (Not at all) through 5 (Substantially).
COMPUTE V_Q6_03_RANGE = 0.
IF ((NOT MISSING(Q6_03) AND NOT ANY(Q6_03, 1, 2, 3, 4, 5))) V_Q6_03_RANGE = 1.




* Question Q6_04.


* [ERROR] Q6_04 must be coded from 1 (Not at all) through 5 (Substantially).
COMPUTE V_Q6_04_RANGE = 0.
IF ((NOT MISSING(Q6_04) AND NOT ANY(Q6_04, 1, 2, 3, 4, 5))) V_Q6_04_RANGE = 1.




* Question Q6_05.


* [ERROR] Q6_05 must be coded from 1 (Not at all) through 5 (Substantially).
COMPUTE V_Q6_05_RANGE = 0.
IF ((NOT MISSING(Q6_05) AND NOT ANY(Q6_05, 1, 2, 3, 4, 5))) V_Q6_05_RANGE = 1.




* Question Q7_01.


* [ERROR] Q7_01 must be coded from 1 (Not important) through 5 (Extremely important).
COMPUTE V_Q7_01_RANGE = 0.
IF ((NOT MISSING(Q7_01) AND NOT ANY(Q7_01, 1, 2, 3, 4, 5))) V_Q7_01_RANGE = 1.




* Question Q7_02.


* [ERROR] Response must use one of the defined importance rating codes.
COMPUTE V_Q7_02_INVALID_CODES = 0.
IF ((NOT MISSING(Q7_02) AND NOT ANY(Q7_02, '1', '2', '3', '4', '5'))) V_Q7_02_INVALID_CODES = 1.




* Question Q7_03.


* [ERROR] Response must use one of the defined importance rating codes.
COMPUTE V_Q7_03_INVALID_CODES = 0.
IF ((NOT MISSING(Q7_03) AND NOT ANY(Q7_03, '1', '2', '3', '4', '5'))) V_Q7_03_INVALID_CODES = 1.




* Question Q7_04.


* [ERROR] Response must use one of the defined importance rating codes.
COMPUTE V_Q7_04_INVALID_CODES = 0.
IF ((NOT MISSING(Q7_04) AND NOT ANY(Q7_04, '1', '2', '3', '4', '5'))) V_Q7_04_INVALID_CODES = 1.




* Question Q7_05.


* [ERROR] Response must use one of the defined importance rating codes.
COMPUTE V_Q7_05_INVALID_CODES = 0.
IF ((NOT MISSING(Q7_05) AND NOT ANY(Q7_05, '1', '2', '3', '4', '5'))) V_Q7_05_INVALID_CODES = 1.




* Question Q8.


* [ERROR] Ranking responses must use ranks from 1 through 5.
!Rank_ALL_CHK svar=Q8 qnt=Q8.
COMPUTE V_Q8_RANKING = 0.
IF ((NOT MISSING(Q8_1) AND NOT RANGE(Q8_1, 1, 5)) OR (NOT MISSING(Q8_2) AND NOT RANGE(Q8_2, 1, 5)) OR (NOT MISSING(Q8_3) AND NOT RANGE(Q8_3, 1, 5)) OR (NOT MISSING(Q8_4) AND NOT RANGE(Q8_4, 1, 5)) OR (NOT MISSING(Q8_5) AND NOT RANGE(Q8_5, 1, 5))) V_Q8_RANKING = 1.





*===============================================================================.
* SECTION Q9–Q10 estimates: Q9–Q10 estimates.
*===============================================================================.

* Question Q9.


* [ERROR] Response must use one of the defined time-saving estimate codes.
COMPUTE V_Q9_INVALID_CODES = 0.
IF ((NOT MISSING(Q9) AND NOT ANY(Q9, '1', '2', '3', '4', '5', '6', '7'))) V_Q9_INVALID_CODES = 1.




* Question Q10.


* [ERROR] Response must use one of the defined productivity estimate codes.
COMPUTE V_Q10_INVALID_CODES = 0.
IF ((NOT MISSING(Q10) AND NOT ANY(Q10, '1', '2', '3', '4', '5', '6', '7'))) V_Q10_INVALID_CODES = 1.





*===============================================================================.
* SECTION Q11 agreement statements: Q11 agreement statements.
*===============================================================================.

* Question Q11_A.


* [ERROR] Response must use one of the defined agreement or non-use codes.
COMPUTE V_Q11_A_INVALID_CODES = 0.
IF ((NOT MISSING(Q11_A) AND NOT ANY(Q11_A, '1', '2', '3', '4', '5'))) V_Q11_A_INVALID_CODES = 1.




* Question Q11_B.


* [ERROR] Response must use one of the defined agreement or non-use codes.
COMPUTE V_Q11_B_INVALID_CODES = 0.
IF ((NOT MISSING(Q11_B) AND NOT ANY(Q11_B, '1', '2', '3', '4', '5'))) V_Q11_B_INVALID_CODES = 1.




* Question Q11_C.


* [ERROR] Response must use one of the defined agreement or non-use codes.
COMPUTE V_Q11_C_INVALID_CODES = 0.
IF ((NOT MISSING(Q11_C) AND NOT ANY(Q11_C, '1', '2', '3', '4', '5'))) V_Q11_C_INVALID_CODES = 1.




* Question Q11_D.


* [ERROR] Response must use one of the defined agreement or non-use codes.
COMPUTE V_Q11_D_INVALID_CODES = 0.
IF ((NOT MISSING(Q11_D) AND NOT ANY(Q11_D, '1', '2', '3', '4', '5'))) V_Q11_D_INVALID_CODES = 1.





*===============================================================================.
* SECTION Q11 agreement statements — BD neXus: Q11 agreement statements — BD neXus.
*===============================================================================.

* Question Q11_E.


* [ERROR] Response must use one of the defined agreement, non-use, or non-applicability codes.
COMPUTE V_Q11_E_INVALID_CODES = 0.
IF ((NOT MISSING(Q11_E) AND NOT ANY(Q11_E, '1', '2', '3', '4', '5', '6'))) V_Q11_E_INVALID_CODES = 1.





*===============================================================================.
* SECTION Closing question: Closing question.
*===============================================================================.

* Question Q12.


* [ERROR] Selected responses must conform to the select-all-that-apply format.
!MULTI_A svar=Q12 qnt=Q12.
COMPUTE V_Q12_MULTIPLE_RESPONSE = 0.
IF ((NOT MISSING(Q12_1) AND NOT ANY(Q12_1, 0, 1)) OR (NOT MISSING(Q12_2) AND NOT ANY(Q12_2, 0, 1)) OR (NOT MISSING(Q12_3) AND NOT ANY(Q12_3, 0, 1)) OR (NOT MISSING(Q12_4) AND NOT ANY(Q12_4, 0, 1)) OR (NOT MISSING(Q12_5) AND NOT ANY(Q12_5, 0, 1)) OR (NOT MISSING(Q12_6) AND NOT ANY(Q12_6, 0, 1))) V_Q12_MULTIPLE_RESPONSE = 1.



* [ERROR] Selected responses must use one of the defined activity option codes.
COMPUTE V_Q12_INVALID_CODES = 0.
IF ((NOT MISSING(Q12) AND NOT ANY(Q12, '1', '2', '3', '4', '5', '6'))) V_Q12_INVALID_CODES = 1.





*===============================================================================.
* FINAL VALIDATION SUMMARY.
*===============================================================================.
COMPUTE VALIDATION_OVERALL = MAX(V_Q0_INVALID_CODES, V_Q0_SCREEN_OUT, V_Q1_INVALID_CODES, V_Q1_MULTIPLE_RESPONSE, V_Q2_01_RANGE, V_Q2_02_RANGE, V_Q2_03_RANGE, V_Q2_04_RANGE, V_Q2_05_RANGE, V_Q3_01_RANGE, V_Q3_02_RANGE, V_Q3_03_RANGE, V_Q3_04_RANGE, V_Q3_05_RANGE, V_Q4_01_RANGE, V_Q4_02_RANGE, V_Q4_03_RANGE, V_Q4_04_RANGE, V_Q4_05_RANGE, V_Q5_RANKING, V_Q6_01_RANGE, V_Q6_02_RANGE, V_Q6_03_RANGE, V_Q6_04_RANGE, V_Q6_05_RANGE, V_Q7_01_RANGE, V_Q7_02_INVALID_CODES, V_Q7_03_INVALID_CODES, V_Q7_04_INVALID_CODES, V_Q7_05_INVALID_CODES, V_Q8_RANKING, V_Q9_INVALID_CODES, V_Q10_INVALID_CODES, V_Q11_A_INVALID_CODES, V_Q11_B_INVALID_CODES, V_Q11_C_INVALID_CODES, V_Q11_D_INVALID_CODES, V_Q11_E_INVALID_CODES, V_Q12_MULTIPLE_RESPONSE, V_Q12_INVALID_CODES).
FREQUENCIES VARIABLES=V_Q0_INVALID_CODES V_Q0_SCREEN_OUT V_Q1_INVALID_CODES V_Q1_MULTIPLE_RESPONSE V_Q2_01_RANGE V_Q2_02_RANGE V_Q2_03_RANGE V_Q2_04_RANGE V_Q2_05_RANGE V_Q3_01_RANGE V_Q3_02_RANGE V_Q3_03_RANGE V_Q3_04_RANGE V_Q3_05_RANGE V_Q4_01_RANGE V_Q4_02_RANGE V_Q4_03_RANGE V_Q4_04_RANGE V_Q4_05_RANGE V_Q5_RANKING V_Q6_01_RANGE V_Q6_02_RANGE V_Q6_03_RANGE V_Q6_04_RANGE V_Q6_05_RANGE V_Q7_01_RANGE V_Q7_02_INVALID_CODES V_Q7_03_INVALID_CODES V_Q7_04_INVALID_CODES V_Q7_05_INVALID_CODES V_Q8_RANKING V_Q9_INVALID_CODES V_Q10_INVALID_CODES V_Q11_A_INVALID_CODES V_Q11_B_INVALID_CODES V_Q11_C_INVALID_CODES V_Q11_D_INVALID_CODES V_Q11_E_INVALID_CODES V_Q12_MULTIPLE_RESPONSE V_Q12_INVALID_CODES VALIDATION_OVERALL.

* MODEL WARNINGS.
* Q8 specifies five ranked capabilities, but only the base variable Q8 is supplied; a duplicate-ranking check was not added because the required expanded variables are not explicitly present.
* Q11_E includes conditional instructions based on use of the BD neXus pump, but no separate driver variable is supplied; no structured routing rule was added.
* Q12 includes an Other option with a specify instruction, but no separate open-text variable is supplied; no open-end consistency rule was added.


EXECUTE.
