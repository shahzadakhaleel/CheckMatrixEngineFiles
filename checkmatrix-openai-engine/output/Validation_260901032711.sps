* Encoding: UTF-8.
* Generated deterministically by Survey Programming AI.
* Source: (V3_R93941) 12847_BD_Nexus_Post_Market_Surveillance_Qre_260429_James_02.docx.
TITLE 'Nexus Post Market Surveillance Questionnaires for Picot 1 and Picot 2'.
* Project: 12847.


*===============================================================================.
* SECTION Questionnaire for PICOT 1 - “Multistep” or “25 Steps” function.: Questionnaire for PICOT 1 - “Multistep” or “25 Steps” function..
*===============================================================================.

* Question Q0.


* [ERROR] Response must use one of the defined consent/usage codes.
COMPUTE V_Q0_INVALID_CODES = 0.
IF ((NOT MISSING(Q0) AND NOT ANY(Q0, 1, 2))) V_Q0_INVALID_CODES = 1.



* [ERROR] Respondents selecting that they have not used the function are thanked and the questionnaire is closed.
COMPUTE V_Q0_SCREEN_OUT = 0.
IF (Q0 = 2) V_Q0_SCREEN_OUT = 1.




* Question Q1.


* [ERROR] Responses must conform to the select-all-that-apply format.
COMPUTE V_Q1_MULTIPLE_RESPONSE = 0.
IF ((NOT MISSING(Q1_1) AND NOT ANY(Q1_1, 0, 1)) OR (NOT MISSING(Q1_2) AND NOT ANY(Q1_2, 0, 1)) OR (NOT MISSING(Q1_3) AND NOT ANY(Q1_3, 0, 1)) OR (NOT MISSING(Q1_4) AND NOT ANY(Q1_4, 0, 1)) OR (NOT MISSING(Q1_5) AND NOT ANY(Q1_5, 0, 1)) OR (NOT MISSING(Q1_6) AND NOT ANY(Q1_6, 0, 1)) OR (NOT MISSING(Q1_7) AND NOT ANY(Q1_7, 0, 1)) OR (NOT MISSING(Q1_8) AND NOT ANY(Q1_8, 0, 1)) OR (NOT MISSING(Q1_9) AND NOT ANY(Q1_9, 0, 1)) OR (NOT MISSING(Q1_10) AND NOT ANY(Q1_10, 0, 1)) OR (NOT MISSING(Q1_11) AND NOT ANY(Q1_11, 0, 1)) OR (NOT MISSING(Q1_12) AND NOT ANY(Q1_12, 0, 1))) V_Q1_MULTIPLE_RESPONSE = 1.



* [ERROR] Selected clinical-area codes must be among the defined options.
COMPUTE V_Q1_INVALID_CODES = 0.
IF ((NOT MISSING(Q1) AND NOT ANY(Q1, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12))) V_Q1_INVALID_CODES = 1.





*===============================================================================.
* SECTION Q2–Q8 rating and ranking questions: Q2–Q8 rating and ranking questions.
*===============================================================================.

* Question Q2_01.


* [ERROR] IVIG frequency must use a defined scale code from 1 through 7.
COMPUTE V_Q2_01_INVALID_CODES = 0.
IF ((NOT MISSING(Q2_01) AND NOT ANY(Q2_01, 1, 2, 3, 4, 5, 6, 7))) V_Q2_01_INVALID_CODES = 1.




* Question Q2_02.


* [ERROR] Monoclonal-antibody frequency must use a defined scale code from 1 through 7.
COMPUTE V_Q2_02_INVALID_CODES = 0.
IF ((NOT MISSING(Q2_02) AND NOT ANY(Q2_02, 1, 2, 3, 4, 5, 6, 7))) V_Q2_02_INVALID_CODES = 1.




* Question Q2_03.


* [ERROR] Blood-product frequency must use a defined scale code from 1 through 7.
COMPUTE V_Q2_03_INVALID_CODES = 0.
IF ((NOT MISSING(Q2_03) AND NOT ANY(Q2_03, 1, 2, 3, 4, 5, 6, 7))) V_Q2_03_INVALID_CODES = 1.




* Question Q2_04.


