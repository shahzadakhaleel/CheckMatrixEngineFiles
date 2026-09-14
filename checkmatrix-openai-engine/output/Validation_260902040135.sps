* Encoding: UTF-8.
* Generated deterministically by Survey Programming AI.
* Source: (V3_R93941) 12847_BD_Nexus_Post_Market_Surveillance_Qre_260429_James_02.docx.
TITLE 'Nexus Post Market Surveillance Questionnaires for Picot 1 and Picot 2'.
* Project: 12847.


*===============================================================================.
* SECTION Questionnaire for PICOT 1 - “Multistep” or “25 Steps” function.: Questionnaire for PICOT 1 - “Multistep” or “25 Steps” function..
*===============================================================================.

* Question Q0.


* [ERROR] Q0 must contain one of the defined response codes.
COMPUTE V_Q0_INVALID_CODES = 0.
IF ((NOT MISSING(Q0) AND NOT ANY(Q0, 1, 2))) V_Q0_INVALID_CODES = 1.



* [WARNING] Respondents selecting that they have not used the function must follow the thank-and-close outcome.
COMPUTE V_Q0_SCREEN_OUT = 0.
IF (Q0 = 2) V_Q0_SCREEN_OUT = 1.




* Question Q1.


* [ERROR] Q1 permits selection of multiple clinical areas.
COMPUTE V_Q1_MULTIPLE_RESPONSE = 0.
IF ((NOT MISSING(Q1_1) AND NOT ANY(Q1_1, 0, 1)) OR (NOT MISSING(Q1_2) AND NOT ANY(Q1_2, 0, 1)) OR (NOT MISSING(Q1_3) AND NOT ANY(Q1_3, 0, 1)) OR (NOT MISSING(Q1_4) AND NOT ANY(Q1_4, 0, 1)) OR (NOT MISSING(Q1_5) AND NOT ANY(Q1_5, 0, 1)) OR (NOT MISSING(Q1_6) AND NOT ANY(Q1_6, 0, 1)) OR (NOT MISSING(Q1_7) AND NOT ANY(Q1_7, 0, 1)) OR (NOT MISSING(Q1_8) AND NOT ANY(Q1_8, 0, 1)) OR (NOT MISSING(Q1_9) AND NOT ANY(Q1_9, 0, 1)) OR (NOT MISSING(Q1_10) AND NOT ANY(Q1_10, 0, 1)) OR (NOT MISSING(Q1_11) AND NOT ANY(Q1_11, 0, 1)) OR (NOT MISSING(Q1_12) AND NOT ANY(Q1_12, 0, 1))) V_Q1_MULTIPLE_RESPONSE = 1.



* [ERROR] Q1 selections must use one of the defined clinical-area codes.
COMPUTE V_Q1_INVALID_CODES = 0.
IF ((NOT MISSING(Q1) AND NOT ANY(Q1, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12))) V_Q1_INVALID_CODES = 1.



* [WARNING] Q1 is applicable only when the respondent continues after Q0.
COMPUTE V_Q1_ROUTING = 0.
IF (((Q0 = 1) AND (MISSING(Q1))) OR ((NOT (Q0 = 1)) AND (NOT MISSING(Q1)))) V_Q1_ROUTING = 1.





*===============================================================================.
* SECTION Q2: Q2.
*===============================================================================.

* Question Q2_R1.


* [ERROR] Q2_R1 must contain a defined frequency response from 1 through 7.
COMPUTE V_Q2_R1_INVALID_CODES = 0.
IF ((NOT MISSING(Q2_R1) AND NOT ANY(Q2_R1, 1, 2, 3, 4, 5, 6, 7))) V_Q2_R1_INVALID_CODES = 1.



* [WARNING] Q2_R1 is applicable only when the respondent continues after Q0.
COMPUTE V_Q2_R1_ROUTING = 0.
IF (((Q0 = 1) AND (MISSING(Q2_R1))) OR ((NOT (Q0 = 1)) AND (NOT MISSING(Q2_R1)))) V_Q2_R1_ROUTING = 1.




