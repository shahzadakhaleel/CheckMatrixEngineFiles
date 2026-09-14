* Encoding: UTF-8.
* Generated deterministically by Survey Programming AI.
* Source: (V3 R98972) Triangle_Insights_HCP Survey_15Jun2026.docx.
TITLE 'CHANGES: V2_Changes (Jun-15-2026) V3_Changes (Jun-15-2026)'.



*===============================================================================.
* SECTION MAIN: Questionnaire.
*===============================================================================.

* Question S1.


* [ERROR] Require a response to the current-role screener question.
COMPUTE V_S1_MAND_01 = 0.
IF (MISSING(S1)) V_S1_MAND_01 = 1.




* Question S2.


* [ERROR] Require a response to the board-certified specialty screener question.
COMPUTE V_S2_MAND_01 = 0.
IF (MISSING(S2)) V_S2_MAND_01 = 1.




* Question S3.


* [ERROR] Require a response to the primary-subspecialty screener question.
COMPUTE V_S3_MAND_01 = 0.
IF (MISSING(S3)) V_S3_MAND_01 = 1.




* Question S4.


* [ERROR] Restrict years in practice to the stated range of 0 through 99.
COMPUTE V_S4_RANGE_01 = 0.
IF ((NOT MISSING(S4) AND (S4 < 0.0 OR S4 > 99.0))) V_S4_RANGE_01 = 1.



* [ERROR] Terminate immediately when years in practice are below 1.
COMPUTE V_S4_SCREEN_01 = 0.
IF (S4 < 1) V_S4_SCREEN_01 = 1.



* [ERROR] Terminate immediately when years in practice exceed 50.
COMPUTE V_S4_SCREEN_02 = 0.
IF (S4 > 50) V_S4_SCREEN_02 = 1.



* [WARNING] Terminate at the end of the screener when years in practice are below 3.
COMPUTE V_S4_SCREEN_03 = 0.
IF (S4 < 3) V_S4_SCREEN_03 = 1.



* [WARNING] Terminate at the end of the screener when years in practice exceed 30.
COMPUTE V_S4_SCREEN_04 = 0.
IF (S4 > 30) V_S4_SCREEN_04 = 1.




* Question S5.


* [ERROR] Restrict patient-treatment time to the stated range of 0 through 100 percent.
COMPUTE V_S5_RANGE_01 = 0.
IF ((NOT MISSING(S5) AND (S5 < 0.0 OR S5 > 100.0))) V_S5_RANGE_01 = 1.



* [ERROR] Terminate immediately when patient-treatment time is below 10 percent.
COMPUTE V_S5_SCREEN_01 = 0.
IF (S5 < 10) V_S5_SCREEN_01 = 1.



* [WARNING] Terminate at the end of the screener when patient-treatment time is below 50 percent.
COMPUTE V_S5_SCREEN_02 = 0.
IF (S5 < 50) V_S5_SCREEN_02 = 1.




* Question S6.


* [ERROR] Require a response to the practice-location screener question.
COMPUTE V_S6_MAND_01 = 0.
IF (MISSING(S6)) V_S6_MAND_01 = 1.




* Question S7.


* [ERROR] Require a response to the practice-setting screener question.
COMPUTE V_S7_MAND_01 = 0.
IF (MISSING(S7)) V_S7_MAND_01 = 1.




* Question S9.


* [ERROR] Restrict the estimated inherited-retinal-disease patient count to 0 through 300.
COMPUTE V_S9_RANGE_01 = 0.
IF ((NOT MISSING(S9) AND (S9 < 0.0 OR S9 > 300.0))) V_S9_RANGE_01 = 1.



* [ERROR] Terminate immediately when the estimated patient count is zero.
COMPUTE V_S9_SCREEN_01 = 0.
IF (S9 = 0) V_S9_SCREEN_01 = 1.



* [WARNING] Terminate when the estimated patient count is below 20.
COMPUTE V_S9_SCREEN_02 = 0.
IF (S9 < 20) V_S9_SCREEN_02 = 1.




