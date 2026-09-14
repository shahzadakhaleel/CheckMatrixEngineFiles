* Encoding: UTF-8.
* Generated deterministically by Survey Programming AI.
* Source: (V3_R93941) 12847_BD_Nexus_Post_Market_Surveillance_Qre_260429_James_02.docx.
TITLE 'Nexus Post Market Surveillance Questionnaires for Picot 1 and Picot 2 — Questionnaire for PICOT 1 - “Multistep” or “25 Steps” function'.
* Project: 12847.


*===============================================================================.
* SECTION Questionnaire for PICOT 1 - “Multistep” or “25 Steps” function.: Questionnaire for PICOT 1 - “Multistep” or “25 Steps” function..
*===============================================================================.

* Question Q0.


* [ERROR] Q0 must contain one of the defined response codes.
COMPUTE V_Q0_INVALID_CODES = 0.
IF ((NOT MISSING(Q0) AND NOT ANY(Q0, 1, 2))) V_Q0_INVALID_CODES = 1.



* [WARNING] Selecting that the respondent has not used the function indicates the questionnaire should thank and close.
COMPUTE V_Q0_SCREEN_OUT = 0.
IF (Q0 = 2) V_Q0_SCREEN_OUT = 1.




* Question Q1.


* [ERROR] Q1 selections must use the defined clinical-area response codes.
COMPUTE V_Q1_INVALID_CODES = 0.
IF ((NOT MISSING(Q1) AND NOT ANY(Q1, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12))) V_Q1_INVALID_CODES = 1.



* [ERROR] Q1 is a select-all-that-apply question and must be represented as a valid multiple-response field.
COMPUTE V_Q1_MULTI_RESPONSE = 0.
IF ((NOT MISSING(Q1_1) AND NOT ANY(Q1_1, 0, 1)) OR (NOT MISSING(Q1_2) AND NOT ANY(Q1_2, 0, 1)) OR (NOT MISSING(Q1_3) AND NOT ANY(Q1_3, 0, 1)) OR (NOT MISSING(Q1_4) AND NOT ANY(Q1_4, 0, 1)) OR (NOT MISSING(Q1_5) AND NOT ANY(Q1_5, 0, 1)) OR (NOT MISSING(Q1_6) AND NOT ANY(Q1_6, 0, 1)) OR (NOT MISSING(Q1_7) AND NOT ANY(Q1_7, 0, 1)) OR (NOT MISSING(Q1_8) AND NOT ANY(Q1_8, 0, 1)) OR (NOT MISSING(Q1_9) AND NOT ANY(Q1_9, 0, 1)) OR (NOT MISSING(Q1_10) AND NOT ANY(Q1_10, 0, 1)) OR (NOT MISSING(Q1_11) AND NOT ANY(Q1_11, 0, 1)) OR (NOT MISSING(Q1_12) AND NOT ANY(Q1_12, 0, 1))) V_Q1_MULTI_RESPONSE = 1.





*===============================================================================.
* SECTION Q2: Q2.
*===============================================================================.

* Question Q2_1.


* [ERROR] Q2_1 must contain one of the seven defined frequency response codes.
COMPUTE V_Q2_1_INVALID_CODES = 0.
IF ((NOT MISSING(Q2_1) AND NOT ANY(Q2_1, 1, 2, 3, 4, 5, 6, 7))) V_Q2_1_INVALID_CODES = 1.




* Question Q2_2.


* [ERROR] Q2_2 must contain one of the seven defined frequency response codes.
COMPUTE V_Q2_2_INVALID_CODES = 0.
IF ((NOT MISSING(Q2_2) AND NOT ANY(Q2_2, 1, 2, 3, 4, 5, 6, 7))) V_Q2_2_INVALID_CODES = 1.




* Question Q2_3.


* [ERROR] Q2_3 must contain one of the seven defined frequency response codes.
COMPUTE V_Q2_3_INVALID_CODES = 0.
IF ((NOT MISSING(Q2_3) AND NOT ANY(Q2_3, 1, 2, 3, 4, 5, 6, 7))) V_Q2_3_INVALID_CODES = 1.




* Question Q2_4.


* [ERROR] Q2_4 must contain one of the seven defined frequency response codes.
COMPUTE V_Q2_4_INVALID_CODES = 0.
IF ((NOT MISSING(Q2_4) AND NOT ANY(Q2_4, 1, 2, 3, 4, 5, 6, 7))) V_Q2_4_INVALID_CODES = 1.




* Question Q2_5.


* [ERROR] Q2_5 must contain one of the seven defined frequency response codes.
COMPUTE V_Q2_5_INVALID_CODES = 0.
IF ((NOT MISSING(Q2_5) AND NOT ANY(Q2_5, 1, 2, 3, 4, 5, 6, 7))) V_Q2_5_INVALID_CODES = 1.