* Question Q2_R2.


* [ERROR] Q2_R2 must contain a defined frequency response from 1 through 7.
COMPUTE V_Q2_R2_INVALID_CODES = 0.
IF ((NOT MISSING(Q2_R2) AND NOT ANY(Q2_R2, 1, 2, 3, 4, 5, 6, 7))) V_Q2_R2_INVALID_CODES = 1.



* [WARNING] Q2_R2 is applicable only when the respondent continues after Q0.
COMPUTE V_Q2_R2_ROUTING = 0.
IF (((Q0 = 1) AND (MISSING(Q2_R2))) OR ((NOT (Q0 = 1)) AND (NOT MISSING(Q2_R2)))) V_Q2_R2_ROUTING = 1.




* Question Q2_R3.


* [ERROR] Q2_R3 must contain a defined frequency response from 1 through 7.
COMPUTE V_Q2_R3_INVALID_CODES = 0.
IF ((NOT MISSING(Q2_R3) AND NOT ANY(Q2_R3, 1, 2, 3, 4, 5, 6, 7))) V_Q2_R3_INVALID_CODES = 1.



* [WARNING] Q2_R3 is applicable only when the respondent continues after Q0.
COMPUTE V_Q2_R3_ROUTING = 0.
IF (((Q0 = 1) AND (MISSING(Q2_R3))) OR ((NOT (Q0 = 1)) AND (NOT MISSING(Q2_R3)))) V_Q2_R3_ROUTING = 1.




* Question Q2_R4.


* [ERROR] Q2_R4 must contain a defined frequency response from 1 through 7.
COMPUTE V_Q2_R4_INVALID_CODES = 0.
IF ((NOT MISSING(Q2_R4) AND NOT ANY(Q2_R4, 1, 2, 3, 4, 5, 6, 7))) V_Q2_R4_INVALID_CODES = 1.



* [WARNING] Q2_R4 is applicable only when the respondent continues after Q0.
COMPUTE V_Q2_R4_ROUTING = 0.
IF (((Q0 = 1) AND (MISSING(Q2_R4))) OR ((NOT (Q0 = 1)) AND (NOT MISSING(Q2_R4)))) V_Q2_R4_ROUTING = 1.




* Question Q2_R5.


* [ERROR] Q2_R5 must contain a defined frequency response from 1 through 7.
COMPUTE V_Q2_R5_INVALID_CODES = 0.
IF ((NOT MISSING(Q2_R5) AND NOT ANY(Q2_R5, 1, 2, 3, 4, 5, 6, 7))) V_Q2_R5_INVALID_CODES = 1.



* [WARNING] Q2_R5 is applicable only when the respondent continues after Q0.
COMPUTE V_Q2_R5_ROUTING = 0.
IF (((Q0 = 1) AND (MISSING(Q2_R5))) OR ((NOT (Q0 = 1)) AND (NOT MISSING(Q2_R5)))) V_Q2_R5_ROUTING = 1.





*===============================================================================.
* SECTION Q3: Q3.
*===============================================================================.

* Question Q3_R1.


* [ERROR] Q3_R1 must contain a defined rating from 1 through 5.
COMPUTE V_Q3_R1_INVALID_CODES = 0.
IF ((NOT MISSING(Q3_R1) AND NOT ANY(Q3_R1, 1, 2, 3, 4, 5))) V_Q3_R1_INVALID_CODES = 1.



* [WARNING] Q3_R1 is applicable only when the respondent continues after Q0.
COMPUTE V_Q3_R1_ROUTING = 0.
IF (((Q0 = 1) AND (MISSING(Q3_R1))) OR ((NOT (Q0 = 1)) AND (NOT MISSING(Q3_R1)))) V_Q3_R1_ROUTING = 1.




* Question Q3_R2.