* [ERROR] Beta-interferon frequency must use a defined scale code from 1 through 7.
COMPUTE V_Q2_04_INVALID_CODES = 0.
IF ((NOT MISSING(Q2_04) AND NOT ANY(Q2_04, 1, 2, 3, 4, 5, 6, 7))) V_Q2_04_INVALID_CODES = 1.




* Question Q2_05.


* [ERROR] Other-medication frequency must use a defined scale code from 1 through 7.
COMPUTE V_Q2_05_INVALID_CODES = 0.
IF ((NOT MISSING(Q2_05) AND NOT ANY(Q2_05, 1, 2, 3, 4, 5, 6, 7))) V_Q2_05_INVALID_CODES = 1.




* Question Q3_01.


* [ERROR] Increased-medication-safety rating must use a defined code from 1 through 5.
COMPUTE V_Q3_01_INVALID_CODES = 0.
IF ((NOT MISSING(Q3_01) AND NOT ANY(Q3_01, 1, 2, 3, 4, 5))) V_Q3_01_INVALID_CODES = 1.




* Question Q3_02.


* [ERROR] Workflow-efficiency rating must use a defined code from 1 through 5.
COMPUTE V_Q3_02_INVALID_CODES = 0.
IF ((NOT MISSING(Q3_02) AND NOT ANY(Q3_02, 1, 2, 3, 4, 5))) V_Q3_02_INVALID_CODES = 1.




* Question Q3_03.


* [ERROR] Clinical-care-time rating must use a defined code from 1 through 5.
COMPUTE V_Q3_03_INVALID_CODES = 0.
IF ((NOT MISSING(Q3_03) AND NOT ANY(Q3_03, 1, 2, 3, 4, 5))) V_Q3_03_INVALID_CODES = 1.




* Question Q3_04.


* [ERROR] Medication-error-risk rating must use a defined code from 1 through 5.
COMPUTE V_Q3_04_INVALID_CODES = 0.
IF ((NOT MISSING(Q3_04) AND NOT ANY(Q3_04, 1, 2, 3, 4, 5))) V_Q3_04_INVALID_CODES = 1.




* Question Q3_05.


* [ERROR] Therapy-completion rating must use a defined code from 1 through 5.
COMPUTE V_Q3_05_INVALID_CODES = 0.
IF ((NOT MISSING(Q3_05) AND NOT ANY(Q3_05, 1, 2, 3, 4, 5))) V_Q3_05_INVALID_CODES = 1.




* Question Q4_01.


* [ERROR] Medication-safety value rating must use a defined code from 1 through 5.
COMPUTE V_Q4_01_INVALID_CODES = 0.
IF ((NOT MISSING(Q4_01) AND NOT ANY(Q4_01, 1, 2, 3, 4, 5))) V_Q4_01_INVALID_CODES = 1.




* Question Q4_02.


* [ERROR] Workflow-efficiency value rating must use a defined code from 1 through 5.
COMPUTE V_Q4_02_INVALID_CODES = 0.
IF ((NOT MISSING(Q4_02) AND NOT ANY(Q4_02, 1, 2, 3, 4, 5))) V_Q4_02_INVALID_CODES = 1.




* Question Q4_03.


* [ERROR] Clinical-care-time value rating must use a defined code from 1 through 5.
COMPUTE V_Q4_03_INVALID_CODES = 0.
IF ((NOT MISSING(Q4_03) AND NOT ANY(Q4_03, 1, 2, 3, 4, 5))) V_Q4_03_INVALID_CODES = 1.




* Question Q4_04.


* [ERROR] Medication-error-risk value rating must use a defined code from 1 through 5.
COMPUTE V_Q4_04_INVALID_CODES = 0.
IF ((NOT MISSING(Q4_04) AND NOT ANY(Q4_04, 1, 2, 3, 4, 5))) V_Q4_04_INVALID_CODES = 1.




* Question Q4_05.


* [ERROR] Therapy-completion value rating must use a defined code from 1 through 5.
COMPUTE V_Q4_05_INVALID_CODES = 0.
IF ((NOT MISSING(Q4_05) AND NOT ANY(Q4_05, 1, 2, 3, 4, 5))) V_Q4_05_INVALID_CODES = 1.




* Question Q5.