* Question S8.


* [ERROR] Require a response to the inherited-retinal-disease management question.
COMPUTE V_S8_MAND_01 = 0.
IF (MISSING(S8)) V_S8_MAND_01 = 1.



* [ERROR] Validate the multi-response format for inherited-retinal-disease types managed.
COMPUTE V_S8_MULTI_01 = 0.
IF ((NOT MISSING(S8) AND NOT ANY(S8, 0, 1))) V_S8_MULTI_01 = 1.



* [ERROR] Require at least one disease-management option to be selected.
COMPUTE V_S8_MIN_01 = 0.
IF (SUM(S8) < 1) V_S8_MIN_01 = 1.




* Question S10.


* [ERROR] Restrict each BEST1-related patient estimate to a minimum of 0; the questionnaire specifies an upper bound based on S9.
COMPUTE V_S10_RANGE_01 = 0.
IF ((NOT MISSING(S10) AND (S10 < 0.0))) V_S10_RANGE_01 = 1.




* Question Q1.


* [ERROR] Restrict the suspected-patient counts to 0 through 300.
COMPUTE V_Q1_RANGE_01 = 0.
IF ((NOT MISSING(Q1) AND (Q1 < 0.0 OR Q1 > 300.0))) V_Q1_RANGE_01 = 1.




* Question Q1A.


* [ERROR] Restrict BVMD management counts to 0 through 300.
COMPUTE V_Q1A_RANGE_01 = 0.
IF ((NOT MISSING(Q1A) AND (Q1A < 0.0 OR Q1A > 300.0))) V_Q1A_RANGE_01 = 1.




* Question Q1B.


* [ERROR] Restrict ARB management counts to 0 through 300.
COMPUTE V_Q1B_RANGE_01 = 0.
IF ((NOT MISSING(Q1B) AND (Q1B < 0.0 OR Q1B > 300.0))) V_Q1B_RANGE_01 = 1.




* Question Q1C.


* [ERROR] Restrict confirmed BVMD diagnoses to counts of zero or greater.
COMPUTE V_Q1C_RANGE_01 = 0.
IF ((NOT MISSING(Q1C) AND (Q1C < 0.0))) V_Q1C_RANGE_01 = 1.




* Question Q1D.


* [ERROR] Restrict confirmed ARB diagnoses to counts of zero or greater.
COMPUTE V_Q1D_RANGE_01 = 0.
IF ((NOT MISSING(Q1D) AND (Q1D < 0.0))) V_Q1D_RANGE_01 = 1.




* Question Q2.


* [ERROR] Restrict the confidence rating to the stated scale from 1 through 7.
COMPUTE V_Q2_RANGE_01 = 0.
IF ((NOT MISSING(Q2) AND (Q2 < 1.0 OR Q2 > 7.0))) V_Q2_RANGE_01 = 1.




* Question Q3.


* [ERROR] Restrict journey-to-diagnosis counts to zero or greater; the questionnaire specifies an upper bound based on S10a plus S10b.
COMPUTE V_Q3_RANGE_01 = 0.
IF ((NOT MISSING(Q3) AND (Q3 < 0.0))) V_Q3_RANGE_01 = 1.




* Question Q4.


* [ERROR] Restrict professional-journey counts to zero or greater; the questionnaire specifies an upper bound based on S10a plus S10b.
COMPUTE V_Q4_RANGE_01 = 0.
IF ((NOT MISSING(Q4) AND (Q4 < 0.0))) V_Q4_RANGE_01 = 1.




* Question Q5.


* [ERROR] Require responses for the BEST1 patient-category allocation question.
COMPUTE V_Q5_MAND_01 = 0.
IF (MISSING(Q5)) V_Q5_MAND_01 = 1.



* [ERROR] Restrict BEST1 patient-category counts to zero or greater; the questionnaire specifies an upper bound based on S10a plus S10b.
COMPUTE V_Q5_RANGE_01 = 0.
IF ((NOT MISSING(Q5) AND (Q5 < 0.0))) V_Q5_RANGE_01 = 1.




