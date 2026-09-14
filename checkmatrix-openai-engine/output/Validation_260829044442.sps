* Encoding: UTF-8.
* Generated deterministically by Survey Programming AI.
* Source: (V3_R93941) 12847_BD_Nexus_Post_Market_Surveillance_Qre_260429_James_02.docx.
TITLE 'Nexus Post Market Surveillance Questionnaires for Picot 1 and Picot 2 — Questionnaire for PICOT 1 - “Multistep” or “25 Steps” function'.
* Project: 12847.


*===============================================================================.
* SECTION PICOT 1: PICOT 1.
*===============================================================================.

* Question Q0.


* [ERROR] Response must use one of the defined Q0 response codes.
COMPUTE V_Q0_INVALID_CODES = 0.
IF ((NOT MISSING(Q0) AND NOT ANY(Q0, 1, 2))) V_Q0_INVALID_CODES = 1.




* Question Q1.


* [ERROR] Selected Q1 options must use one of the defined clinical-area codes.
COMPUTE V_Q1_INVALID_CODES = 0.
IF ((NOT MISSING(Q1) AND NOT ANY(Q1, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12))) V_Q1_INVALID_CODES = 1.



* [ERROR] Q1 permits multiple clinical-area selections.
COMPUTE V_Q1_MULTIPLE_RESPONSE = 0.
IF ((NOT MISSING(Q1_1) AND NOT ANY(Q1_1, 0, 1)) OR (NOT MISSING(Q1_2) AND NOT ANY(Q1_2, 0, 1)) OR (NOT MISSING(Q1_3) AND NOT ANY(Q1_3, 0, 1)) OR (NOT MISSING(Q1_4) AND NOT ANY(Q1_4, 0, 1)) OR (NOT MISSING(Q1_5) AND NOT ANY(Q1_5, 0, 1)) OR (NOT MISSING(Q1_6) AND NOT ANY(Q1_6, 0, 1)) OR (NOT MISSING(Q1_7) AND NOT ANY(Q1_7, 0, 1)) OR (NOT MISSING(Q1_8) AND NOT ANY(Q1_8, 0, 1)) OR (NOT MISSING(Q1_9) AND NOT ANY(Q1_9, 0, 1)) OR (NOT MISSING(Q1_10) AND NOT ANY(Q1_10, 0, 1)) OR (NOT MISSING(Q1_11) AND NOT ANY(Q1_11, 0, 1)) OR (NOT MISSING(Q1_12) AND NOT ANY(Q1_12, 0, 1))) V_Q1_MULTIPLE_RESPONSE = 1.




* Question Q2.
* No validation generated: Parent matrix has no respondent variable; response validation is represented by its row-level child questions.



* Question Q2_01.


* [ERROR] Response must use one of the defined Q2 frequency codes.
COMPUTE V_Q2_01_INVALID_CODES = 0.
IF ((NOT MISSING(Q2_01) AND NOT ANY(Q2_01, 1, 2, 3, 4, 5, 6, 7))) V_Q2_01_INVALID_CODES = 1.




* Question Q2_02.


* [ERROR] Response must use one of the defined Q2 frequency codes.
COMPUTE V_Q2_02_INVALID_CODES = 0.
IF ((NOT MISSING(Q2_02) AND NOT ANY(Q2_02, 1, 2, 3, 4, 5, 6, 7))) V_Q2_02_INVALID_CODES = 1.




* Question Q2_03.


* [ERROR] Response must use one of the defined Q2 frequency codes.
COMPUTE V_Q2_03_INVALID_CODES = 0.
IF ((NOT MISSING(Q2_03) AND NOT ANY(Q2_03, 1, 2, 3, 4, 5, 6, 7))) V_Q2_03_INVALID_CODES = 1.




* Question Q2_04.


* [ERROR] Response must use one of the defined Q2 frequency codes.
COMPUTE V_Q2_04_INVALID_CODES = 0.
IF ((NOT MISSING(Q2_04) AND NOT ANY(Q2_04, 1, 2, 3, 4, 5, 6, 7))) V_Q2_04_INVALID_CODES = 1.




* Question Q2_05.


