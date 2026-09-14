* Encoding: UTF-8.
* Generated deterministically by Survey Programming AI.
* Source: (v2_R99482) MLA_Lamb_bay_instore_interviews_-_PJ_review (2).docx.
TITLE '29/6/26 – UPDATES V0b1/7/26 – UPDATES V1'.



*===============================================================================.
* SECTION MAIN: Questionnaire.
*===============================================================================.

* Question S1.


* [ERROR] S1 must have a response.
COMPUTE V_S1_MANDATORY = 0.
IF (MISSING(S1)) V_S1_MANDATORY = 1.



* [ERROR] S1 must contain one of the documented interviewer response codes.
COMPUTE V_S1_CODES = 0.
IF ((NOT MISSING(S1) AND NOT ANY(S1, 1, 2, 3))) V_S1_CODES = 1.




* Question S2.


* [ERROR] S2 must have a response.
COMPUTE V_S2_MANDATORY = 0.
IF (MISSING(S2)) V_S2_MANDATORY = 1.



* [ERROR] S2 must contain a documented gender response code.
COMPUTE V_S2_CODES = 0.
IF ((NOT MISSING(S2) AND NOT ANY(S2, 1, 2, 3, 4))) V_S2_CODES = 1.




* Question S3.


* [ERROR] S3 must have a response.
COMPUTE V_S3_MANDATORY = 0.
IF (MISSING(S3)) V_S3_MANDATORY = 1.



* [ERROR] S3 must contain a documented age-band code.
COMPUTE V_S3_CODES = 0.
IF ((NOT MISSING(S3) AND NOT ANY(S3, 1, 2, 3, 4, 5, 6, 7, 8))) V_S3_CODES = 1.



* [ERROR] Respondents coded under 18 must be screened out.
COMPUTE V_S3_SCREENOUT = 0.
IF (S3 = 1) V_S3_SCREENOUT = 1.




* Question S3.5.


* [ERROR] S3.5 must have a response.
COMPUTE V_S35_MANDATORY = 0.
IF (MISSING(S3.5)) V_S35_MANDATORY = 1.



* [ERROR] S3.5 must contain a documented living-arrangement code.
COMPUTE V_S35_CODES = 0.
IF ((NOT MISSING(S3.5) AND NOT ANY(S3.5, 1, 2, 3, 4, 5, 6, 7))) V_S35_CODES = 1.




* Question S4.


* [ERROR] S4 is required for respondents who picked up items from the lamb bay.
COMPUTE V_S4_MANDATORY = 0.
IF (MISSING(S4)) V_S4_MANDATORY = 1.



* [ERROR] S4 must contain a documented purchase-frequency code when applicable.
COMPUTE V_S4_CODES = 0.
IF ((NOT MISSING(S4) AND NOT ANY(S4, 1, 2, 3, 4, 5, 6))) V_S4_CODES = 1.




* Question Q1.1.


* [ERROR] Q1.1 must have a response.
COMPUTE V_Q11_MANDATORY = 0.
IF (MISSING(Q1.1)) V_Q11_MANDATORY = 1.



* [ERROR] Q1.1 selections must use documented item codes.
COMPUTE V_Q11_CODES = 0.
IF ((NOT MISSING(Q1.1) AND NOT ANY(Q1.1, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16))) V_Q11_CODES = 1.



* [ERROR] Q1.1 is a multiple-response item selection.
!MULTI_A svar=Q1.1.
COMPUTE V_Q11_MULTI = 0.
IF ((NOT MISSING(Q1.1_1) AND NOT ANY(Q1.1_1, 0, 1)) OR (NOT MISSING(Q1.1_2) AND NOT ANY(Q1.1_2, 0, 1)) OR (NOT MISSING(Q1.1_3) AND NOT ANY(Q1.1_3, 0, 1)) OR (NOT MISSING(Q1.1_4) AND NOT ANY(Q1.1_4, 0, 1)) OR (NOT MISSING(Q1.1_5) AND NOT ANY(Q1.1_5, 0, 1)) OR (NOT MISSING(Q1.1_6) AND NOT ANY(Q1.1_6, 0, 1)) OR (NOT MISSING(Q1.1_7) AND NOT ANY(Q1.1_7, 0, 1)) OR (NOT MISSING(Q1.1_8) AND NOT ANY(Q1.1_8, 0, 1)) OR (NOT MISSING(Q1.1_9) AND NOT ANY(Q1.1_9, 0, 1)) OR (NOT MISSING(Q1.1_10) AND NOT ANY(Q1.1_10, 0, 1)) OR (NOT MISSING(Q1.1_11) AND NOT ANY(Q1.1_11, 0, 1)) OR (NOT MISSING(Q1.1_12) AND NOT ANY(Q1.1_12, 0, 1)) OR (NOT MISSING(Q1.1_13) AND NOT ANY(Q1.1_13, 0, 1)) OR (NOT MISSING(Q1.1_14) AND NOT ANY(Q1.1_14, 0, 1)) OR (NOT MISSING(Q1.1_15) AND NOT ANY(Q1.1_15, 0, 1)) OR (NOT MISSING(Q1.1_16) AND NOT ANY(Q1.1_16, 0, 1))) V_Q11_MULTI = 1.




