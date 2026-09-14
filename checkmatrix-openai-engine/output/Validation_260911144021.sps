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
IF ((NOT MISSING(q0) AND NOT ANY(q0, 1, 2))) V_Q0_INVALID_CODES = 1.



* [INFO] Respondents selecting that they have not used the function are screened out.
COMPUTE V_Q0_SCREEN_OUT = 0.
IF (q0 = 2) V_Q0_SCREEN_OUT = 1.





*===============================================================================.
* SECTION UNMAPPED: Unmapped validations.
*===============================================================================.

* Question Q1.


* [ERROR] Q1 responses must use the defined multi-response option variables.
!MULTI_A svar=Q1.
COMPUTE V_Q1_MULTIPLE_RESPONSE = 0.
IF ((NOT MISSING(Q1_q1_1) AND NOT ANY(Q1_q1_1, 0, 1)) OR (NOT MISSING(Q1_q1_2) AND NOT ANY(Q1_q1_2, 0, 1)) OR (NOT MISSING(Q1_q1_3) AND NOT ANY(Q1_q1_3, 0, 1)) OR (NOT MISSING(Q1_q1_4) AND NOT ANY(Q1_q1_4, 0, 1)) OR (NOT MISSING(Q1_q1_5) AND NOT ANY(Q1_q1_5, 0, 1)) OR (NOT MISSING(Q1_q1_6) AND NOT ANY(Q1_q1_6, 0, 1)) OR (NOT MISSING(Q1_q1_7) AND NOT ANY(Q1_q1_7, 0, 1)) OR (NOT MISSING(Q1_q1_8) AND NOT ANY(Q1_q1_8, 0, 1)) OR (NOT MISSING(Q1_q1_9) AND NOT ANY(Q1_q1_9, 0, 1)) OR (NOT MISSING(Q1_q1_10) AND NOT ANY(Q1_q1_10, 0, 1)) OR (NOT MISSING(Q1_q1_11) AND NOT ANY(Q1_q1_11, 0, 1)) OR (NOT MISSING(Q1_q1_98) AND NOT ANY(Q1_q1_98, 0, 1))) V_Q1_MULTIPLE_RESPONSE = 1.




* Question Q2_q2_1.


* [ERROR] The IVIG frequency response must be coded from 1 through 7.
COMPUTE V_Q2_Q2_1_INVALID_CODES = 0.
IF ((NOT MISSING(q2_1) AND NOT ANY(q2_1, 1, 2, 3, 4, 5, 6, 7))) V_Q2_Q2_1_INVALID_CODES = 1.




* Question Q2_q2_2.


* [ERROR] The monoclonal antibodies frequency response must be coded from 1 through 7.
COMPUTE V_Q2_Q2_2_INVALID_CODES = 0.
IF ((NOT MISSING(q2_2) AND NOT ANY(q2_2, 1, 2, 3, 4, 5, 6, 7))) V_Q2_Q2_2_INVALID_CODES = 1.




* Question Q2_q2_3.


* [ERROR] The blood products frequency response must be coded from 1 through 7.
COMPUTE V_Q2_Q2_3_INVALID_CODES = 0.
IF ((NOT MISSING(q2_3) AND NOT ANY(q2_3, 1, 2, 3, 4, 5, 6, 7))) V_Q2_Q2_3_INVALID_CODES = 1.




* Question Q2_q2_4.


* [ERROR] The beta-interferons frequency response must be coded from 1 through 7.
COMPUTE V_Q2_Q2_4_INVALID_CODES = 0.
IF ((NOT MISSING(q2_4) AND NOT ANY(q2_4, 1, 2, 3, 4, 5, 6, 7))) V_Q2_Q2_4_INVALID_CODES = 1.




* Question Q2_q2_98.


* [ERROR] The other-product frequency response must be coded from 1 through 7.
COMPUTE V_Q2_Q2_98_INVALID_CODES = 0.
IF ((NOT MISSING(q2_98) AND NOT ANY(q2_98, 1, 2, 3, 4, 5, 6, 7))) V_Q2_Q2_98_INVALID_CODES = 1.




* Question Q3.
* No validation generated: The model proposed only rules with unknown variables; they were omitted during deterministic validation.



* Question Q4.
* No validation generated: The model proposed only rules with unknown variables; they were omitted during deterministic validation.



* Question Q5.
* No validation generated: The model proposed only rules with unknown variables; they were omitted during deterministic validation.



* Question Q6.
* No validation generated: The model proposed only rules with unknown variables; they were omitted during deterministic validation.



* Question Q7.
* No validation generated: The model proposed only rules with unknown variables; they were omitted during deterministic validation.



* Question Q8.
* No validation generated: The model proposed only rules with unknown variables; they were omitted during deterministic validation.



* Question Q9.


* [ERROR] Q9 must contain one of the defined response codes.
COMPUTE V_Q9_INVALID_CODES = 0.
IF ((NOT MISSING(q9) AND NOT ANY(q9, 1, 2, 3, 4, 5, 6, 7))) V_Q9_INVALID_CODES = 1.