* [ERROR] Response must use one of the defined Q2 frequency codes.
COMPUTE V_Q2_05_INVALID_CODES = 0.
IF ((NOT MISSING(Q2_05) AND NOT ANY(Q2_05, 1, 2, 3, 4, 5, 6, 7))) V_Q2_05_INVALID_CODES = 1.




* Question Q3.
* No validation generated: Parent matrix has no respondent variable; response validation is represented by its row-level child questions.



* Question Q3_01.


* [ERROR] Response must use one of the defined Q3 outcome-rating codes.
COMPUTE V_Q3_01_INVALID_CODES = 0.
IF ((NOT MISSING(Q3_01) AND NOT ANY(Q3_01, 1, 2, 3, 4, 5))) V_Q3_01_INVALID_CODES = 1.




* Question Q3_02.


* [ERROR] Response must use one of the defined Q3 outcome-rating codes.
COMPUTE V_Q3_02_INVALID_CODES = 0.
IF ((NOT MISSING(Q3_02) AND NOT ANY(Q3_02, 1, 2, 3, 4, 5))) V_Q3_02_INVALID_CODES = 1.




* Question Q3_03.


* [ERROR] Response must use one of the defined Q3 outcome-rating codes.
COMPUTE V_Q3_03_INVALID_CODES = 0.
IF ((NOT MISSING(Q3_03) AND NOT ANY(Q3_03, 1, 2, 3, 4, 5))) V_Q3_03_INVALID_CODES = 1.




* Question Q3_04.


* [ERROR] Response must use one of the defined Q3 outcome-rating codes.
COMPUTE V_Q3_04_INVALID_CODES = 0.
IF ((NOT MISSING(Q3_04) AND NOT ANY(Q3_04, 1, 2, 3, 4, 5))) V_Q3_04_INVALID_CODES = 1.




* Question Q3_05.


* [ERROR] Response must use one of the defined Q3 outcome-rating codes.
COMPUTE V_Q3_05_INVALID_CODES = 0.
IF ((NOT MISSING(Q3_05) AND NOT ANY(Q3_05, 1, 2, 3, 4, 5))) V_Q3_05_INVALID_CODES = 1.




* Question Q4.
* No validation generated: Parent matrix has no respondent variable; response validation is represented by its row-level child questions.



* Question Q4_01.


* [ERROR] Response must use one of the defined Q4 importance-rating codes.
COMPUTE V_Q4_01_INVALID_CODES = 0.
IF ((NOT MISSING(Q4_01) AND NOT ANY(Q4_01, 1, 2, 3, 4, 5))) V_Q4_01_INVALID_CODES = 1.




* Question Q4_02.


* [ERROR] Response must use one of the defined Q4 importance-rating codes.
COMPUTE V_Q4_02_INVALID_CODES = 0.
IF ((NOT MISSING(Q4_02) AND NOT ANY(Q4_02, 1, 2, 3, 4, 5))) V_Q4_02_INVALID_CODES = 1.




* Question Q4_03.


* [ERROR] Response must use one of the defined Q4 importance-rating codes.
COMPUTE V_Q4_03_INVALID_CODES = 0.
IF ((NOT MISSING(Q4_03) AND NOT ANY(Q4_03, 1, 2, 3, 4, 5))) V_Q4_03_INVALID_CODES = 1.




* Question Q4_04.


* [ERROR] Response must use one of the defined Q4 importance-rating codes.
COMPUTE V_Q4_04_INVALID_CODES = 0.
IF ((NOT MISSING(Q4_04) AND NOT ANY(Q4_04, 1, 2, 3, 4, 5))) V_Q4_04_INVALID_CODES = 1.




* Question Q4_05.


* [ERROR] Response must use one of the defined Q4 importance-rating codes.
COMPUTE V_Q4_05_INVALID_CODES = 0.
IF ((NOT MISSING(Q4_05) AND NOT ANY(Q4_05, 1, 2, 3, 4, 5))) V_Q4_05_INVALID_CODES = 1.




* Question Q5.