* Question Q6.


* [ERROR] Restrict referral-source counts to zero or greater; the questionnaire specifies an upper bound based on Q5a plus Q5b.
COMPUTE V_Q6_RANGE_01 = 0.
IF ((NOT MISSING(Q6) AND (Q6 < 0.0))) V_Q6_RANGE_01 = 1.




* Question Q7.


* [ERROR] Require responses for the BVMD disease-stage allocation question.
COMPUTE V_Q7_MAND_01 = 0.
IF (MISSING(Q7)) V_Q7_MAND_01 = 1.



* [ERROR] Restrict BVMD stage counts to zero or greater; the questionnaire specifies an upper bound based on S10a.
COMPUTE V_Q7_RANGE_01 = 0.
IF ((NOT MISSING(Q7) AND (Q7 < 0.0))) V_Q7_RANGE_01 = 1.




* Question Q8.


* [ERROR] Require responses for the diagnostic-method allocation question.
COMPUTE V_Q8_MAND_01 = 0.
IF (MISSING(Q8)) V_Q8_MAND_01 = 1.



* [ERROR] Restrict diagnostic-method counts to zero or greater; the questionnaire specifies an upper bound based on S10a plus S10b.
COMPUTE V_Q8_RANGE_01 = 0.
IF ((NOT MISSING(Q8) AND (Q8 < 0.0))) V_Q8_RANGE_01 = 1.




* Question Q9.


* [ERROR] Restrict each estimated proportion to 0 through 100 percent.
COMPUTE V_Q9_RANGE_01 = 0.
IF ((NOT MISSING(Q9) AND (Q9 < 0.0 OR Q9 > 100.0))) V_Q9_RANGE_01 = 1.



* [ERROR] Require the category proportions to sum to 100 percent.
COMPUTE V_Q9_TOTAL_01 = 0.
IF (SUM(Q9) <> 100.0) V_Q9_TOTAL_01 = 1.




* Question Q10.


* [ERROR] Restrict the undiagnosed-patient percentage to 0 through 99 percent.
COMPUTE V_Q10_RANGE_01 = 0.
IF ((NOT MISSING(Q10) AND (Q10 < 0.0 OR Q10 > 99.0))) V_Q10_RANGE_01 = 1.




* Question Q11.


* [ERROR] Require a response to the diagnostic-rate comparison question.
COMPUTE V_Q11_MAND_01 = 0.
IF (MISSING(Q11)) V_Q11_MAND_01 = 1.




* Question Q11A.


* [ERROR] Response is required for the undiagnosed-patient percentage estimate.
COMPUTE V_Q11A_R1 = 0.
IF (MISSING(Q11A)) V_Q11A_R1 = 1.



* [ERROR] Undiagnosed-patient percentage must be between 0 and 99.
!Numeric svar=Q11A min='0' max='99'.
COMPUTE V_Q11A_R2 = 0.
IF ((NOT MISSING(Q11A) AND (Q11A < 0.0 OR Q11A > 99.0))) V_Q11A_R2 = 1.




* Question Q11B.


* [ERROR] Response is required for the undiagnosed-patient percentage estimate.
COMPUTE V_Q11B_R1 = 0.
IF (MISSING(Q11B)) V_Q11B_R1 = 1.



* [ERROR] Undiagnosed-patient percentage must be between 0 and 99.
!Numeric svar=Q11B min='0' max='99'.
COMPUTE V_Q11B_R2 = 0.
IF ((NOT MISSING(Q11B) AND (Q11B < 0.0 OR Q11B > 99.0))) V_Q11B_R2 = 1.




* Question Q12.


* [ERROR] All displayed unmet-need ratings must be answered.
COMPUTE V_Q12_R1 = 0.
IF (MISSING(Q12)) V_Q12_R1 = 1.



* [ERROR] Each unmet-need rating must be between 1 and 7.
!Numeric svar=Q12 min='1' max='7'.
COMPUTE V_Q12_R2 = 0.
IF ((NOT MISSING(Q12) AND (Q12 < 1.0 OR Q12 > 7.0))) V_Q12_R2 = 1.