*===============================================================================.
* SECTION Q3: Q3.
*===============================================================================.

* Question Q3.


* [ERROR] Q3 ratings must use the defined five-point response scale.
COMPUTE V_Q3_INVALID_CODES = 0.
IF ((NOT MISSING(Q3) AND NOT ANY(Q3, 1, 2, 3, 4, 5))) V_Q3_INVALID_CODES = 1.





*===============================================================================.
* SECTION Q4: Q4.
*===============================================================================.

* Question Q4.


* [ERROR] Q4 ratings must use the defined five-point importance scale.
COMPUTE V_Q4_INVALID_CODES = 0.
IF ((NOT MISSING(Q4) AND NOT ANY(Q4, 1, 2, 3, 4, 5))) V_Q4_INVALID_CODES = 1.





*===============================================================================.
* SECTION Q5: Q5.
*===============================================================================.

* Question Q5.


* [ERROR] Q5 rankings must use permitted ranks through rank 5.
COMPUTE V_Q5_RANKING = 0.
IF ((NOT MISSING(Q5_1) AND NOT RANGE(Q5_1, 1, 5)) OR (NOT MISSING(Q5_2) AND NOT RANGE(Q5_2, 1, 5)) OR (NOT MISSING(Q5_3) AND NOT RANGE(Q5_3, 1, 5)) OR (NOT MISSING(Q5_4) AND NOT RANGE(Q5_4, 1, 5)) OR (NOT MISSING(Q5_5) AND NOT RANGE(Q5_5, 1, 5))) V_Q5_RANKING = 1.





*===============================================================================.
* SECTION Q6: Q6.
*===============================================================================.

* Question Q6.


* [ERROR] Q6 ratings must use the defined five-point response scale.
COMPUTE V_Q6_INVALID_CODES = 0.
IF ((NOT MISSING(Q6) AND NOT ANY(Q6, 1, 2, 3, 4, 5))) V_Q6_INVALID_CODES = 1.





*===============================================================================.
* SECTION Q7: Q7.
*===============================================================================.

* Question Q7.


* [ERROR] Q7 ratings must use the defined five-point importance scale.
COMPUTE V_Q7_INVALID_CODES = 0.
IF ((NOT MISSING(Q7) AND NOT ANY(Q7, 1, 2, 3, 4, 5))) V_Q7_INVALID_CODES = 1.





*===============================================================================.
* SECTION Q8: Q8.
*===============================================================================.

* Question Q8.


* [ERROR] Q8 rankings must use permitted ranks through rank 5.
COMPUTE V_Q8_RANKING = 0.
IF ((NOT MISSING(Q8_1) AND NOT RANGE(Q8_1, 1, 5)) OR (NOT MISSING(Q8_2) AND NOT RANGE(Q8_2, 1, 5)) OR (NOT MISSING(Q8_3) AND NOT RANGE(Q8_3, 1, 5)) OR (NOT MISSING(Q8_4) AND NOT RANGE(Q8_4, 1, 5)) OR (NOT MISSING(Q8_5) AND NOT RANGE(Q8_5, 1, 5))) V_Q8_RANKING = 1.





*===============================================================================.
* SECTION Q9-Q10 estimation: Q9-Q10 estimation.
*===============================================================================.

* Question Q9.


* [ERROR] Q9 must contain one of the seven defined time-saving response codes.
COMPUTE V_Q9_INVALID_CODES = 0.
IF ((NOT MISSING(Q9) AND NOT ANY(Q9, 1, 2, 3, 4, 5, 6, 7))) V_Q9_INVALID_CODES = 1.




* Question Q10.


* [ERROR] Q10 must contain one of the seven defined productivity response codes.
COMPUTE V_Q10_INVALID_CODES = 0.
IF ((NOT MISSING(Q10) AND NOT ANY(Q10, 1, 2, 3, 4, 5, 6, 7))) V_Q10_INVALID_CODES = 1.





*===============================================================================.
* SECTION Q11: Q11.
*===============================================================================.

* Question Q11_A.


* [ERROR] Q11_A must contain one of the five defined response codes.
COMPUTE V_Q11_A_INVALID_CODES = 0.
IF ((NOT MISSING(Q11_A) AND NOT ANY(Q11_A, 1, 2, 3, 4, 5))) V_Q11_A_INVALID_CODES = 1.




* Question Q11_B.


* [ERROR] Q11_B must contain one of the five defined response codes.
COMPUTE V_Q11_B_INVALID_CODES = 0.
IF ((NOT MISSING(Q11_B) AND NOT ANY(Q11_B, 1, 2, 3, 4, 5))) V_Q11_B_INVALID_CODES = 1.