* [ERROR] Outcome rankings must use the permitted ranking scale from 1 through 5.
!Rank_ALL_CHK svar=Q5 qnt=Q5 rank=5.
COMPUTE V_Q5_RANKING = 0.
IF ((NOT MISSING(Q5_1) AND NOT RANGE(Q5_1, 1, 5)) OR (NOT MISSING(Q5_2) AND NOT RANGE(Q5_2, 1, 5)) OR (NOT MISSING(Q5_3) AND NOT RANGE(Q5_3, 1, 5)) OR (NOT MISSING(Q5_4) AND NOT RANGE(Q5_4, 1, 5)) OR (NOT MISSING(Q5_5) AND NOT RANGE(Q5_5, 1, 5))) V_Q5_RANKING = 1.




* Question Q6_01.


* [ERROR] Manual-intervention capability rating must use a defined code from 1 through 5.
COMPUTE V_Q6_01_INVALID_CODES = 0.
IF ((NOT MISSING(Q6_01) AND NOT ANY(Q6_01, 1, 2, 3, 4, 5))) V_Q6_01_INVALID_CODES = 1.




* Question Q6_02.


* [ERROR] Dosing-process automation rating must use a defined code from 1 through 5.
COMPUTE V_Q6_02_INVALID_CODES = 0.
IF ((NOT MISSING(Q6_02) AND NOT ANY(Q6_02, 1, 2, 3, 4, 5))) V_Q6_02_INVALID_CODES = 1.




* Question Q6_03.


* [ERROR] One-check-process capability rating must use a defined code from 1 through 5.
COMPUTE V_Q6_03_INVALID_CODES = 0.
IF ((NOT MISSING(Q6_03) AND NOT ANY(Q6_03, 1, 2, 3, 4, 5))) V_Q6_03_INVALID_CODES = 1.




* Question Q6_04.


* [ERROR] Prescription-mapping capability rating must use a defined code from 1 through 5.
COMPUTE V_Q6_04_INVALID_CODES = 0.
IF ((NOT MISSING(Q6_04) AND NOT ANY(Q6_04, 1, 2, 3, 4, 5))) V_Q6_04_INVALID_CODES = 1.




* Question Q6_05.


* [ERROR] Manufacturer-instructions capability rating must use a defined code from 1 through 5.
COMPUTE V_Q6_05_INVALID_CODES = 0.
IF ((NOT MISSING(Q6_05) AND NOT ANY(Q6_05, 1, 2, 3, 4, 5))) V_Q6_05_INVALID_CODES = 1.




* Question Q7_01.


* [ERROR] Manual-intervention value rating must use a defined code from 1 through 5.
COMPUTE V_Q7_01_INVALID_CODES = 0.
IF ((NOT MISSING(Q7_01) AND NOT ANY(Q7_01, 1, 2, 3, 4, 5))) V_Q7_01_INVALID_CODES = 1.




* Question Q7_02.


* [ERROR] Dosing-process automation value rating must use a defined code from 1 through 5.
COMPUTE V_Q7_02_INVALID_CODES = 0.
IF ((NOT MISSING(Q7_02) AND NOT ANY(Q7_02, 1, 2, 3, 4, 5))) V_Q7_02_INVALID_CODES = 1.




* Question Q7_03.


* [ERROR] Accept only the defined 1-to-5 importance response codes.
COMPUTE V_Q7_03_INVALID_CODES = 0.
IF ((NOT MISSING(Q7_03) AND NOT ANY(Q7_03, '1', '2', '3', '4', '5'))) V_Q7_03_INVALID_CODES = 1.




* Question Q7_04.


* [ERROR] Accept only the defined 1-to-5 importance response codes.
COMPUTE V_Q7_04_INVALID_CODES = 0.
IF ((NOT MISSING(Q7_04) AND NOT ANY(Q7_04, '1', '2', '3', '4', '5'))) V_Q7_04_INVALID_CODES = 1.




* Question Q7_05.


* [ERROR] Accept only the defined 1-to-5 importance response codes.
COMPUTE V_Q7_05_INVALID_CODES = 0.
IF ((NOT MISSING(Q7_05) AND NOT ANY(Q7_05, '1', '2', '3', '4', '5'))) V_Q7_05_INVALID_CODES = 1.