* Question Q1.2.


* [ERROR] Q1.2 is required when a lamb cut was selected in Q1.1.
COMPUTE V_Q12_MANDATORY = 0.
IF (MISSING(Q1.2)) V_Q12_MANDATORY = 1.



* [ERROR] Q1.2 must contain a documented occasion code when applicable.
COMPUTE V_Q12_CODES = 0.
IF ((NOT MISSING(Q1.2) AND NOT ANY(Q1.2, 1, 2, 3))) V_Q12_CODES = 1.




* Question Q1.3WHAT.


* [ERROR] Q1.3WHAT is required when ingredients but no lamb cut were selected.
COMPUTE V_Q13_MANDATORY = 0.
IF (MISSING(Q1.3WHAT)) V_Q13_MANDATORY = 1.



* [ERROR] Q1.3WHAT must contain documented recipe codes when applicable.
COMPUTE V_Q13_CODES = 0.
IF ((NOT MISSING(Q1.3WHAT) AND NOT ANY(Q1.3WHAT, 1, 2, 3, 4, 5, 6))) V_Q13_CODES = 1.



* [ERROR] Q1.3WHAT is documented as a multiple-response recipe question.
!MULTI_A svar=Q1.3WHAT.
COMPUTE V_Q13_MULTI = 0.
IF ((NOT MISSING(Q1.3WHAT_1) AND NOT ANY(Q1.3WHAT_1, 0, 1)) OR (NOT MISSING(Q1.3WHAT_2) AND NOT ANY(Q1.3WHAT_2, 0, 1)) OR (NOT MISSING(Q1.3WHAT_3) AND NOT ANY(Q1.3WHAT_3, 0, 1)) OR (NOT MISSING(Q1.3WHAT_4) AND NOT ANY(Q1.3WHAT_4, 0, 1)) OR (NOT MISSING(Q1.3WHAT_5) AND NOT ANY(Q1.3WHAT_5, 0, 1)) OR (NOT MISSING(Q1.3WHAT_6) AND NOT ANY(Q1.3WHAT_6, 0, 1))) V_Q13_MULTI = 1.




* Question Q1.4.


* [ERROR] Q1.4 is required when Q1.1 excludes lamb-cut codes 1–4.
COMPUTE V_Q14_MANDATORY = 0.
IF (MISSING(Q1.4)) V_Q14_MANDATORY = 1.



* [ERROR] Q1.4 must contain a documented reason code when applicable.
COMPUTE V_Q14_CODES = 0.
IF ((NOT MISSING(Q1.4) AND NOT ANY(Q1.4, 1, 2, 3, 4, 5))) V_Q14_CODES = 1.




* Question Q1.5.


* [ERROR] Q1.5 must have a response.
COMPUTE V_Q15_MANDATORY = 0.
IF (MISSING(Q1.5)) V_Q15_MANDATORY = 1.



* [ERROR] Q1.5 selections must use documented reason codes.
COMPUTE V_Q15_CODES = 0.
IF ((NOT MISSING(Q1.5) AND NOT ANY(Q1.5, 1, 2, 3, 4, 5, 98))) V_Q15_CODES = 1.



* [ERROR] Q1.5 is documented as a multiple-response reasons question.
!MULTI_A svar=Q1.5.
COMPUTE V_Q15_MULTI = 0.
IF ((NOT MISSING(Q1.5_1) AND NOT ANY(Q1.5_1, 0, 1)) OR (NOT MISSING(Q1.5_2) AND NOT ANY(Q1.5_2, 0, 1)) OR (NOT MISSING(Q1.5_3) AND NOT ANY(Q1.5_3, 0, 1)) OR (NOT MISSING(Q1.5_4) AND NOT ANY(Q1.5_4, 0, 1)) OR (NOT MISSING(Q1.5_5) AND NOT ANY(Q1.5_5, 0, 1)) OR (NOT MISSING(Q1.5_98) AND NOT ANY(Q1.5_98, 0, 1))) V_Q15_MULTI = 1.




* Question Q1.6.