* [ERROR] Ranks must use the permitted values from 1 through 5.
COMPUTE V_Q5_RANKING = 0.
IF ((NOT MISSING(Q5_1) AND NOT RANGE(Q5_1, 1, 5)) OR (NOT MISSING(Q5_2) AND NOT RANGE(Q5_2, 1, 5)) OR (NOT MISSING(Q5_3) AND NOT RANGE(Q5_3, 1, 5)) OR (NOT MISSING(Q5_4) AND NOT RANGE(Q5_4, 1, 5)) OR (NOT MISSING(Q5_5) AND NOT RANGE(Q5_5, 1, 5))) V_Q5_RANKING = 1.




* Question Q6.
* No validation generated: Parent matrix has no respondent variable; response validation is represented by its row-level child questions.



* Question Q6_01.


* [ERROR] Response must use one of the defined Q6 capability-rating codes.
COMPUTE V_Q6_01_INVALID_CODES = 0.
IF ((NOT MISSING(Q6_01) AND NOT ANY(Q6_01, 1, 2, 3, 4, 5))) V_Q6_01_INVALID_CODES = 1.




* Question Q6_02.


* [ERROR] Response must use one of the defined Q6 capability-rating codes.
COMPUTE V_Q6_02_INVALID_CODES = 0.
IF ((NOT MISSING(Q6_02) AND NOT ANY(Q6_02, 1, 2, 3, 4, 5))) V_Q6_02_INVALID_CODES = 1.




* Question Q6_03.


* [ERROR] Response must use one of the defined Q6 capability-rating codes.
COMPUTE V_Q6_03_INVALID_CODES = 0.
IF ((NOT MISSING(Q6_03) AND NOT ANY(Q6_03, 1, 2, 3, 4, 5))) V_Q6_03_INVALID_CODES = 1.




* Question Q6_04.


* [ERROR] Q6_04 must contain one of the five documented response codes.
COMPUTE V_Q6_04_INVALID_CODES = 0.
IF ((NOT MISSING(Q6_04) AND NOT ANY(Q6_04, 1, 2, 3, 4, 5))) V_Q6_04_INVALID_CODES = 1.




* Question Q6_05.


* [ERROR] Q6_05 must contain one of the five documented response codes.
COMPUTE V_Q6_05_INVALID_CODES = 0.
IF ((NOT MISSING(Q6_05) AND NOT ANY(Q6_05, 1, 2, 3, 4, 5))) V_Q6_05_INVALID_CODES = 1.




* Question Q7.
* No validation generated: Q7 is a parent grid instruction without a respondent data variable; validation is supported by the row-level questions Q7_01 through Q7_05.



* Question Q7_01.


* [ERROR] Q7_01 must contain one of the five documented importance response codes.
COMPUTE V_Q7_01_INVALID_CODES = 0.
IF ((NOT MISSING(Q7_01) AND NOT ANY(Q7_01, 1, 2, 3, 4, 5))) V_Q7_01_INVALID_CODES = 1.




* Question Q7_02.


* [ERROR] Q7_02 must contain one of the five documented importance response codes.
COMPUTE V_Q7_02_INVALID_CODES = 0.
IF ((NOT MISSING(Q7_02) AND NOT ANY(Q7_02, 1, 2, 3, 4, 5))) V_Q7_02_INVALID_CODES = 1.




* Question Q7_03.


* [ERROR] Q7_03 must contain one of the five documented importance response codes.
COMPUTE V_Q7_03_INVALID_CODES = 0.
IF ((NOT MISSING(Q7_03) AND NOT ANY(Q7_03, 1, 2, 3, 4, 5))) V_Q7_03_INVALID_CODES = 1.




* Question Q7_04.


* [ERROR] Q7_04 must contain one of the five documented importance response codes.
COMPUTE V_Q7_04_INVALID_CODES = 0.
IF ((NOT MISSING(Q7_04) AND NOT ANY(Q7_04, 1, 2, 3, 4, 5))) V_Q7_04_INVALID_CODES = 1.




* Question Q7_05.


* [ERROR] Q7_05 must contain one of the five documented importance response codes.
COMPUTE V_Q7_05_INVALID_CODES = 0.
IF ((NOT MISSING(Q7_05) AND NOT ANY(Q7_05, 1, 2, 3, 4, 5))) V_Q7_05_INVALID_CODES = 1.




* Question Q8.