* [ERROR] Q3_R2 must contain a defined rating from 1 through 5.
COMPUTE V_Q3_R2_INVALID_CODES = 0.
IF ((NOT MISSING(Q3_R2) AND NOT ANY(Q3_R2, 1, 2, 3, 4, 5))) V_Q3_R2_INVALID_CODES = 1.



* [WARNING] Q3_R2 is applicable only when the respondent continues after Q0.
COMPUTE V_Q3_R2_ROUTING = 0.
IF (((Q0 = 1) AND (MISSING(Q3_R2))) OR ((NOT (Q0 = 1)) AND (NOT MISSING(Q3_R2)))) V_Q3_R2_ROUTING = 1.




* Question Q3_R3.


* [ERROR] Q3_R3 must contain a defined rating from 1 through 5.
COMPUTE V_Q3_R3_INVALID_CODES = 0.
IF ((NOT MISSING(Q3_R3) AND NOT ANY(Q3_R3, 1, 2, 3, 4, 5))) V_Q3_R3_INVALID_CODES = 1.



* [WARNING] Q3_R3 is applicable only when the respondent continues after Q0.
COMPUTE V_Q3_R3_ROUTING = 0.
IF (((Q0 = 1) AND (MISSING(Q3_R3))) OR ((NOT (Q0 = 1)) AND (NOT MISSING(Q3_R3)))) V_Q3_R3_ROUTING = 1.




* Question Q3_R4.


* [ERROR] Q3_R4 must contain a defined rating from 1 through 5.
COMPUTE V_Q3_R4_INVALID_CODES = 0.
IF ((NOT MISSING(Q3_R4) AND NOT ANY(Q3_R4, 1, 2, 3, 4, 5))) V_Q3_R4_INVALID_CODES = 1.



* [WARNING] Q3_R4 is applicable only when the respondent continues after Q0.
COMPUTE V_Q3_R4_ROUTING = 0.
IF (((Q0 = 1) AND (MISSING(Q3_R4))) OR ((NOT (Q0 = 1)) AND (NOT MISSING(Q3_R4)))) V_Q3_R4_ROUTING = 1.




* Question Q3_R5.


* [ERROR] Q3_R5 must contain a defined rating from 1 through 5.
COMPUTE V_Q3_R5_INVALID_CODES = 0.
IF ((NOT MISSING(Q3_R5) AND NOT ANY(Q3_R5, 1, 2, 3, 4, 5))) V_Q3_R5_INVALID_CODES = 1.



* [WARNING] Q3_R5 is applicable only when the respondent continues after Q0.
COMPUTE V_Q3_R5_ROUTING = 0.
IF (((Q0 = 1) AND (MISSING(Q3_R5))) OR ((NOT (Q0 = 1)) AND (NOT MISSING(Q3_R5)))) V_Q3_R5_ROUTING = 1.





*===============================================================================.
* SECTION Q4: Q4.
*===============================================================================.

* Question Q4_R1.


* [ERROR] Q4_R1 must contain a defined importance rating from 1 through 5.
COMPUTE V_Q4_R1_INVALID_CODES = 0.
IF ((NOT MISSING(Q4_R1) AND NOT ANY(Q4_R1, 1, 2, 3, 4, 5))) V_Q4_R1_INVALID_CODES = 1.



* [WARNING] Q4_R1 is applicable only when the respondent continues after Q0.
COMPUTE V_Q4_R1_ROUTING = 0.
IF (((Q0 = 1) AND (MISSING(Q4_R1))) OR ((NOT (Q0 = 1)) AND (NOT MISSING(Q4_R1)))) V_Q4_R1_ROUTING = 1.




* Question Q4_R2.


* [ERROR] Q4_R2 must contain a defined importance rating from 1 through 5.
COMPUTE V_Q4_R2_INVALID_CODES = 0.
IF ((NOT MISSING(Q4_R2) AND NOT ANY(Q4_R2, 1, 2, 3, 4, 5))) V_Q4_R2_INVALID_CODES = 1.