* Question Q11_C.


* [ERROR] Q11_C must contain one of the five defined response codes.
COMPUTE V_Q11_C_INVALID_CODES = 0.
IF ((NOT MISSING(Q11_C) AND NOT ANY(Q11_C, 1, 2, 3, 4, 5))) V_Q11_C_INVALID_CODES = 1.




* Question Q11_D.


* [ERROR] Q11_D must contain one of the five defined response codes.
COMPUTE V_Q11_D_INVALID_CODES = 0.
IF ((NOT MISSING(Q11_D) AND NOT ANY(Q11_D, 1, 2, 3, 4, 5))) V_Q11_D_INVALID_CODES = 1.





*===============================================================================.
* SECTION Q11 — BD neXus: Q11 — BD neXus.
*===============================================================================.

* Question Q11_E.


* [ERROR] Q11_E must contain one of the six defined response codes.
COMPUTE V_Q11_E_INVALID_CODES = 0.
IF ((NOT MISSING(Q11_E) AND NOT ANY(Q11_E, 1, 2, 3, 4, 5, 6))) V_Q11_E_INVALID_CODES = 1.





*===============================================================================.
* SECTION Q12: Q12.
*===============================================================================.

* Question Q12.


* [ERROR] Q12 selections must use the defined activity response codes.
COMPUTE V_Q12_INVALID_CODES = 0.
IF ((NOT MISSING(Q12) AND NOT ANY(Q12, 1, 2, 3, 4, 5, 6))) V_Q12_INVALID_CODES = 1.



* [ERROR] Q12 is a select-all-that-apply question and must be represented as a valid multiple-response field.
COMPUTE V_Q12_MULTI_RESPONSE = 0.
IF ((NOT MISSING(Q12_1) AND NOT ANY(Q12_1, 0, 1)) OR (NOT MISSING(Q12_2) AND NOT ANY(Q12_2, 0, 1)) OR (NOT MISSING(Q12_3) AND NOT ANY(Q12_3, 0, 1)) OR (NOT MISSING(Q12_4) AND NOT ANY(Q12_4, 0, 1)) OR (NOT MISSING(Q12_5) AND NOT ANY(Q12_5, 0, 1)) OR (NOT MISSING(Q12_6) AND NOT ANY(Q12_6, 0, 1))) V_Q12_MULTI_RESPONSE = 1.





*===============================================================================.
* FINAL VALIDATION SUMMARY.
*===============================================================================.
COMPUTE VALIDATION_OVERALL = MAX(V_Q0_INVALID_CODES, V_Q0_SCREEN_OUT, V_Q1_INVALID_CODES, V_Q1_MULTI_RESPONSE, V_Q2_1_INVALID_CODES, V_Q2_2_INVALID_CODES, V_Q2_3_INVALID_CODES, V_Q2_4_INVALID_CODES, V_Q2_5_INVALID_CODES, V_Q3_INVALID_CODES, V_Q4_INVALID_CODES, V_Q5_RANKING, V_Q6_INVALID_CODES, V_Q7_INVALID_CODES, V_Q8_RANKING, V_Q9_INVALID_CODES, V_Q10_INVALID_CODES, V_Q11_A_INVALID_CODES, V_Q11_B_INVALID_CODES, V_Q11_C_INVALID_CODES, V_Q11_D_INVALID_CODES, V_Q11_E_INVALID_CODES, V_Q12_INVALID_CODES, V_Q12_MULTI_RESPONSE).
FREQUENCIES VARIABLES=V_Q0_INVALID_CODES V_Q0_SCREEN_OUT V_Q1_INVALID_CODES V_Q1_MULTI_RESPONSE V_Q2_1_INVALID_CODES V_Q2_2_INVALID_CODES V_Q2_3_INVALID_CODES V_Q2_4_INVALID_CODES V_Q2_5_INVALID_CODES V_Q3_INVALID_CODES V_Q4_INVALID_CODES V_Q5_RANKING V_Q6_INVALID_CODES V_Q7_INVALID_CODES V_Q8_RANKING V_Q9_INVALID_CODES V_Q10_INVALID_CODES V_Q11_A_INVALID_CODES V_Q11_B_INVALID_CODES V_Q11_C_INVALID_CODES V_Q11_D_INVALID_CODES V_Q11_E_INVALID_CODES V_Q12_INVALID_CODES V_Q12_MULTI_RESPONSE VALIDATION_OVERALL.

* MODEL WARNINGS.
* Q11_E includes routing text based on use of the BD neXus pump, but the questionnaire does not provide a variable identifying BD neXus pump use; therefore no structured routing rule was added.


EXECUTE.