* [ERROR] Q8 rankings must use permitted ranks from 1 through 5.
!Rank_ALL_CHK svar=Q8 qnt=Q8 rank=5.
COMPUTE V_Q8_RANKING = 0.
IF ((NOT MISSING(Q8_1) AND NOT RANGE(Q8_1, 1, 5)) OR (NOT MISSING(Q8_2) AND NOT RANGE(Q8_2, 1, 5)) OR (NOT MISSING(Q8_3) AND NOT RANGE(Q8_3, 1, 5)) OR (NOT MISSING(Q8_4) AND NOT RANGE(Q8_4, 1, 5)) OR (NOT MISSING(Q8_5) AND NOT RANGE(Q8_5, 1, 5))) V_Q8_RANKING = 1.




* Question Q9.


* [ERROR] Q9 must contain one of the seven documented response codes.
COMPUTE V_Q9_INVALID_CODES = 0.
IF ((NOT MISSING(Q9) AND NOT ANY(Q9, 1, 2, 3, 4, 5, 6, 7))) V_Q9_INVALID_CODES = 1.




* Question Q10.


* [ERROR] Q10 must contain one of the seven documented response codes.
COMPUTE V_Q10_INVALID_CODES = 0.
IF ((NOT MISSING(Q10) AND NOT ANY(Q10, 1, 2, 3, 4, 5, 6, 7))) V_Q10_INVALID_CODES = 1.




* Question Q11_A.


* [ERROR] Q11_A must contain one of the five documented response codes.
COMPUTE V_Q11_A_INVALID_CODES = 0.
IF ((NOT MISSING(Q11_A) AND NOT ANY(Q11_A, 1, 2, 3, 4, 5))) V_Q11_A_INVALID_CODES = 1.




* Question Q11_B.


* [ERROR] Q11_B must contain one of the five documented response codes.
COMPUTE V_Q11_B_INVALID_CODES = 0.
IF ((NOT MISSING(Q11_B) AND NOT ANY(Q11_B, 1, 2, 3, 4, 5))) V_Q11_B_INVALID_CODES = 1.




* Question Q11_C.


* [ERROR] Q11_C must contain one of the five documented response codes.
COMPUTE V_Q11_C_INVALID_CODES = 0.
IF ((NOT MISSING(Q11_C) AND NOT ANY(Q11_C, 1, 2, 3, 4, 5))) V_Q11_C_INVALID_CODES = 1.




* Question Q11_D.


* [ERROR] Q11_D must contain one of the five documented response codes.
COMPUTE V_Q11_D_INVALID_CODES = 0.
IF ((NOT MISSING(Q11_D) AND NOT ANY(Q11_D, 1, 2, 3, 4, 5))) V_Q11_D_INVALID_CODES = 1.




* Question Q12.


* [ERROR] Q12 must use only the six documented response codes.
COMPUTE V_Q12_INVALID_CODES = 0.
IF ((NOT MISSING(Q12) AND NOT ANY(Q12, 1, 2, 3, 4, 5, 6))) V_Q12_INVALID_CODES = 1.



* [ERROR] Q12 may contain multiple selected responses from the documented option set.
!MULTI_A svar=Q12 qnt=Q12.
COMPUTE V_Q12_MULTIPLE_RESPONSE = 0.
IF ((NOT MISSING(Q12_1) AND NOT ANY(Q12_1, 0, 1)) OR (NOT MISSING(Q12_2) AND NOT ANY(Q12_2, 0, 1)) OR (NOT MISSING(Q12_3) AND NOT ANY(Q12_3, 0, 1)) OR (NOT MISSING(Q12_4) AND NOT ANY(Q12_4, 0, 1)) OR (NOT MISSING(Q12_5) AND NOT ANY(Q12_5, 0, 1)) OR (NOT MISSING(Q12_6) AND NOT ANY(Q12_6, 0, 1))) V_Q12_MULTIPLE_RESPONSE = 1.





*===============================================================================.
* SECTION PICOT 1 — BD neXus: PICOT 1 — BD neXus.
*===============================================================================.

* Question Q11_E.