* Question Q13.


* [ERROR] All displayed characteristic ratings must be answered.
COMPUTE V_Q13_R1 = 0.
IF (MISSING(Q13)) V_Q13_R1 = 1.



* [ERROR] Each characteristic rating must be between 1 and 7.
!Numeric svar=Q13 min='1' max='7'.
COMPUTE V_Q13_R2 = 0.
IF ((NOT MISSING(Q13) AND (Q13 < 1.0 OR Q13 > 7.0))) V_Q13_R2 = 1.




* Question Q14.


* [ERROR] All displayed trial-efficacy ratings must be answered.
COMPUTE V_Q14_R1 = 0.
IF (MISSING(Q14)) V_Q14_R1 = 1.



* [ERROR] Each trial-efficacy rating must be between 1 and 7.
!Numeric svar=Q14 min='1' max='7'.
COMPUTE V_Q14_R2 = 0.
IF ((NOT MISSING(Q14) AND (Q14 < 1.0 OR Q14 > 7.0))) V_Q14_R2 = 1.




* Question Q15.


* [ERROR] The open-ended endpoint response is required.
COMPUTE V_Q15_R1 = 0.
IF (MISSING(Q15)) V_Q15_R1 = 1.



* [ERROR] Validate the open-ended endpoint response, which is limited to 250 characters.
COMPUTE V_Q15_R2 = 0.
IF (MISSING(Q15)) V_Q15_R2 = 1.




* Question Q16.


* [ERROR] Response is required for the percentage of patients addressable with Product X.
COMPUTE V_Q16_R1 = 0.
IF (MISSING(Q16)) V_Q16_R1 = 1.



* [ERROR] The estimated percentage must be between 0 and 100.
!Numeric svar=Q16 min='0' max='100'.
COMPUTE V_Q16_R2 = 0.
IF ((NOT MISSING(Q16) AND (Q16 < 0.0 OR Q16 > 100.0))) V_Q16_R2 = 1.




* Question Q17.


* [ERROR] Q17 must be answered when S10a is greater than zero.
COMPUTE V_Q17_R1 = 0.
IF (MISSING(Q17)) V_Q17_R1 = 1.




* Question Q18.


* [ERROR] The open-ended description of suited BVMD patients is required.
COMPUTE V_Q18_R1 = 0.
IF (MISSING(Q18)) V_Q18_R1 = 1.



* [ERROR] Validate the open-ended patient-description response, which is limited to 250 characters.
COMPUTE V_Q18_R2 = 0.
IF (MISSING(Q18)) V_Q18_R2 = 1.




* Question Q19.


* [ERROR] Q19 must be answered when Q17 is greater than zero.
COMPUTE V_Q19_R1 = 0.
IF (MISSING(Q19)) V_Q19_R1 = 1.



* [ERROR] The stated recommendation count must be between 0 and 10.
!Numeric svar=Q19 min='0' max='10'.
COMPUTE V_Q19_R2 = 0.
IF ((NOT MISSING(Q19) AND (Q19 < 0.0 OR Q19 > 10.0))) V_Q19_R2 = 1.




* Question Q20.


* [ERROR] Q20 must be answered when Q17 is less than S10a.
COMPUTE V_Q20_R1 = 0.
IF (MISSING(Q20)) V_Q20_R1 = 1.



* [ERROR] The stated recommendation count must be between 0 and 10.
!Numeric svar=Q20 min='0' max='10'.
COMPUTE V_Q20_R2 = 0.
IF ((NOT MISSING(Q20) AND (Q20 < 0.0 OR Q20 > 10.0))) V_Q20_R2 = 1.




* Question Q21.


* [ERROR] Q21 must be answered when S10b is greater than zero.
COMPUTE V_Q21_R1 = 0.
IF (MISSING(Q21)) V_Q21_R1 = 1.




* Question Q22.


