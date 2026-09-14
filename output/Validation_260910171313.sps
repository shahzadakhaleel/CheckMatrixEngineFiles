* Encoding: UTF-8.
* Generated deterministically by Survey Programming AI.
* Source: (V3_R93941) 12847_BD_Nexus_Post_Market_Surveillance_Qre_260429_James_02.docx.
TITLE 'Nexus Post Market Surveillance Questionnaires for Picot 1 and Picot 2'.
* Project: 12847.


*===============================================================================.
* SECTION Questionnaire for PICOT 1 - “Multistep” or “25 Steps” function.: Questionnaire for PICOT 1 - “Multistep” or “25 Steps” function..
*===============================================================================.

* Question Q0.


* [ERROR] Q0 must contain one of the specified response codes.
COMPUTE V_Q0_INVALID_CODES = 0.
IF ((NOT MISSING(Q0) AND NOT ANY(Q0, 1, 2))) V_Q0_INVALID_CODES = 1.



* [WARNING] Respondents selecting that they have not used the function should be screened out.
COMPUTE V_Q0_SCREEN_OUT = 0.
IF (Q0 = 2) V_Q0_SCREEN_OUT = 1.





*===============================================================================.
* SECTION UNMAPPED: Unmapped validations.
*===============================================================================.

* Question Q1.


* [ERROR] Q1 responses must use one of the specified clinical-area codes.
COMPUTE V_Q1_INVALID_CODES = 0.
IF ((NOT MISSING(Q1) AND NOT ANY(Q1, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12))) V_Q1_INVALID_CODES = 1.



* [ERROR] Q1 permits multiple clinical-area selections.
COMPUTE V_Q1_MULTIPLE_RESPONSE = 0.
IF ((NOT MISSING(Q1_1) AND NOT ANY(Q1_1, 0, 1)) OR (NOT MISSING(Q1_2) AND NOT ANY(Q1_2, 0, 1)) OR (NOT MISSING(Q1_3) AND NOT ANY(Q1_3, 0, 1)) OR (NOT MISSING(Q1_4) AND NOT ANY(Q1_4, 0, 1)) OR (NOT MISSING(Q1_5) AND NOT ANY(Q1_5, 0, 1)) OR (NOT MISSING(Q1_6) AND NOT ANY(Q1_6, 0, 1)) OR (NOT MISSING(Q1_7) AND NOT ANY(Q1_7, 0, 1)) OR (NOT MISSING(Q1_8) AND NOT ANY(Q1_8, 0, 1)) OR (NOT MISSING(Q1_9) AND NOT ANY(Q1_9, 0, 1)) OR (NOT MISSING(Q1_10) AND NOT ANY(Q1_10, 0, 1)) OR (NOT MISSING(Q1_11) AND NOT ANY(Q1_11, 0, 1)) OR (NOT MISSING(Q1_12) AND NOT ANY(Q1_12, 0, 1))) V_Q1_MULTIPLE_RESPONSE = 1.




* Question Q2_1.


* [ERROR] Q2_1 must use the specified seven-point frequency scale.
COMPUTE V_Q2_1_INVALID_CODES = 0.
IF ((NOT MISSING(Q2_1) AND NOT ANY(Q2_1, 1, 2, 3, 4, 5, 6, 7))) V_Q2_1_INVALID_CODES = 1.




* Question Q2_2.


* [ERROR] Q2_2 must use the specified seven-point frequency scale.
COMPUTE V_Q2_2_INVALID_CODES = 0.
IF ((NOT MISSING(Q2_2) AND NOT ANY(Q2_2, 1, 2, 3, 4, 5, 6, 7))) V_Q2_2_INVALID_CODES = 1.




* Question Q2_3.


* [ERROR] Q2_3 must use the specified seven-point frequency scale.
COMPUTE V_Q2_3_INVALID_CODES = 0.
IF ((NOT MISSING(Q2_3) AND NOT ANY(Q2_3, 1, 2, 3, 4, 5, 6, 7))) V_Q2_3_INVALID_CODES = 1.




* Question Q2_4.