* Question Q10.


* [ERROR] Q10 must contain one of the defined response codes.
COMPUTE V_Q10_INVALID_CODES = 0.
IF ((NOT MISSING(q10) AND NOT ANY(q10, 1, 2, 3, 4, 5, 6, 7))) V_Q10_INVALID_CODES = 1.




* Question Q11.
* No validation generated: The model proposed only rules with unknown variables; they were omitted during deterministic validation.



* Question Q11E.


* [ERROR] Q11E must contain one of the defined response codes, including Not applicable to me.
COMPUTE V_Q11E_INVALID_CODES = 0.
IF ((NOT MISSING(q11e) AND NOT ANY(q11e, 1, 2, 3, 4, 5, 6))) V_Q11E_INVALID_CODES = 1.




* Question Q12.


* [ERROR] Q12 responses must use the defined multi-response option variables.
!MULTI_A svar=Q12.
COMPUTE V_Q12_MULTIPLE_RESPONSE = 0.
IF ((NOT MISSING(Q12_q12_1) AND NOT ANY(Q12_q12_1, 0, 1)) OR (NOT MISSING(Q12_q12_2) AND NOT ANY(Q12_q12_2, 0, 1)) OR (NOT MISSING(Q12_q12_3) AND NOT ANY(Q12_q12_3, 0, 1)) OR (NOT MISSING(Q12_q12_4) AND NOT ANY(Q12_q12_4, 0, 1)) OR (NOT MISSING(Q12_q12_5) AND NOT ANY(Q12_q12_5, 0, 1)) OR (NOT MISSING(Q12_q12_98) AND NOT ANY(Q12_q12_98, 0, 1))) V_Q12_MULTIPLE_RESPONSE = 1.





*===============================================================================.
* FINAL VALIDATION SUMMARY.
*===============================================================================.
COMPUTE VALIDATION_OVERALL = MAX(V_Q0_INVALID_CODES, V_Q0_SCREEN_OUT, V_Q1_MULTIPLE_RESPONSE, V_Q2_Q2_1_INVALID_CODES, V_Q2_Q2_2_INVALID_CODES, V_Q2_Q2_3_INVALID_CODES, V_Q2_Q2_4_INVALID_CODES, V_Q2_Q2_98_INVALID_CODES, V_Q9_INVALID_CODES, V_Q10_INVALID_CODES, V_Q11E_INVALID_CODES, V_Q12_MULTIPLE_RESPONSE).
FREQUENCIES VARIABLES=V_Q0_INVALID_CODES V_Q0_SCREEN_OUT V_Q1_MULTIPLE_RESPONSE V_Q2_Q2_1_INVALID_CODES V_Q2_Q2_2_INVALID_CODES V_Q2_Q2_3_INVALID_CODES V_Q2_Q2_4_INVALID_CODES V_Q2_Q2_98_INVALID_CODES V_Q9_INVALID_CODES V_Q10_INVALID_CODES V_Q11E_INVALID_CODES V_Q12_MULTIPLE_RESPONSE VALIDATION_OVERALL.

* MODEL WARNINGS.
* Omitted unsafe model rule: Rule Q1-other-open-end references unknown variables: ['q1_98_other'].
* Omitted unsafe model rule: Rule Q2-q2-98-other-open-end references unknown variables: ['q2_98_other'].
* Omitted unsafe model rule: Rule Q3-invalid-codes references unknown variables: ['q3_1', 'q3_2', 'q3_3', 'q3_4', 'q3_5'].
* Omitted unsafe model rule: Rule Q4-invalid-codes references unknown variables: ['q4_1', 'q4_2', 'q4_3', 'q4_4', 'q4_5'].
* Omitted unsafe model rule: Rule Q5-ranking references unknown variables: ['q5_1', 'q5_2', 'q5_3', 'q5_4', 'q5_5'].
* Omitted unsafe model rule: Rule Q5-duplicate-rankings references unknown variables: ['q5_1', 'q5_2', 'q5_3', 'q5_4', 'q5_5'].
* Omitted unsafe model rule: Rule Q6-invalid-codes references unknown variables: ['q6_1', 'q6_2', 'q6_3', 'q6_4', 'q6_5'].
* Omitted unsafe model rule: Rule Q7-invalid-codes references unknown variables: ['q7_1', 'q7_2', 'q7_3', 'q7_4', 'q7_5'].
* Omitted unsafe model rule: Rule Q8-ranking references unknown variables: ['q8_1', 'q8_2', 'q8_3', 'q8_4', 'q8_5'].
* Omitted unsafe model rule: Rule Q8-duplicate-rankings references unknown variables: ['q8_1', 'q8_2', 'q8_3', 'q8_4', 'q8_5'].
* Omitted unsafe model rule: Rule Q11-invalid-codes references unknown variables: ['q11a', 'q11b', 'q11c', 'q11d'].
* Omitted unsafe model rule: Rule Q12-other-open-end references unknown variables: ['q12_98_other'].


EXECUTE.