* [ERROR] The number of suited ARB patients is required.
COMPUTE V_Q22_R1 = 0.
IF (MISSING(Q22)) V_Q22_R1 = 1.




* Question Q23.


* [ERROR] Q23 must be answered when Q22 is greater than zero.
COMPUTE V_Q23_R1 = 0.
IF (MISSING(Q23)) V_Q23_R1 = 1.



* [ERROR] The stated recommendation count must be between 0 and 10.
!Numeric svar=Q23 min='0' max='10'.
COMPUTE V_Q23_R2 = 0.
IF ((NOT MISSING(Q23) AND (Q23 < 0.0 OR Q23 > 10.0))) V_Q23_R2 = 1.




* Question Q24.


* [ERROR] Q24 must be answered when Q22 is below S10b and S10b is greater than zero.
COMPUTE V_Q24_R1 = 0.
IF (MISSING(Q24)) V_Q24_R1 = 1.



* [ERROR] The stated recommendation count must be between 0 and 10.
!Numeric svar=Q24 min='0' max='10'.
COMPUTE V_Q24_R2 = 0.
IF ((NOT MISSING(Q24) AND (Q24 < 0.0 OR Q24 > 10.0))) V_Q24_R2 = 1.




* Question Q25.


* [ERROR] The open-ended explanation of limiting factors is required.
COMPUTE V_Q25_R1 = 0.
IF (MISSING(Q25)) V_Q25_R1 = 1.



* [ERROR] Validate the open-ended limiting-factors response, which is limited to 250 characters.
COMPUTE V_Q25_R2 = 0.
IF (MISSING(Q25)) V_Q25_R2 = 1.




* Question Q26.


* [ERROR] One benefit-comparison response must be selected for each therapy row.
COMPUTE V_Q26_R1 = 0.
IF (MISSING(Q26)) V_Q26_R1 = 1.





*===============================================================================.
* FINAL VALIDATION SUMMARY.
*===============================================================================.
COMPUTE VALIDATION_OVERALL = MAX(V_S1_MAND_01, V_S2_MAND_01, V_S3_MAND_01, V_S4_RANGE_01, V_S4_SCREEN_01, V_S4_SCREEN_02, V_S4_SCREEN_03, V_S4_SCREEN_04, V_S5_RANGE_01, V_S5_SCREEN_01, V_S5_SCREEN_02, V_S6_MAND_01, V_S7_MAND_01, V_S9_RANGE_01, V_S9_SCREEN_01, V_S9_SCREEN_02, V_S8_MAND_01, V_S8_MULTI_01, V_S8_MIN_01, V_S10_RANGE_01, V_Q1_RANGE_01, V_Q1A_RANGE_01, V_Q1B_RANGE_01, V_Q1C_RANGE_01, V_Q1D_RANGE_01, V_Q2_RANGE_01, V_Q3_RANGE_01, V_Q4_RANGE_01, V_Q5_MAND_01, V_Q5_RANGE_01, V_Q6_RANGE_01, V_Q7_MAND_01, V_Q7_RANGE_01, V_Q8_MAND_01, V_Q8_RANGE_01, V_Q9_RANGE_01, V_Q9_TOTAL_01, V_Q10_RANGE_01, V_Q11_MAND_01, V_Q11A_R1, V_Q11A_R2, V_Q11B_R1, V_Q11B_R2, V_Q12_R1, V_Q12_R2, V_Q13_R1, V_Q13_R2, V_Q14_R1, V_Q14_R2, V_Q15_R1, V_Q15_R2, V_Q16_R1, V_Q16_R2, V_Q17_R1, V_Q18_R1, V_Q18_R2, V_Q19_R1, V_Q19_R2, V_Q20_R1, V_Q20_R2, V_Q21_R1, V_Q22_R1, V_Q23_R1, V_Q23_R2, V_Q24_R1, V_Q24_R2, V_Q25_R1, V_Q25_R2, V_Q26_R1).
FREQUENCIES VARIABLES=V_S1_MAND_01 V_S2_MAND_01 V_S3_MAND_01 V_S4_RANGE_01 V_S4_SCREEN_01 V_S4_SCREEN_02 V_S4_SCREEN_03 V_S4_SCREEN_04 V_S5_RANGE_01 V_S5_SCREEN_01 V_S5_SCREEN_02 V_S6_MAND_01 V_S7_MAND_01 V_S9_RANGE_01 V_S9_SCREEN_01 V_S9_SCREEN_02 V_S8_MAND_01 V_S8_MULTI_01 V_S8_MIN_01 V_S10_RANGE_01 V_Q1_RANGE_01 V_Q1A_RANGE_01 V_Q1B_RANGE_01 V_Q1C_RANGE_01 V_Q1D_RANGE_01 V_Q2_RANGE_01 V_Q3_RANGE_01 V_Q4_RANGE_01 V_Q5_MAND_01 V_Q5_RANGE_01 V_Q6_RANGE_01 V_Q7_MAND_01 V_Q7_RANGE_01 V_Q8_MAND_01 V_Q8_RANGE_01 V_Q9_RANGE_01 V_Q9_TOTAL_01 V_Q10_RANGE_01 V_Q11_MAND_01 V_Q11A_R1 V_Q11A_R2 V_Q11B_R1 V_Q11B_R2 V_Q12_R1 V_Q12_R2 V_Q13_R1 V_Q13_R2 V_Q14_R1 V_Q14_R2 V_Q15_R1 V_Q15_R2 V_Q16_R1 V_Q16_R2 V_Q17_R1 V_Q18_R1 V_Q18_R2 V_Q19_R1 V_Q19_R2 V_Q20_R1 V_Q20_R2 V_Q21_R1 V_Q22_R1 V_Q23_R1 V_Q23_R2 V_Q24_R1 V_Q24_R2 V_Q25_R1 V_Q25_R2 V_Q26_R1 VALIDATION_OVERALL.