* [ERROR] Q2_4 must use the specified seven-point frequency scale.
COMPUTE V_Q2_4_INVALID_CODES = 0.
IF ((NOT MISSING(Q2_4) AND NOT ANY(Q2_4, 1, 2, 3, 4, 5, 6, 7))) V_Q2_4_INVALID_CODES = 1.




* Question Q2_5.


* [ERROR] Q2_5 must use the specified seven-point frequency scale.
COMPUTE V_Q2_5_INVALID_CODES = 0.
IF ((NOT MISSING(Q2_5) AND NOT ANY(Q2_5, 1, 2, 3, 4, 5, 6, 7))) V_Q2_5_INVALID_CODES = 1.




* Question Q3_1.


* [ERROR] Q3_1 must use the specified five-point outcome scale.
COMPUTE V_Q3_1_INVALID_CODES = 0.
IF ((NOT MISSING(Q3_1) AND NOT ANY(Q3_1, 1, 2, 3, 4, 5))) V_Q3_1_INVALID_CODES = 1.




* Question Q3_2.


* [ERROR] Q3_2 must use the specified five-point outcome scale.
COMPUTE V_Q3_2_INVALID_CODES = 0.
IF ((NOT MISSING(Q3_2) AND NOT ANY(Q3_2, 1, 2, 3, 4, 5))) V_Q3_2_INVALID_CODES = 1.




* Question Q3_3.


* [ERROR] Q3_3 must use the specified five-point outcome scale.
COMPUTE V_Q3_3_INVALID_CODES = 0.
IF ((NOT MISSING(Q3_3) AND NOT ANY(Q3_3, 1, 2, 3, 4, 5))) V_Q3_3_INVALID_CODES = 1.




* Question Q3_4.


* [ERROR] Q3_4 must use the specified five-point outcome scale.
COMPUTE V_Q3_4_INVALID_CODES = 0.
IF ((NOT MISSING(Q3_4) AND NOT ANY(Q3_4, 1, 2, 3, 4, 5))) V_Q3_4_INVALID_CODES = 1.




* Question Q3_5.


* [ERROR] Q3_5 must use the specified five-point outcome scale.
COMPUTE V_Q3_5_INVALID_CODES = 0.
IF ((NOT MISSING(Q3_5) AND NOT ANY(Q3_5, 1, 2, 3, 4, 5))) V_Q3_5_INVALID_CODES = 1.




* Question Q4_1.


* [ERROR] Q4_1 must use the specified five-point importance scale.
COMPUTE V_Q4_1_INVALID_CODES = 0.
IF ((NOT MISSING(Q4_1) AND NOT ANY(Q4_1, 1, 2, 3, 4, 5))) V_Q4_1_INVALID_CODES = 1.




* Question Q4_2.


* [ERROR] Q4_2 must use the specified five-point importance scale.
COMPUTE V_Q4_2_INVALID_CODES = 0.
IF ((NOT MISSING(Q4_2) AND NOT ANY(Q4_2, 1, 2, 3, 4, 5))) V_Q4_2_INVALID_CODES = 1.




* Question Q4_3.


* [ERROR] Q4_3 must use the specified five-point importance scale.
COMPUTE V_Q4_3_INVALID_CODES = 0.
IF ((NOT MISSING(Q4_3) AND NOT ANY(Q4_3, 1, 2, 3, 4, 5))) V_Q4_3_INVALID_CODES = 1.




* Question Q4_4.


* [ERROR] Q4_4 must use the specified five-point importance scale.
COMPUTE V_Q4_4_INVALID_CODES = 0.
IF ((NOT MISSING(Q4_4) AND NOT ANY(Q4_4, 1, 2, 3, 4, 5))) V_Q4_4_INVALID_CODES = 1.




* Question Q4_5.


* [ERROR] Q4_5 must use the specified five-point importance scale.
COMPUTE V_Q4_5_INVALID_CODES = 0.
IF ((NOT MISSING(Q4_5) AND NOT ANY(Q4_5, 1, 2, 3, 4, 5))) V_Q4_5_INVALID_CODES = 1.




* Question Q5.