* [ERROR] Q11_E must contain one of the six documented response codes, including the not-applicable response.
COMPUTE V_Q11_E_INVALID_CODES = 0.
IF ((NOT MISSING(Q11_E) AND NOT ANY(Q11_E, 1, 2, 3, 4, 5, 6))) V_Q11_E_INVALID_CODES = 1.





*===============================================================================.
* FINAL VALIDATION SUMMARY.
*===============================================================================.
COMPUTE VALIDATION_OVERALL = MAX(V_Q0_INVALID_CODES, V_Q1_INVALID_CODES, V_Q1_MULTIPLE_RESPONSE, V_Q2_01_INVALID_CODES, V_Q2_02_INVALID_CODES, V_Q2_03_INVALID_CODES, V_Q2_04_INVALID_CODES, V_Q2_05_INVALID_CODES, V_Q3_01_INVALID_CODES, V_Q3_02_INVALID_CODES, V_Q3_03_INVALID_CODES, V_Q3_04_INVALID_CODES, V_Q3_05_INVALID_CODES, V_Q4_01_INVALID_CODES, V_Q4_02_INVALID_CODES, V_Q4_03_INVALID_CODES, V_Q4_04_INVALID_CODES, V_Q4_05_INVALID_CODES, V_Q5_RANKING, V_Q6_01_INVALID_CODES, V_Q6_02_INVALID_CODES, V_Q6_03_INVALID_CODES, V_Q6_04_INVALID_CODES, V_Q6_05_INVALID_CODES, V_Q7_01_INVALID_CODES, V_Q7_02_INVALID_CODES, V_Q7_03_INVALID_CODES, V_Q7_04_INVALID_CODES, V_Q7_05_INVALID_CODES, V_Q8_RANKING, V_Q9_INVALID_CODES, V_Q10_INVALID_CODES, V_Q11_A_INVALID_CODES, V_Q11_B_INVALID_CODES, V_Q11_C_INVALID_CODES, V_Q11_D_INVALID_CODES, V_Q11_E_INVALID_CODES, V_Q12_INVALID_CODES, V_Q12_MULTIPLE_RESPONSE).
FREQUENCIES VARIABLES=V_Q0_INVALID_CODES V_Q1_INVALID_CODES V_Q1_MULTIPLE_RESPONSE V_Q2_01_INVALID_CODES V_Q2_02_INVALID_CODES V_Q2_03_INVALID_CODES V_Q2_04_INVALID_CODES V_Q2_05_INVALID_CODES V_Q3_01_INVALID_CODES V_Q3_02_INVALID_CODES V_Q3_03_INVALID_CODES V_Q3_04_INVALID_CODES V_Q3_05_INVALID_CODES V_Q4_01_INVALID_CODES V_Q4_02_INVALID_CODES V_Q4_03_INVALID_CODES V_Q4_04_INVALID_CODES V_Q4_05_INVALID_CODES V_Q5_RANKING V_Q6_01_INVALID_CODES V_Q6_02_INVALID_CODES V_Q6_03_INVALID_CODES V_Q6_04_INVALID_CODES V_Q6_05_INVALID_CODES V_Q7_01_INVALID_CODES V_Q7_02_INVALID_CODES V_Q7_03_INVALID_CODES V_Q7_04_INVALID_CODES V_Q7_05_INVALID_CODES V_Q8_RANKING V_Q9_INVALID_CODES V_Q10_INVALID_CODES V_Q11_A_INVALID_CODES V_Q11_B_INVALID_CODES V_Q11_C_INVALID_CODES V_Q11_D_INVALID_CODES V_Q11_E_INVALID_CODES V_Q12_INVALID_CODES V_Q12_MULTIPLE_RESPONSE VALIDATION_OVERALL.

* MODEL WARNINGS.
* Q2, Q3, Q4, and Q6 are parent matrix records without respondent variables; validation is assigned to the supplied row-level child variables.
* Q2_05 notes an unspecified text response, but no separate text variable is supplied, so no open-end or other-specify consistency rule was added.

* MODEL NOTES.
* The supplied batch contains 17 canonical questions. Optional questions were not assigned mandatory or missing-response checks.
* Q7 is a parent grid instruction with no variable; row-level validation is represented for Q7_01 through Q7_05.

EXECUTE.