* MODEL WARNINGS.
* The questionnaire supplies response labels but not coded values for the categorical screener questions, so invalid-code and option-specific screen-out rules were not emitted.
* Dynamic upper bounds and allocation-total constraints referring to S9, S10a, S10b, Q1 subvariables, and Q5 subvariables were not emitted because those component variables are not supplied as canonical variables in this batch.
* The S8 exclusive option is identified textually as 'None of the above', but its binary variable name is not supplied; an exclusive-variable rule was therefore not emitted.
* The Q1A/Q1B/Q1C/Q1D routing conditions and Q6 applicability condition refer to component variables not supplied as canonical variables in this batch.
* Dependent numeric subfields within Q19, Q20, Q23, and Q24 have questionnaire-specified dynamic upper bounds, but no separate canonical variables are supplied for those subfields; only the explicitly stated 0-10 recommendation-count range is validated.
* Q26 provides therapy row labels but does not provide response-value codes or separate canonical variables for the row responses, so only the explicit one-response-per-row completion check is represented.
* Repaired numeric range rule Q11A_R2 from explicit questionnaire bounds.
* Repaired numeric range rule Q11B_R2 from explicit questionnaire bounds.
* Repaired numeric range rule Q12_R2 from explicit questionnaire bounds.
* Repaired numeric range rule Q13_R2 from explicit questionnaire bounds.
* Repaired numeric range rule Q14_R2 from explicit questionnaire bounds.
* Repaired numeric range rule Q16_R2 from explicit questionnaire bounds.
* Omitted incomplete model rule: Rule Q17_R2 requires variables and a range or allowed_values.
* Repaired numeric range rule Q19_R2 from explicit questionnaire bounds.
* Repaired numeric range rule Q20_R2 from explicit questionnaire bounds.
* Omitted incomplete model rule: Rule Q21_R2 requires variables and a range or allowed_values.
* Omitted incomplete model rule: Rule Q22_R2 requires variables and a range or allowed_values.
* Repaired numeric range rule Q23_R2 from explicit questionnaire bounds.
* Repaired numeric range rule Q24_R2 from explicit questionnaire bounds.


EXECUTE.