* [ERROR] Q5 rankings must use ranks from 1 through 5.
COMPUTE V_Q5_RANKING = 0.
IF ((NOT MISSING(Q5_1) AND NOT RANGE(Q5_1, 1, 5)) OR (NOT MISSING(Q5_2) AND NOT RANGE(Q5_2, 1, 5)) OR (NOT MISSING(Q5_3) AND NOT RANGE(Q5_3, 1, 5)) OR (NOT MISSING(Q5_4) AND NOT RANGE(Q5_4, 1, 5)) OR (NOT MISSING(Q5_5) AND NOT RANGE(Q5_5, 1, 5))) V_Q5_RANKING = 1.




* Question Q6_1.


* [ERROR] Q6_1 must use the specified five-point capability scale.
COMPUTE V_Q6_1_INVALID_CODES = 0.
IF ((NOT MISSING(Q6_1) AND NOT ANY(Q6_1, 1, 2, 3, 4, 5))) V_Q6_1_INVALID_CODES = 1.




* Question Q6_2.


* [ERROR] Q6_2 must use the specified five-point capability scale.
COMPUTE V_Q6_2_INVALID_CODES = 0.
IF ((NOT MISSING(Q6_2) AND NOT ANY(Q6_2, 1, 2, 3, 4, 5))) V_Q6_2_INVALID_CODES = 1.




* Question Q6_3.


* [ERROR] Q6_3 must use the specified five-point capability scale.
COMPUTE V_Q6_3_INVALID_CODES = 0.
IF ((NOT MISSING(Q6_3) AND NOT ANY(Q6_3, 1, 2, 3, 4, 5))) V_Q6_3_INVALID_CODES = 1.




* Question Q6_4.


* [ERROR] Q6_4 must use the specified five-point capability scale.
COMPUTE V_Q6_4_INVALID_CODES = 0.
IF ((NOT MISSING(Q6_4) AND NOT ANY(Q6_4, 1, 2, 3, 4, 5))) V_Q6_4_INVALID_CODES = 1.




* Question Q6_5.


* [ERROR] Q6_5 must use the specified five-point capability scale.
COMPUTE V_Q6_5_INVALID_CODES = 0.
IF ((NOT MISSING(Q6_5) AND NOT ANY(Q6_5, 1, 2, 3, 4, 5))) V_Q6_5_INVALID_CODES = 1.




* Question Q7_1.


* [ERROR] Q7_1 must use the specified five-point importance scale.
COMPUTE V_Q7_1_INVALID_CODES = 0.
IF ((NOT MISSING(Q7_1) AND NOT ANY(Q7_1, 1, 2, 3, 4, 5))) V_Q7_1_INVALID_CODES = 1.




* Question Q7_2.


* [ERROR] Q7_2 must use the specified five-point importance scale.
COMPUTE V_Q7_2_INVALID_CODES = 0.
IF ((NOT MISSING(Q7_2) AND NOT ANY(Q7_2, 1, 2, 3, 4, 5))) V_Q7_2_INVALID_CODES = 1.




* Question Q7_3.


* [ERROR] Response must be one of the five specified importance ratings.
COMPUTE V_Q7_3_INVALID_CODES = 0.
IF ((NOT MISSING(Q7_3) AND NOT ANY(Q7_3, '1', '2', '3', '4', '5'))) V_Q7_3_INVALID_CODES = 1.




* Question Q7_4.


* [ERROR] Response must be one of the five specified importance ratings.
COMPUTE V_Q7_4_INVALID_CODES = 0.
IF ((NOT MISSING(Q7_4) AND NOT ANY(Q7_4, '1', '2', '3', '4', '5'))) V_Q7_4_INVALID_CODES = 1.




* Question Q7_5.


* [ERROR] Response must be one of the five specified importance ratings.
COMPUTE V_Q7_5_INVALID_CODES = 0.
IF ((NOT MISSING(Q7_5) AND NOT ANY(Q7_5, '1', '2', '3', '4', '5'))) V_Q7_5_INVALID_CODES = 1.




* Question Q8.