* [WARNING] Q4_R2 is applicable only when the respondent continues after Q0.
COMPUTE V_Q4_R2_ROUTING = 0.
IF (((Q0 = 1) AND (MISSING(Q4_R2))) OR ((NOT (Q0 = 1)) AND (NOT MISSING(Q4_R2)))) V_Q4_R2_ROUTING = 1.




* Question Q4_R3.


* [ERROR] Q4_R3 must contain a defined importance rating from 1 through 5.
COMPUTE V_Q4_R3_INVALID_CODES = 0.
IF ((NOT MISSING(Q4_R3) AND NOT ANY(Q4_R3, 1, 2, 3, 4, 5))) V_Q4_R3_INVALID_CODES = 1.



* [WARNING] Q4_R3 is applicable only when the respondent continues after Q0.
COMPUTE V_Q4_R3_ROUTING = 0.
IF (((Q0 = 1) AND (MISSING(Q4_R3))) OR ((NOT (Q0 = 1)) AND (NOT MISSING(Q4_R3)))) V_Q4_R3_ROUTING = 1.




* Question Q4_R4.


* [ERROR] Q4_R4 must contain a defined importance rating from 1 through 5.
COMPUTE V_Q4_R4_INVALID_CODES = 0.
IF ((NOT MISSING(Q4_R4) AND NOT ANY(Q4_R4, 1, 2, 3, 4, 5))) V_Q4_R4_INVALID_CODES = 1.



* [WARNING] Q4_R4 is applicable only when the respondent continues after Q0.
COMPUTE V_Q4_R4_ROUTING = 0.
IF (((Q0 = 1) AND (MISSING(Q4_R4))) OR ((NOT (Q0 = 1)) AND (NOT MISSING(Q4_R4)))) V_Q4_R4_ROUTING = 1.




* Question Q4_R5.


* [ERROR] Q4_R5 must contain a defined importance rating from 1 through 5.
COMPUTE V_Q4_R5_INVALID_CODES = 0.
IF ((NOT MISSING(Q4_R5) AND NOT ANY(Q4_R5, 1, 2, 3, 4, 5))) V_Q4_R5_INVALID_CODES = 1.



* [WARNING] Q4_R5 is applicable only when the respondent continues after Q0.
COMPUTE V_Q4_R5_ROUTING = 0.
IF (((Q0 = 1) AND (MISSING(Q4_R5))) OR ((NOT (Q0 = 1)) AND (NOT MISSING(Q4_R5)))) V_Q4_R5_ROUTING = 1.





*===============================================================================.
* SECTION UNMAPPED: Unmapped validations.
*===============================================================================.

* Question Q5.


* [ERROR] Q5 rankings must use the permitted ranks 1 through 5.
!Rank_ALL_CHK qnt=Q5.
COMPUTE V_Q5_RANKING = 0.
IF ((NOT MISSING(Q5_1) AND NOT RANGE(Q5_1, 1, 5)) OR (NOT MISSING(Q5_2) AND NOT RANGE(Q5_2, 1, 5)) OR (NOT MISSING(Q5_3) AND NOT RANGE(Q5_3, 1, 5)) OR (NOT MISSING(Q5_4) AND NOT RANGE(Q5_4, 1, 5)) OR (NOT MISSING(Q5_5) AND NOT RANGE(Q5_5, 1, 5))) V_Q5_RANKING = 1.



* [WARNING] Q5 is applicable only when the respondent continues after Q0.
COMPUTE V_Q5_ROUTING = 0.
IF (((Q0 = 1) AND (MISSING(Q5))) OR ((NOT (Q0 = 1)) AND (NOT MISSING(Q5)))) V_Q5_ROUTING = 1.




* Question Q8.