* Question Q8.


* [ERROR] Validate rankings within the defined five-position ranking scale.
!Rank_ALL_CHK svar=Q8 qnt=Q8.
COMPUTE V_Q8_RANKING = 0.
IF ((NOT MISSING(Q8_1) AND NOT RANGE(Q8_1, 1, 5)) OR (NOT MISSING(Q8_2) AND NOT RANGE(Q8_2, 1, 5)) OR (NOT MISSING(Q8_3) AND NOT RANGE(Q8_3, 1, 5)) OR (NOT MISSING(Q8_4) AND NOT RANGE(Q8_4, 1, 5)) OR (NOT MISSING(Q8_5) AND NOT RANGE(Q8_5, 1, 5))) V_Q8_RANKING = 1.





*===============================================================================.
* SECTION Estimates based on own experience: Estimates based on own experience.
*===============================================================================.

* Question Q9.


* [ERROR] Accept only the seven defined time-saved response codes.
COMPUTE V_Q9_INVALID_CODES = 0.
IF ((NOT MISSING(Q9) AND NOT ANY(Q9, '1', '2', '3', '4', '5', '6', '7'))) V_Q9_INVALID_CODES = 1.




* Question Q10.


* [ERROR] Accept only the seven defined productivity-improvement response codes.
COMPUTE V_Q10_INVALID_CODES = 0.
IF ((NOT MISSING(Q10) AND NOT ANY(Q10, '1', '2', '3', '4', '5', '6', '7'))) V_Q10_INVALID_CODES = 1.





*===============================================================================.
* SECTION Question 11: Agreement statements: Question 11: Agreement statements.
*===============================================================================.

* Question Q11_A.


* [ERROR] Accept only the defined agreement-scale response codes.
COMPUTE V_Q11_A_INVALID_CODES = 0.
IF ((NOT MISSING(Q11_A) AND NOT ANY(Q11_A, '1', '2', '3', '4', '5'))) V_Q11_A_INVALID_CODES = 1.




* Question Q11_B.


* [ERROR] Accept only the defined agreement-scale response codes.
COMPUTE V_Q11_B_INVALID_CODES = 0.
IF ((NOT MISSING(Q11_B) AND NOT ANY(Q11_B, '1', '2', '3', '4', '5'))) V_Q11_B_INVALID_CODES = 1.




* Question Q11_C.


* [ERROR] Accept only the defined agreement-scale response codes.
COMPUTE V_Q11_C_INVALID_CODES = 0.
IF ((NOT MISSING(Q11_C) AND NOT ANY(Q11_C, '1', '2', '3', '4', '5'))) V_Q11_C_INVALID_CODES = 1.




* Question Q11_D.


* [ERROR] Accept only the defined agreement-scale response codes.
COMPUTE V_Q11_D_INVALID_CODES = 0.
IF ((NOT MISSING(Q11_D) AND NOT ANY(Q11_D, '1', '2', '3', '4', '5'))) V_Q11_D_INVALID_CODES = 1.





*===============================================================================.
* SECTION BD neXus completion alarms: BD neXus completion alarms.
*===============================================================================.

* Question Q11_E.


* [ERROR] Accept only the defined agreement-scale or not-applicable response codes.
COMPUTE V_Q11_E_INVALID_CODES = 0.
IF ((NOT MISSING(Q11_E) AND NOT ANY(Q11_E, '1', '2', '3', '4', '5', '6'))) V_Q11_E_INVALID_CODES = 1.





*===============================================================================.
* SECTION Alternative use of saved time: Alternative use of saved time.
*===============================================================================.

* Question Q12.


* [ERROR] Accept only the six defined alternative-activity response codes.
COMPUTE V_Q12_INVALID_CODES = 0.
IF ((NOT MISSING(Q12) AND NOT ANY(Q12, '1', '2', '3', '4', '5', '6'))) V_Q12_INVALID_CODES = 1.