* [ERROR] Rankings must use the permitted values from 1 through 5.
!Rank_ALL_CHK svar=Q8 qnt=Q8 rank=5.
COMPUTE V_Q8_RANKING_RANGE = 0.
IF ((NOT MISSING(Q8_1) AND NOT RANGE(Q8_1, 1, 5)) OR (NOT MISSING(Q8_2) AND NOT RANGE(Q8_2, 1, 5)) OR (NOT MISSING(Q8_3) AND NOT RANGE(Q8_3, 1, 5)) OR (NOT MISSING(Q8_4) AND NOT RANGE(Q8_4, 1, 5)) OR (NOT MISSING(Q8_5) AND NOT RANGE(Q8_5, 1, 5))) V_Q8_RANKING_RANGE = 1.




* Question Q9.


* [ERROR] Response must be one of the seven specified time-saving categories.
COMPUTE V_Q9_INVALID_CODES = 0.
IF ((NOT MISSING(Q9) AND NOT ANY(Q9, '1', '2', '3', '4', '5', '6', '7'))) V_Q9_INVALID_CODES = 1.




* Question Q10.


* [ERROR] Response must be one of the seven specified productivity categories.
COMPUTE V_Q10_INVALID_CODES = 0.
IF ((NOT MISSING(Q10) AND NOT ANY(Q10, '1', '2', '3', '4', '5', '6', '7'))) V_Q10_INVALID_CODES = 1.




* Question Q12.


* [ERROR] Selected responses must be among the six specified activity options.
COMPUTE V_Q12_INVALID_CODES = 0.
IF ((NOT MISSING(Q12) AND NOT ANY(Q12, '1', '2', '3', '4', '5', '6'))) V_Q12_INVALID_CODES = 1.



* [ERROR] Response must be represented as a valid multiple-selection answer for the select-all-that-apply question.
COMPUTE V_Q12_MULTIPLE_RESPONSE = 0.
IF ((NOT MISSING(Q12_1) AND NOT ANY(Q12_1, 0, 1)) OR (NOT MISSING(Q12_2) AND NOT ANY(Q12_2, 0, 1)) OR (NOT MISSING(Q12_3) AND NOT ANY(Q12_3, 0, 1)) OR (NOT MISSING(Q12_4) AND NOT ANY(Q12_4, 0, 1)) OR (NOT MISSING(Q12_5) AND NOT ANY(Q12_5, 0, 1)) OR (NOT MISSING(Q12_6) AND NOT ANY(Q12_6, 0, 1))) V_Q12_MULTIPLE_RESPONSE = 1.





*===============================================================================.
* SECTION Q11: Q11.
*===============================================================================.

* Question Q11_A.


* [ERROR] Response must be one of the five specified agreement or usage categories.
COMPUTE V_Q11_A_INVALID_CODES = 0.
IF ((NOT MISSING(Q11_A) AND NOT ANY(Q11_A, '1', '2', '3', '4', '5'))) V_Q11_A_INVALID_CODES = 1.




* Question Q11_B.


* [ERROR] Response must be one of the five specified agreement or usage categories.
COMPUTE V_Q11_B_INVALID_CODES = 0.
IF ((NOT MISSING(Q11_B) AND NOT ANY(Q11_B, '1', '2', '3', '4', '5'))) V_Q11_B_INVALID_CODES = 1.




* Question Q11_C.


* [ERROR] Response must be one of the five specified agreement or usage categories.
COMPUTE V_Q11_C_INVALID_CODES = 0.
IF ((NOT MISSING(Q11_C) AND NOT ANY(Q11_C, '1', '2', '3', '4', '5'))) V_Q11_C_INVALID_CODES = 1.




* Question Q11_D.


* [ERROR] Response must be one of the five specified agreement or usage categories.
COMPUTE V_Q11_D_INVALID_CODES = 0.
IF ((NOT MISSING(Q11_D) AND NOT ANY(Q11_D, '1', '2', '3', '4', '5'))) V_Q11_D_INVALID_CODES = 1.





*===============================================================================.
* SECTION Q11; BD neXus: Q11; BD neXus.
*===============================================================================.

* Question Q11_E.