* [ERROR] Q8 rankings must use permitted ranks up to 5.
!Rank_ALL_CHK svar=Q8.
COMPUTE V_Q8_RANKING = 0.
IF ((NOT MISSING(Q8_1) AND NOT RANGE(Q8_1, 1, 5)) OR (NOT MISSING(Q8_2) AND NOT RANGE(Q8_2, 1, 5)) OR (NOT MISSING(Q8_3) AND NOT RANGE(Q8_3, 1, 5)) OR (NOT MISSING(Q8_4) AND NOT RANGE(Q8_4, 1, 5)) OR (NOT MISSING(Q8_5) AND NOT RANGE(Q8_5, 1, 5))) V_Q8_RANKING = 1.




* Question Q9.


* [ERROR] Q9 must contain one of the seven listed response codes.
COMPUTE V_Q9_INVALID_CODES = 0.
IF ((NOT MISSING(Q9) AND NOT ANY(Q9, 1, 2, 3, 4, 5, 6, 7))) V_Q9_INVALID_CODES = 1.




* Question Q10.


* [ERROR] Q10 must contain one of the seven listed response codes.
COMPUTE V_Q10_INVALID_CODES = 0.
IF ((NOT MISSING(Q10) AND NOT ANY(Q10, 1, 2, 3, 4, 5, 6, 7))) V_Q10_INVALID_CODES = 1.




* Question Q12.


* [ERROR] Q12 selections must use only the six listed response codes.
COMPUTE V_Q12_INVALID_CODES = 0.
IF ((NOT MISSING(Q12) AND NOT ANY(Q12, 1, 2, 3, 4, 5, 6))) V_Q12_INVALID_CODES = 1.



* [ERROR] Q12 must be processed as a multiple-response question allowing selection of all applicable listed activities.
!MULTI_A svar=Q12.
COMPUTE V_Q12_MULTIPLE_RESPONSE = 0.
IF ((NOT MISSING(Q12_1) AND NOT ANY(Q12_1, 0, 1)) OR (NOT MISSING(Q12_2) AND NOT ANY(Q12_2, 0, 1)) OR (NOT MISSING(Q12_3) AND NOT ANY(Q12_3, 0, 1)) OR (NOT MISSING(Q12_4) AND NOT ANY(Q12_4, 0, 1)) OR (NOT MISSING(Q12_5) AND NOT ANY(Q12_5, 0, 1)) OR (NOT MISSING(Q12_6) AND NOT ANY(Q12_6, 0, 1))) V_Q12_MULTIPLE_RESPONSE = 1.





*===============================================================================.
* SECTION Q6: Q6.
*===============================================================================.

* Question Q6_R1.


* [ERROR] Q6_R1 must contain a defined rating from 1 through 5.
COMPUTE V_Q6_R1_INVALID_CODES = 0.
IF ((NOT MISSING(Q6_R1) AND NOT ANY(Q6_R1, 1, 2, 3, 4, 5))) V_Q6_R1_INVALID_CODES = 1.



* [WARNING] Q6_R1 is applicable only when the respondent continues after Q0.
COMPUTE V_Q6_R1_ROUTING = 0.
IF (((Q0 = 1) AND (MISSING(Q6_R1))) OR ((NOT (Q0 = 1)) AND (NOT MISSING(Q6_R1)))) V_Q6_R1_ROUTING = 1.




* Question Q6_R2.


* [ERROR] Q6_R2 must contain a defined rating from 1 through 5.
COMPUTE V_Q6_R2_INVALID_CODES = 0.
IF ((NOT MISSING(Q6_R2) AND NOT ANY(Q6_R2, 1, 2, 3, 4, 5))) V_Q6_R2_INVALID_CODES = 1.



* [WARNING] Q6_R2 is applicable only when the respondent continues after Q0.
COMPUTE V_Q6_R2_ROUTING = 0.
IF (((Q0 = 1) AND (MISSING(Q6_R2))) OR ((NOT (Q0 = 1)) AND (NOT MISSING(Q6_R2)))) V_Q6_R2_ROUTING = 1.




* Question Q6_R3.


* [ERROR] Q6_R3 must contain a defined rating from 1 through 5.
COMPUTE V_Q6_R3_INVALID_CODES = 0.
IF ((NOT MISSING(Q6_R3) AND NOT ANY(Q6_R3, 1, 2, 3, 4, 5))) V_Q6_R3_INVALID_CODES = 1.