* [ERROR] Q1.6 must have a response.
COMPUTE V_Q16_MANDATORY = 0.
IF (MISSING(Q1.6)) V_Q16_MANDATORY = 1.



* [ERROR] Q1.6 must contain a documented appeal code.
COMPUTE V_Q16_CODES = 0.
IF ((NOT MISSING(Q1.6) AND NOT ANY(Q1.6, 1, 2, 3, 4, 5, 6))) V_Q16_CODES = 1.




* Question Q1.7.


* [ERROR] Q1.7 is required for respondents who looked at but did not pick up items.
COMPUTE V_Q17_MANDATORY = 0.
IF (MISSING(Q1.7)) V_Q17_MANDATORY = 1.



* [ERROR] Q1.7 must contain a documented response code when applicable.
COMPUTE V_Q17_CODES = 0.
IF ((NOT MISSING(Q1.7) AND NOT ANY(Q1.7, 1, 2, 3, 4))) V_Q17_CODES = 1.




* Question Q2.1.


* [ERROR] Q2.1 must have a response.
COMPUTE V_Q21_MANDATORY = 0.
IF (MISSING(Q2.1)) V_Q21_MANDATORY = 1.



* [ERROR] Q2.1 must contain a documented attraction code.
COMPUTE V_Q21_CODES = 0.
IF ((NOT MISSING(Q2.1) AND NOT ANY(Q2.1, 1, 2, 3, 4, 5, 6, 7, 8))) V_Q21_CODES = 1.




* Question Q2.2.


* [ERROR] Q2.2 is required for respondents who did not look at the bay.
COMPUTE V_Q22_MANDATORY = 0.
IF (MISSING(Q2.2)) V_Q22_MANDATORY = 1.



* [ERROR] Q2.2 selections must use documented reason codes when applicable.
COMPUTE V_Q22_CODES = 0.
IF ((NOT MISSING(Q2.2) AND NOT ANY(Q2.2, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10))) V_Q22_CODES = 1.



* [ERROR] Q2.2 permits no more than three selected reasons.
COMPUTE V_Q22_MAX = 0.
IF (SUM(Q2.2_1, Q2.2_2, Q2.2_3, Q2.2_4, Q2.2_5, Q2.2_6, Q2.2_7, Q2.2_8, Q2.2_9, Q2.2_10) > 3) V_Q22_MAX = 1.



* [ERROR] Q2.2 is a multiple-response reasons question.
!MULTI_A_FLT svar=Q2.2.
COMPUTE V_Q22_MULTI = 0.
IF ((NOT MISSING(Q2.2_1) AND NOT ANY(Q2.2_1, 0, 1)) OR (NOT MISSING(Q2.2_2) AND NOT ANY(Q2.2_2, 0, 1)) OR (NOT MISSING(Q2.2_3) AND NOT ANY(Q2.2_3, 0, 1)) OR (NOT MISSING(Q2.2_4) AND NOT ANY(Q2.2_4, 0, 1)) OR (NOT MISSING(Q2.2_5) AND NOT ANY(Q2.2_5, 0, 1)) OR (NOT MISSING(Q2.2_6) AND NOT ANY(Q2.2_6, 0, 1)) OR (NOT MISSING(Q2.2_7) AND NOT ANY(Q2.2_7, 0, 1)) OR (NOT MISSING(Q2.2_8) AND NOT ANY(Q2.2_8, 0, 1)) OR (NOT MISSING(Q2.2_9) AND NOT ANY(Q2.2_9, 0, 1)) OR (NOT MISSING(Q2.2_10) AND NOT ANY(Q2.2_10, 0, 1))) V_Q22_MULTI = 1.




* Question Q3.1.


* [ERROR] Q3.1 must have a response.
COMPUTE V_Q31_MANDATORY = 0.
IF (MISSING(Q3.1)) V_Q31_MANDATORY = 1.



* [ERROR] Q3.1 must contain a documented awareness code.
COMPUTE V_Q31_CODES = 0.
IF ((NOT MISSING(Q3.1) AND NOT ANY(Q3.1, 1, 2, 3))) V_Q31_CODES = 1.




* Question Q3.2.


* [ERROR] Q3.2 must have a response.
COMPUTE V_Q32_MANDATORY = 0.
IF (MISSING(Q3.2)) V_Q32_MANDATORY = 1.



* [ERROR] Q3.2 selections must use documented concept-appeal codes.
COMPUTE V_Q32_CODES = 0.
IF ((NOT MISSING(Q3.2) AND NOT ANY(Q3.2, 1, 2, 3, 4, 5, 6))) V_Q32_CODES = 1.