* [ERROR] Response must be one of the six specified agreement, usage, or applicability categories.
COMPUTE V_Q11_E_INVALID_CODES = 0.
IF ((NOT MISSING(Q11_E) AND NOT ANY(Q11_E, '1', '2', '3', '4', '5', '6'))) V_Q11_E_INVALID_CODES = 1.





*===============================================================================.
* FINAL VALIDATION SUMMARY.
*===============================================================================.
COMPUTE VALIDATION_OVERALL = MAX(V_Q0_INVALID_CODES, V_Q0_SCREEN_OUT, V_Q1_INVALID_CODES, V_Q1_MULTIPLE_RESPONSE, V_Q2_1_INVALID_CODES, V_Q2_2_INVALID_CODES, V_Q2_3_INVALID_CODES, V_Q2_4_INVALID_CODES, V_Q2_5_INVALID_CODES, V_Q3_1_INVALID_CODES, V_Q3_2_INVALID_CODES, V_Q3_3_INVALID_CODES, V_Q3_4_INVALID_CODES, V_Q3_5_INVALID_CODES, V_Q4_1_INVALID_CODES, V_Q4_2_INVALID_CODES, V_Q4_3_INVALID_CODES, V_Q4_4_INVALID_CODES, V_Q4_5_INVALID_CODES, V_Q5_RANKING, V_Q6_1_INVALID_CODES, V_Q6_2_INVALID_CODES, V_Q6_3_INVALID_CODES, V_Q6_4_INVALID_CODES, V_Q6_5_INVALID_CODES, V_Q7_1_INVALID_CODES, V_Q7_2_INVALID_CODES, V_Q7_3_INVALID_CODES, V_Q7_4_INVALID_CODES, V_Q7_5_INVALID_CODES, V_Q8_RANKING_RANGE, V_Q9_INVALID_CODES, V_Q10_INVALID_CODES, V_Q11_A_INVALID_CODES, V_Q11_B_INVALID_CODES, V_Q11_C_INVALID_CODES, V_Q11_D_INVALID_CODES, V_Q11_E_INVALID_CODES, V_Q12_INVALID_CODES, V_Q12_MULTIPLE_RESPONSE).
FREQUENCIES VARIABLES=V_Q0_INVALID_CODES V_Q0_SCREEN_OUT V_Q1_INVALID_CODES V_Q1_MULTIPLE_RESPONSE V_Q2_1_INVALID_CODES V_Q2_2_INVALID_CODES V_Q2_3_INVALID_CODES V_Q2_4_INVALID_CODES V_Q2_5_INVALID_CODES V_Q3_1_INVALID_CODES V_Q3_2_INVALID_CODES V_Q3_3_INVALID_CODES V_Q3_4_INVALID_CODES V_Q3_5_INVALID_CODES V_Q4_1_INVALID_CODES V_Q4_2_INVALID_CODES V_Q4_3_INVALID_CODES V_Q4_4_INVALID_CODES V_Q4_5_INVALID_CODES V_Q5_RANKING V_Q6_1_INVALID_CODES V_Q6_2_INVALID_CODES V_Q6_3_INVALID_CODES V_Q6_4_INVALID_CODES V_Q6_5_INVALID_CODES V_Q7_1_INVALID_CODES V_Q7_2_INVALID_CODES V_Q7_3_INVALID_CODES V_Q7_4_INVALID_CODES V_Q7_5_INVALID_CODES V_Q8_RANKING_RANGE V_Q9_INVALID_CODES V_Q10_INVALID_CODES V_Q11_A_INVALID_CODES V_Q11_B_INVALID_CODES V_Q11_C_INVALID_CODES V_Q11_D_INVALID_CODES V_Q11_E_INVALID_CODES V_Q12_INVALID_CODES V_Q12_MULTIPLE_RESPONSE VALIDATION_OVERALL.

* MODEL WARNINGS.
* Q11_E contains routing instructions based on use of the BD neXus pump, but no source variable identifying pump use was supplied; the routing condition cannot be represented as a structured applicability predicate without inventing a variable.
* Omitted incomplete model rule: Rule Q8_duplicate_rankings requires at least two variables.


EXECUTE.