* [WARNING] Q6_R3 is applicable only when the respondent continues after Q0.
COMPUTE V_Q6_R3_ROUTING = 0.
IF (((Q0 = 1) AND (MISSING(Q6_R3))) OR ((NOT (Q0 = 1)) AND (NOT MISSING(Q6_R3)))) V_Q6_R3_ROUTING = 1.




* Question Q6_R4.


* [ERROR] Q6_R4 must contain a defined rating from 1 through 5.
COMPUTE V_Q6_R4_INVALID_CODES = 0.
IF ((NOT MISSING(Q6_R4) AND NOT ANY(Q6_R4, 1, 2, 3, 4, 5))) V_Q6_R4_INVALID_CODES = 1.



* [WARNING] Q6_R4 is applicable only when the respondent continues after Q0.
COMPUTE V_Q6_R4_ROUTING = 0.
IF (((Q0 = 1) AND (MISSING(Q6_R4))) OR ((NOT (Q0 = 1)) AND (NOT MISSING(Q6_R4)))) V_Q6_R4_ROUTING = 1.




* Question Q6_R5.


* [ERROR] Q6_R5 must contain a defined rating from 1 through 5.
COMPUTE V_Q6_R5_INVALID_CODES = 0.
IF ((NOT MISSING(Q6_R5) AND NOT ANY(Q6_R5, 1, 2, 3, 4, 5))) V_Q6_R5_INVALID_CODES = 1.



* [WARNING] Q6_R5 is applicable only when the respondent continues after Q0.
COMPUTE V_Q6_R5_ROUTING = 0.
IF (((Q0 = 1) AND (MISSING(Q6_R5))) OR ((NOT (Q0 = 1)) AND (NOT MISSING(Q6_R5)))) V_Q6_R5_ROUTING = 1.





*===============================================================================.
* SECTION Q7: Q7.
*===============================================================================.

* Question Q7_R1.


* [ERROR] Q7_R1 must contain a defined importance rating from 1 through 5.
COMPUTE V_Q7_R1_INVALID_CODES = 0.
IF ((NOT MISSING(Q7_R1) AND NOT ANY(Q7_R1, 1, 2, 3, 4, 5))) V_Q7_R1_INVALID_CODES = 1.



* [WARNING] Q7_R1 is applicable only when the respondent continues after Q0.
COMPUTE V_Q7_R1_ROUTING = 0.
IF (((Q0 = 1) AND (MISSING(Q7_R1))) OR ((NOT (Q0 = 1)) AND (NOT MISSING(Q7_R1)))) V_Q7_R1_ROUTING = 1.




* Question Q7_R2.


* [ERROR] Q7_R2 must contain a defined importance rating from 1 through 5.
COMPUTE V_Q7_R2_INVALID_CODES = 0.
IF ((NOT MISSING(Q7_R2) AND NOT ANY(Q7_R2, 1, 2, 3, 4, 5))) V_Q7_R2_INVALID_CODES = 1.



* [WARNING] Q7_R2 is applicable only when the respondent continues after Q0.
COMPUTE V_Q7_R2_ROUTING = 0.
IF (((Q0 = 1) AND (MISSING(Q7_R2))) OR ((NOT (Q0 = 1)) AND (NOT MISSING(Q7_R2)))) V_Q7_R2_ROUTING = 1.




* Question Q7_R3.


* [ERROR] Q7_R3 must contain a valid importance rating from 1 to 5.
COMPUTE V_Q7_R3_INVALID_CODES = 0.
IF ((NOT MISSING(Q7_R3) AND NOT ANY(Q7_R3, 1, 2, 3, 4, 5))) V_Q7_R3_INVALID_CODES = 1.




* Question Q7_R4.