* [ERROR] Validate the select-all-that-apply response structure.
!MULTI_A svar=Q12 qnt=Q12.
COMPUTE V_Q12_MULTIPLE_RESPONSE = 0.
IF ((NOT MISSING(Q12_1) AND NOT ANY(Q12_1, 0, 1)) OR (NOT MISSING(Q12_2) AND NOT ANY(Q12_2, 0, 1)) OR (NOT MISSING(Q12_3) AND NOT ANY(Q12_3, 0, 1)) OR (NOT MISSING(Q12_4) AND NOT ANY(Q12_4, 0, 1)) OR (NOT MISSING(Q12_5) AND NOT ANY(Q12_5, 0, 1)) OR (NOT MISSING(Q12_6) AND NOT ANY(Q12_6, 0, 1))) V_Q12_MULTIPLE_RESPONSE = 1.





*===============================================================================.
* FINAL VALIDATION SUMMARY.
*===============================================================================.
COMPUTE VALIDATION_OVERALL = MAX(V_Q0_INVALID_CODES, V_Q0_SCREEN_OUT, V_Q1_MULTIPLE_RESPONSE, V_Q1_INVALID_CODES, V_Q2_01_INVALID_CODES, V_Q2_02_INVALID_CODES, V_Q2_03_INVALID_CODES, V_Q2_04_INVALID_CODES, V_Q2_05_INVALID_CODES, V_Q3_01_INVALID_CODES, V_Q3_02_INVALID_CODES, V_Q3_03_INVALID_CODES, V_Q3_04_INVALID_CODES, V_Q3_05_INVALID_CODES, V_Q4_01_INVALID_CODES, V_Q4_02_INVALID_CODES, V_Q4_03_INVALID_CODES, V_Q4_04_INVALID_CODES, V_Q4_05_INVALID_CODES, V_Q5_RANKING, V_Q6_01_INVALID_CODES, V_Q6_02_INVALID_CODES, V_Q6_03_INVALID_CODES, V_Q6_04_INVALID_CODES, V_Q6_05_INVALID_CODES, V_Q7_01_INVALID_CODES, V_Q7_02_INVALID_CODES, V_Q7_03_INVALID_CODES, V_Q7_04_INVALID_CODES, V_Q7_05_INVALID_CODES, V_Q8_RANKING, V_Q9_INVALID_CODES, V_Q10_INVALID_CODES, V_Q11_A_INVALID_CODES, V_Q11_B_INVALID_CODES, V_Q11_C_INVALID_CODES, V_Q11_D_INVALID_CODES, V_Q11_E_INVALID_CODES, V_Q12_INVALID_CODES, V_Q12_MULTIPLE_RESPONSE).
FREQUENCIES VARIABLES=V_Q0_INVALID_CODES V_Q0_SCREEN_OUT V_Q1_MULTIPLE_RESPONSE V_Q1_INVALID_CODES V_Q2_01_INVALID_CODES V_Q2_02_INVALID_CODES V_Q2_03_INVALID_CODES V_Q2_04_INVALID_CODES V_Q2_05_INVALID_CODES V_Q3_01_INVALID_CODES V_Q3_02_INVALID_CODES V_Q3_03_INVALID_CODES V_Q3_04_INVALID_CODES V_Q3_05_INVALID_CODES V_Q4_01_INVALID_CODES V_Q4_02_INVALID_CODES V_Q4_03_INVALID_CODES V_Q4_04_INVALID_CODES V_Q4_05_INVALID_CODES V_Q5_RANKING V_Q6_01_INVALID_CODES V_Q6_02_INVALID_CODES V_Q6_03_INVALID_CODES V_Q6_04_INVALID_CODES V_Q6_05_INVALID_CODES V_Q7_01_INVALID_CODES V_Q7_02_INVALID_CODES V_Q7_03_INVALID_CODES V_Q7_04_INVALID_CODES V_Q7_05_INVALID_CODES V_Q8_RANKING V_Q9_INVALID_CODES V_Q10_INVALID_CODES V_Q11_A_INVALID_CODES V_Q11_B_INVALID_CODES V_Q11_C_INVALID_CODES V_Q11_D_INVALID_CODES V_Q11_E_INVALID_CODES V_Q12_INVALID_CODES V_Q12_MULTIPLE_RESPONSE VALIDATION_OVERALL.

* MODEL WARNINGS.
* Q11_E includes conditional instructions for BD neXus pump users, but no separate source variable identifies pump use; no structured routing rule was added.


EXECUTE.