* [ERROR] Q3.2 is documented as a multiple-response concept-appeal question.
!MULTI_A svar=Q3.2.
COMPUTE V_Q32_MULTI = 0.
IF ((NOT MISSING(Q3.2_1) AND NOT ANY(Q3.2_1, 0, 1)) OR (NOT MISSING(Q3.2_2) AND NOT ANY(Q3.2_2, 0, 1)) OR (NOT MISSING(Q3.2_3) AND NOT ANY(Q3.2_3, 0, 1)) OR (NOT MISSING(Q3.2_4) AND NOT ANY(Q3.2_4, 0, 1)) OR (NOT MISSING(Q3.2_5) AND NOT ANY(Q3.2_5, 0, 1)) OR (NOT MISSING(Q3.2_6) AND NOT ANY(Q3.2_6, 0, 1))) V_Q32_MULTI = 1.




* Question Q3.3.


* [ERROR] Q3.3 must have a response for all respondents.
COMPUTE V_Q33_MANDATORY = 0.
IF (MISSING(Q3.3)) V_Q33_MANDATORY = 1.



* [ERROR] Q3.3 selections must use documented dislike codes.
COMPUTE V_Q33_CODES = 0.
IF ((NOT MISSING(Q3.3) AND NOT ANY(Q3.3, 1, 2, 3, 4, 5, 6, 7, 8, 9))) V_Q33_CODES = 1.



* [ERROR] Q3.3 is documented as a multiple-response dislike question.
!MULTI_A svar=Q3.3.
COMPUTE V_Q33_MULTI = 0.
IF ((NOT MISSING(Q3.3_1) AND NOT ANY(Q3.3_1, 0, 1)) OR (NOT MISSING(Q3.3_2) AND NOT ANY(Q3.3_2, 0, 1)) OR (NOT MISSING(Q3.3_3) AND NOT ANY(Q3.3_3, 0, 1)) OR (NOT MISSING(Q3.3_4) AND NOT ANY(Q3.3_4, 0, 1)) OR (NOT MISSING(Q3.3_5) AND NOT ANY(Q3.3_5, 0, 1)) OR (NOT MISSING(Q3.3_6) AND NOT ANY(Q3.3_6, 0, 1)) OR (NOT MISSING(Q3.3_7) AND NOT ANY(Q3.3_7, 0, 1)) OR (NOT MISSING(Q3.3_8) AND NOT ANY(Q3.3_8, 0, 1)) OR (NOT MISSING(Q3.3_9) AND NOT ANY(Q3.3_9, 0, 1))) V_Q33_MULTI = 1.




* Question Q4.1.


* [ERROR] Q4.1 must be scored from 1 to 10.
!Numeric svar=Q4.1.
COMPUTE V_Q41_RANGE = 0.
IF ((NOT MISSING(Q4.1) AND NOT ANY(Q4.1, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10))) V_Q41_RANGE = 1.




* Question Q4.2.


* [ERROR] Q4.2 must be scored from 1 to 10.
!Numeric svar=Q4.2.
COMPUTE V_Q42_RANGE = 0.
IF ((NOT MISSING(Q4.2) AND NOT ANY(Q4.2, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10))) V_Q42_RANGE = 1.




* Question Q4.3.


* [ERROR] Q4.3 recipe scores must be from 1 to 10.
!Numeric svar=Q4.3.
COMPUTE V_Q43_RANGE = 0.
IF ((NOT MISSING(Q4.3) AND NOT ANY(Q4.3, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10))) V_Q43_RANGE = 1.




* Question Q4.4.


* [ERROR] Q4.4 must be scored from 1 to 10.
!Numeric svar=Q4.4.
COMPUTE V_Q44_RANGE = 0.
IF ((NOT MISSING(Q4.4) AND NOT ANY(Q4.4, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10))) V_Q44_RANGE = 1.




* Question Q4.4A.


* [WARNING] Q4.4A is an open-ended comment response.
COMPUTE V_Q44A_OPEN = 0.
IF (MISSING(Q4.4A)) V_Q44A_OPEN = 1.




* Question Q4.5.


* [ERROR] Q4.5 must be scored from 1 to 10.
!Numeric svar=Q4.5.
COMPUTE V_Q45_RANGE = 0.
IF ((NOT MISSING(Q4.5) AND NOT ANY(Q4.5, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10))) V_Q45_RANGE = 1.




* Question Q4.5A.


* [WARNING] Q4.5A is an open-ended comment response.
COMPUTE V_Q45A_OPEN = 0.
IF (MISSING(Q4.5A)) V_Q45A_OPEN = 1.




* Question Q4.6.