* [ERROR] Q7_R4 must contain a valid importance rating from 1 to 5.
COMPUTE V_Q7_R4_INVALID_CODES = 0.
IF ((NOT MISSING(Q7_R4) AND NOT ANY(Q7_R4, 1, 2, 3, 4, 5))) V_Q7_R4_INVALID_CODES = 1.




* Question Q7_R5.


* [ERROR] Q7_R5 must contain a valid importance rating from 1 to 5.
COMPUTE V_Q7_R5_INVALID_CODES = 0.
IF ((NOT MISSING(Q7_R5) AND NOT ANY(Q7_R5, 1, 2, 3, 4, 5))) V_Q7_R5_INVALID_CODES = 1.





*===============================================================================.
* SECTION Q11: Q11.
*===============================================================================.

* Question Q11_A.


* [ERROR] Q11_A must contain one of the five listed response codes.
COMPUTE V_Q11_A_INVALID_CODES = 0.
IF ((NOT MISSING(Q11_A) AND NOT ANY(Q11_A, 1, 2, 3, 4, 5))) V_Q11_A_INVALID_CODES = 1.




* Question Q11_B.


* [ERROR] Q11_B must contain one of the five listed response codes.
COMPUTE V_Q11_B_INVALID_CODES = 0.
IF ((NOT MISSING(Q11_B) AND NOT ANY(Q11_B, 1, 2, 3, 4, 5))) V_Q11_B_INVALID_CODES = 1.




* Question Q11_C.


* [ERROR] Q11_C must contain one of the five listed response codes.
COMPUTE V_Q11_C_INVALID_CODES = 0.
IF ((NOT MISSING(Q11_C) AND NOT ANY(Q11_C, 1, 2, 3, 4, 5))) V_Q11_C_INVALID_CODES = 1.




* Question Q11_D.


* [ERROR] Q11_D must contain one of the five listed response codes.
COMPUTE V_Q11_D_INVALID_CODES = 0.
IF ((NOT MISSING(Q11_D) AND NOT ANY(Q11_D, 1, 2, 3, 4, 5))) V_Q11_D_INVALID_CODES = 1.




* Question Q11_E.


* [ERROR] Q11_E must contain one of the six listed response codes, including the not-applicable option.
COMPUTE V_Q11_E_INVALID_CODES = 0.
IF ((NOT MISSING(Q11_E) AND NOT ANY(Q11_E, 1, 2, 3, 4, 5, 6))) V_Q11_E_INVALID_CODES = 1.





*===============================================================================.
* FINAL VALIDATION SUMMARY.
*===============================================================================.
COMPUTE VALIDATION_OVERALL = MAX(V_Q0_INVALID_CODES, V_Q0_SCREEN_OUT, V_Q1_MULTIPLE_RESPONSE, V_Q1_INVALID_CODES, V_Q1_ROUTING, V_Q2_R1_INVALID_CODES, V_Q2_R1_ROUTING, V_Q2_R2_INVALID_CODES, V_Q2_R2_ROUTING, V_Q2_R3_INVALID_CODES, V_Q2_R3_ROUTING, V_Q2_R4_INVALID_CODES, V_Q2_R4_ROUTING, V_Q2_R5_INVALID_CODES, V_Q2_R5_ROUTING, V_Q3_R1_INVALID_CODES, V_Q3_R1_ROUTING, V_Q3_R2_INVALID_CODES, V_Q3_R2_ROUTING, V_Q3_R3_INVALID_CODES, V_Q3_R3_ROUTING, V_Q3_R4_INVALID_CODES, V_Q3_R4_ROUTING, V_Q3_R5_INVALID_CODES, V_Q3_R5_ROUTING, V_Q4_R1_INVALID_CODES, V_Q4_R1_ROUTING, V_Q4_R2_INVALID_CODES, V_Q4_R2_ROUTING, V_Q4_R3_INVALID_CODES, V_Q4_R3_ROUTING, V_Q4_R4_INVALID_CODES, V_Q4_R4_ROUTING, V_Q4_R5_INVALID_CODES, V_Q4_R5_ROUTING, V_Q5_RANKING, V_Q5_ROUTING, V_Q6_R1_INVALID_CODES, V_Q6_R1_ROUTING, V_Q6_R2_INVALID_CODES, V_Q6_R2_ROUTING, V_Q6_R3_INVALID_CODES, V_Q6_R3_ROUTING, V_Q6_R4_INVALID_CODES, V_Q6_R4_ROUTING, V_Q6_R5_INVALID_CODES, V_Q6_R5_ROUTING, V_Q7_R1_INVALID_CODES, V_Q7_R1_ROUTING, V_Q7_R2_INVALID_CODES, V_Q7_R2_ROUTING, V_Q7_R3_INVALID_CODES, V_Q7_R4_INVALID_CODES, V_Q7_R5_INVALID_CODES, V_Q8_RANKING, V_Q9_INVALID_CODES, V_Q10_INVALID_CODES, V_Q11_A_INVALID_CODES, V_Q11_B_INVALID_CODES, V_Q11_C_INVALID_CODES, V_Q11_D_INVALID_CODES, V_Q11_E_INVALID_CODES, V_Q12_INVALID_CODES, V_Q12_MULTIPLE_RESPONSE).
FREQUENCIES VARIABLES=V_Q0_INVALID_CODES V_Q0_SCREEN_OUT V_Q1_MULTIPLE_RESPONSE V_Q1_INVALID_CODES V_Q1_ROUTING V_Q2_R1_INVALID_CODES V_Q2_R1_ROUTING V_Q2_R2_INVALID_CODES V_Q2_R2_ROUTING V_Q2_R3_INVALID_CODES V_Q2_R3_ROUTING V_Q2_R4_INVALID_CODES V_Q2_R4_ROUTING V_Q2_R5_INVALID_CODES V_Q2_R5_ROUTING V_Q3_R1_INVALID_CODES V_Q3_R1_ROUTING V_Q3_R2_INVALID_CODES V_Q3_R2_ROUTING V_Q3_R3_INVALID_CODES V_Q3_R3_ROUTING V_Q3_R4_INVALID_CODES V_Q3_R4_ROUTING V_Q3_R5_INVALID_CODES V_Q3_R5_ROUTING V_Q4_R1_INVALID_CODES V_Q4_R1_ROUTING V_Q4_R2_INVALID_CODES V_Q4_R2_ROUTING V_Q4_R3_INVALID_CODES V_Q4_R3_ROUTING V_Q4_R4_INVALID_CODES V_Q4_R4_ROUTING V_Q4_R5_INVALID_CODES V_Q4_R5_ROUTING V_Q5_RANKING V_Q5_ROUTING V_Q6_R1_INVALID_CODES V_Q6_R1_ROUTING V_Q6_R2_INVALID_CODES V_Q6_R2_ROUTING V_Q6_R3_INVALID_CODES V_Q6_R3_ROUTING V_Q6_R4_INVALID_CODES V_Q6_R4_ROUTING V_Q6_R5_INVALID_CODES V_Q6_R5_ROUTING V_Q7_R1_INVALID_CODES V_Q7_R1_ROUTING V_Q7_R2_INVALID_CODES V_Q7_R2_ROUTING V_Q7_R3_INVALID_CODES V_Q7_R4_INVALID_CODES V_Q7_R5_INVALID_CODES V_Q8_RANKING V_Q9_INVALID_CODES V_Q10_INVALID_CODES V_Q11_A_INVALID_CODES V_Q11_B_INVALID_CODES V_Q11_C_INVALID_CODES V_Q11_D_INVALID_CODES V_Q11_E_INVALID_CODES V_Q12_INVALID_CODES V_Q12_MULTIPLE_RESPONSE VALIDATION_OVERALL.


* MODEL NOTES.
* The supplied questions are explicitly marked as not required, so no mandatory or missing-response rules were added.
* No separate open-text variable was supplied for the Q12 “Other, please specify” option; therefore no other-specify consistency rule was added.

EXECUTE.