* [ERROR] Q4.6 must have a response.
COMPUTE V_Q46_MANDATORY = 0.
IF (MISSING(Q4.6)) V_Q46_MANDATORY = 1.



* [ERROR] Q4.6 must contain a documented future-purchase likelihood code.
COMPUTE V_Q46_CODES = 0.
IF ((NOT MISSING(Q4.6) AND NOT ANY(Q4.6, 1, 2, 3, 4, 5))) V_Q46_CODES = 1.




* Question Q4.7.


* [ERROR] Response must be a value from 1 to 10 on the stated scale.
COMPUTE V_Q4_7_NUMERIC_RANGE_1 = 0.
IF ((NOT MISSING(Q4.7) AND NOT ANY(Q4.7, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10))) V_Q4_7_NUMERIC_RANGE_1 = 1.




* Question Q4.8.


* [WARNING] Validate the open-ended response as text input.
COMPUTE V_Q4_8_OPEN_END_1 = 0.
IF (MISSING(Q4.8)) V_Q4_8_OPEN_END_1 = 1.





*===============================================================================.
* FINAL VALIDATION SUMMARY.
*===============================================================================.
COMPUTE VALIDATION_OVERALL = MAX(V_S1_MANDATORY, V_S1_CODES, V_S2_MANDATORY, V_S2_CODES, V_S3_MANDATORY, V_S3_CODES, V_S3_SCREENOUT, V_S35_MANDATORY, V_S35_CODES, V_S4_MANDATORY, V_S4_CODES, V_Q11_MANDATORY, V_Q11_CODES, V_Q11_MULTI, V_Q12_MANDATORY, V_Q12_CODES, V_Q13_MANDATORY, V_Q13_CODES, V_Q13_MULTI, V_Q14_MANDATORY, V_Q14_CODES, V_Q15_MANDATORY, V_Q15_CODES, V_Q15_MULTI, V_Q16_MANDATORY, V_Q16_CODES, V_Q17_MANDATORY, V_Q17_CODES, V_Q21_MANDATORY, V_Q21_CODES, V_Q22_MANDATORY, V_Q22_CODES, V_Q22_MAX, V_Q22_MULTI, V_Q31_MANDATORY, V_Q31_CODES, V_Q32_MANDATORY, V_Q32_CODES, V_Q32_MULTI, V_Q33_MANDATORY, V_Q33_CODES, V_Q33_MULTI, V_Q41_RANGE, V_Q42_RANGE, V_Q43_RANGE, V_Q44_RANGE, V_Q44A_OPEN, V_Q45_RANGE, V_Q45A_OPEN, V_Q46_MANDATORY, V_Q46_CODES, V_Q4_7_NUMERIC_RANGE_1, V_Q4_8_OPEN_END_1).
FREQUENCIES VARIABLES=V_S1_MANDATORY V_S1_CODES V_S2_MANDATORY V_S2_CODES V_S3_MANDATORY V_S3_CODES V_S3_SCREENOUT V_S35_MANDATORY V_S35_CODES V_S4_MANDATORY V_S4_CODES V_Q11_MANDATORY V_Q11_CODES V_Q11_MULTI V_Q12_MANDATORY V_Q12_CODES V_Q13_MANDATORY V_Q13_CODES V_Q13_MULTI V_Q14_MANDATORY V_Q14_CODES V_Q15_MANDATORY V_Q15_CODES V_Q15_MULTI V_Q16_MANDATORY V_Q16_CODES V_Q17_MANDATORY V_Q17_CODES V_Q21_MANDATORY V_Q21_CODES V_Q22_MANDATORY V_Q22_CODES V_Q22_MAX V_Q22_MULTI V_Q31_MANDATORY V_Q31_CODES V_Q32_MANDATORY V_Q32_CODES V_Q32_MULTI V_Q33_MANDATORY V_Q33_CODES V_Q33_MULTI V_Q41_RANGE V_Q42_RANGE V_Q43_RANGE V_Q44_RANGE V_Q44A_OPEN V_Q45_RANGE V_Q45A_OPEN V_Q46_MANDATORY V_Q46_CODES V_Q4_7_NUMERIC_RANGE_1 V_Q4_8_OPEN_END_1 VALIDATION_OVERALL.

* MODEL WARNINGS.
* Q4.3 describes four recipe ratings but supplies only the base variable Q4.3; validation uses that supplied base variable without inventing item-level variables.
* Open-text options in Q1.3WHAT, Q1.4, Q1.5, Q2.1, Q2.2, Q3.2, and Q3.3 do not have separate supplied text variables, so no separate open-text consistency rules were added.


EXECUTE.
