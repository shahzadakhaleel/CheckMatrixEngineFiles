* Encoding: UTF-8.
* Generated deterministically by Survey Programming AI.
* Source: (V17_R97726) QRE_MASTER_Jorveza_Susp_20260714.docx.
TITLE 'Questionnaire Jorveza® Suspension Market Research –'.



*===============================================================================.
* SECTION MAIN: Questionnaire.
*===============================================================================.

* Question V1.
* No validation generated: Version-control note documenting questionnaire changes; not a respondent-answer question.



* Question V2.
* No validation generated: Version-control note documenting edits and queries; not a respondent-answer question.



* Question V3.
* No validation generated: Version-control note documenting questionnaire changes; not a respondent-answer question.



* Question V4.
* No validation generated: Version-control note documenting questionnaire changes; not a respondent-answer question.



* Question V5.
* No validation generated: Version-control note documenting questionnaire changes; not a respondent-answer question.



* Question V6.
* No validation generated: Version-control note documenting questionnaire changes; not a respondent-answer question.



* Question V7.
* No validation generated: Version-control note documenting questionnaire changes; not a respondent-answer question.



* Question V8.
* No validation generated: Version-control note documenting questionnaire changes; not a respondent-answer question.



* Question V9.
* No validation generated: Version-control note documenting questionnaire changes; not a respondent-answer question.



* Question V10.
* No validation generated: Version-control note documenting questionnaire changes; not a respondent-answer question.



* Question V11.
* No validation generated: Version-control note documenting questionnaire changes; not a respondent-answer question.



* Question V12.
* No validation generated: Version-control note documenting questionnaire changes; not a respondent-answer question.



* Question V13.
* No validation generated: Data-processing change note; not a respondent-answer question.



* Question V14.
* No validation generated: Version-control note documenting questionnaire changes; not a respondent-answer question.



* Question V15.
* No validation generated: Version-control note documenting questionnaire changes; not a respondent-answer question.



* Question V16.
* No validation generated: Version-control note documenting questionnaire changes; not a respondent-answer question.



* Question V17.
* No validation generated: Quota and version-control note; not a respondent-answer question.



* Question S7.
* No validation generated: Quota and recruiting instruction without a defined respondent response scale or supported target variable.



* Question S0.
* No validation generated: Display-only study introduction and confidentiality information; no respondent answer is collected.



* Question S1.


* [ERROR] A response is required for the confidentiality agreement single-select question.
COMPUTE V_S1_MANDATORY = 0.
IF (MISSING(S1)) V_S1_MANDATORY = 1.



* [ERROR] S1 must contain one of the documented agreement responses.
COMPUTE V_S1_CODES = 0.
IF ((NOT MISSING(S1) AND NOT ANY(S1, 'Yes', 'No'))) V_S1_CODES = 1.



* [ERROR] Respondents selecting No must be screened out immediately.
COMPUTE V_S1_SCREENOUT = 0.
IF (S1 = 'No') V_S1_SCREENOUT = 1.




* Question S2.


* [ERROR] A response is required for the current-employment single-select question.
COMPUTE V_S2_MANDATORY = 0.
IF (MISSING(S2)) V_S2_MANDATORY = 1.



* [ERROR] S2 must contain one of the documented employment responses.
COMPUTE V_S2_CODES = 0.
IF ((NOT MISSING(S2) AND NOT ANY(S2, 'Yes', 'No'))) V_S2_CODES = 1.



* [ERROR] Respondents selecting Yes must be screened out after the screener.
COMPUTE V_S2_SCREENOUT = 0.
IF (S2 = 'Yes') V_S2_SCREENOUT = 1.




* Question S3.


* [ERROR] A specialty must be selected.
COMPUTE V_S3_MANDATORY = 0.
IF (MISSING(S3)) V_S3_MANDATORY = 1.



* [ERROR] S3 must contain one of the documented specialty responses.
COMPUTE V_S3_CODES = 0.
IF ((NOT MISSING(S3) AND NOT ANY(S3, 'Paediatrician', 'Paediatric gastroenterology', 'Gastroenterology', 'Paediatric surgery', 'Allergy / immunology', 'Diabetology', 'Oncology', 'Cardiology', 'Dermatology', 'Endocrinology', 'Neurology', 'Orthopaedics', 'Pulmonology', 'Psychiatry', 'Radiology', 'Urology', 'General practitioner', 'Other'))) V_S3_CODES = 1.




* Question S4.


* [ERROR] A professional work setting must be selected.
COMPUTE V_S4_MANDATORY = 0.
IF (MISSING(S4)) V_S4_MANDATORY = 1.



* [ERROR] S4 must contain one of the documented work-setting responses.
COMPUTE V_S4_CODES = 0.
IF ((NOT MISSING(S4) AND NOT ANY(S4, 'Hospital', 'Private practice'))) V_S4_CODES = 1.




* Question S5.


* [ERROR] Years of practice must be an integer from 1 through 60, as documented in the question.
COMPUTE V_S5_RANGE = 0.
IF ((NOT MISSING(S5) AND NOT ANY(S5, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60))) V_S5_RANGE = 1.



* [ERROR] Respondents reporting fewer than 3 years of practice must be screened out after the screener.
COMPUTE V_S5_SCREENOUT = 0.
IF (S5 < 3) V_S5_SCREENOUT = 1.




* Question S6.


* [ERROR] A response about recent endoscopy activity must be provided.
COMPUTE V_S6_MANDATORY = 0.
IF (MISSING(S6)) V_S6_MANDATORY = 1.



* [ERROR] S6 must contain one of the documented endoscopy-activity responses.
COMPUTE V_S6_CODES = 0.
IF ((NOT MISSING(S6) AND NOT ANY(S6, 'Yes, performed endoscopies myself', 'Yes, endoscopies performed by a colleague', 'No'))) V_S6_CODES = 1.




* Question S8.


* [ERROR] Require a response to the gender single-select question.
COMPUTE V_S8_MISSING = 0.
IF (MISSING(S8)) V_S8_MISSING = 1.




* Question S9.


* [ERROR] Require an age response.
COMPUTE V_S9_MISSING = 0.
IF (MISSING(S9)) V_S9_MISSING = 1.



* [ERROR] Screen out respondents younger than 28 or older than 66.
COMPUTE V_S9_SCREENOUT = 0.
IF (S9 < 28 AND S9 > 66) V_S9_SCREENOUT = 1.




* Question S10.


* [ERROR] Require a response to the awareness multiple-select question.
COMPUTE V_S10_MISSING = 0.
IF (MISSING(S10)) V_S10_MISSING = 1.



* [ERROR] Validate the awareness multiple-response set.
!MULTI_A svar=S10 evar=S10.
COMPUTE V_S10_MULTI = 0.
IF ((NOT MISSING(S10) AND NOT ANY(S10, 0, 1))) V_S10_MULTI = 1.




* Question S11.
* No validation generated: Conditionally shown by country, but the country routing variable is not supplied in this batch.



* Question S12.


* [ERROR] Require confirmation of the adverse-event information and study continuation terms.
COMPUTE V_S12_MANDATORY = 0.
IF (MISSING(S12)) V_S12_MANDATORY = 1.




* Question Q1.


* [ERROR] Require selection of the healthcare professional with the initial medical contact.
COMPUTE V_Q1_MISSING = 0.
IF (MISSING(Q1)) V_Q1_MISSING = 1.




* Question Q1A.


* [ERROR] Require selection of the professional responsible for diagnosis.
COMPUTE V_Q1A_MISSING = 0.
IF (MISSING(Q1A)) V_Q1A_MISSING = 1.




* Question Q1B.
* No validation generated: Conditionally shown for France, but the country routing variable is not supplied in this batch.



* Question Q1C.
* No validation generated: Conditionally shown for Sweden, but the country routing variable is not supplied in this batch.



* Question Q1D.
* No validation generated: The model proposed only incomplete rules; they were omitted during deterministic validation.



* Question Q2.


* [ERROR] Require the ranking question to be answered.
COMPUTE V_Q2_MISSING = 0.
IF (MISSING(Q2)) V_Q2_MISSING = 1.



* [ERROR] Validate the Top 5 ranking with permitted ranks from 1 through 5.
!Rank_ALL_CHK svar=Q2 evar=Q2 rank=5.
COMPUTE V_Q2_RANK = 0.
IF ((NOT MISSING(Q2) AND NOT RANGE(Q2, 1, 5))) V_Q2_RANK = 1.




* Question Q2A.


* [ERROR] Require a response to the age-group symptom matrix.
COMPUTE V_Q2A_MISSING = 0.
IF (MISSING(Q2A)) V_Q2A_MISSING = 1.



* [ERROR] Validate multiple selections within each age-group symptom column.
!MULTI_B svar=Q2A evar=Q2A.
COMPUTE V_Q2A_MULTI = 0.
IF ((NOT MISSING(Q2A) AND NOT ANY(Q2A, 0, 1))) V_Q2A_MULTI = 1.




* Question Q3.


* [ERROR] Require selection of the respondent's diagnostic involvement.
COMPUTE V_Q3_MISSING = 0.
IF (MISSING(Q3)) V_Q3_MISSING = 1.




* Question Q3A.


* [ERROR] Require selection of the typical number of biopsies.
COMPUTE V_Q3A_MISSING = 0.
IF (MISSING(Q3A)) V_Q3A_MISSING = 1.




* Question Q3B.


* [ERROR] Require a reason when no biopsies are collected.
COMPUTE V_Q3B_MISSING = 0.
IF (MISSING(Q3B)) V_Q3B_MISSING = 1.



* [INFO] Validate the conditional open-ended explanation for not collecting biopsies.
COMPUTE V_Q3B_OPEN = 0.
IF (MISSING(Q3B)) V_Q3B_OPEN = 1.




* Question Q3C.


* [ERROR] Require an answer about whether biopsy approach differs by age group.
COMPUTE V_Q3C_MISSING = 0.
IF (MISSING(Q3C)) V_Q3C_MISSING = 1.




* Question Q3D.


* [ERROR] Require one biopsy-approach response for each age group when approaches differ.
COMPUTE V_Q3D_MISSING = 0.
IF (MISSING(Q3D)) V_Q3D_MISSING = 1.




* Question Q3E.


* [ERROR] Require selection of the usual disease-severity assessment approach.
COMPUTE V_Q3E_MISSING = 0.
IF (MISSING(Q3E)) V_Q3E_MISSING = 1.




* Question Q3F.


* [ERROR] Require an answer about whether biopsy approach differs by severity.
COMPUTE V_Q3F_MISSING = 0.
IF (MISSING(Q3F)) V_Q3F_MISSING = 1.




* Question Q3G.


* [ERROR] Require one biopsy-approach response for each severity level when approaches differ.
COMPUTE V_Q3G_MISSING = 0.
IF (MISSING(Q3G)) V_Q3G_MISSING = 1.




* Question Q4.


* [ERROR] Require selection of the follow-up reassessment frequency.
COMPUTE V_Q4_MISSING = 0.
IF (MISSING(Q4)) V_Q4_MISSING = 1.




* Question Q4A.
* No validation generated: Conditionally shown for Germany, but the country routing variable is not supplied in this batch.



* Question Q5.


* [ERROR] Require selection of the monotherapy versus combination-therapy pattern.
COMPUTE V_Q5_MISSING = 0.
IF (MISSING(Q5)) V_Q5_MISSING = 1.




* Question Q5A.
* No validation generated: The model proposed only incomplete rules; they were omitted during deterministic validation.



* Question Q5B.


* [ERROR] Require an answer about the influence of comorbidities on treatment choice.
COMPUTE V_Q5B_MISSING = 0.
IF (MISSING(Q5B)) V_Q5B_MISSING = 1.




* Question Q5C.
* No validation generated: The model proposed only rules with unknown variables; they were omitted during deterministic validation.



* Question Q5D.


* [ERROR] Validate that at least one treatment is ranked in each age-group column and ranking values do not exceed the seven listed treatment rows.
COMPUTE V_Q5D_R1 = 0.
IF ((NOT MISSING(Q5D) AND NOT RANGE(Q5D, 1, 7))) V_Q5D_R1 = 1.




* Question Q5E.


* [ERROR] Validate dosage entries are between 1 and 9999 mg per dose when the question is shown in the Netherlands.
COMPUTE V_Q5E_R1 = 0.
IF ((NOT MISSING(Q5E) AND (Q5E < 1.0 OR Q5E > 9999.0))) V_Q5E_R1 = 1.




* Question Q5F.
* No validation generated: The model proposed only rules with unknown variables; they were omitted during deterministic validation.



* Question Q5G.


* [ERROR] Validate dosage entries are between 1 and 9999 mg per dose when the question is shown in the Netherlands.
COMPUTE V_Q5G_R1 = 0.
IF ((NOT MISSING(Q5G) AND (Q5G < 1.0 OR Q5G > 9999.0))) V_Q5G_R1 = 1.




* Question Q5H.


* [ERROR] Validate that no more than five treatment drivers are selected per treatment column.
COMPUTE V_Q5H_R1 = 0.
IF ((NOT MISSING(Q5H) AND NOT ANY(Q5H, 0, 1))) V_Q5H_R1 = 1.




* Question Q5I.


* [ERROR] Validate that no more than five treatment barriers are selected per treatment column.
COMPUTE V_Q5I_R1 = 0.
IF ((NOT MISSING(Q5I) AND NOT ANY(Q5I, 0, 1))) V_Q5I_R1 = 1.




* Question Q5J.


* [ERROR] Validate recommendation ratings are on the stated 0 to 10 scale.
COMPUTE V_Q5J_R1 = 0.
IF ((NOT MISSING(Q5J) AND NOT ANY(Q5J, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10))) V_Q5J_R1 = 1.




* Question Q5K.


* [ERROR] Require one adherence rating per age group when the question is shown in France.
COMPUTE V_Q5K_R1 = 0.
IF (MISSING(Q5K)) V_Q5K_R1 = 1.




* Question Q5L.


* [ERROR] Require one parental-influence rating for each listed factor.
COMPUTE V_Q5L_R1 = 0.
IF (MISSING(Q5L)) V_Q5L_R1 = 1.




* Question Q5M.


* [ERROR] Validate the multi-select response for parental concerns.
COMPUTE V_Q5M_R1 = 0.
IF ((NOT MISSING(Q5M) AND NOT ANY(Q5M, 0, 1))) V_Q5M_R1 = 1.




* Question Q6.


* [ERROR] Require a first-line treatment selection.
COMPUTE V_Q6_R1 = 0.
IF (MISSING(Q6)) V_Q6_R1 = 1.




* Question Q6A.


* [ERROR] Require a second-line treatment selection.
COMPUTE V_Q6A_R1 = 0.
IF (MISSING(Q6A)) V_Q6A_R1 = 1.




* Question Q6B.


* [ERROR] Require a third-line treatment selection.
COMPUTE V_Q6B_R1 = 0.
IF (MISSING(Q6B)) V_Q6B_R1 = 1.




* Question Q6C.


* [ERROR] Require one escalation-time selection for each therapy-line row.
COMPUTE V_Q6C_R1 = 0.
IF (MISSING(Q6C)) V_Q6C_R1 = 1.




* Question Q7.


* [ERROR] Validate effectiveness ratings are on the stated 1 to 5 scale.
COMPUTE V_Q7_R1 = 0.
IF ((NOT MISSING(Q7) AND NOT ANY(Q7, 1, 2, 3, 4, 5))) V_Q7_R1 = 1.




* Question Q7A.


* [ERROR] Require a therapy-effectiveness assessment when the question is shown in France.
COMPUTE V_Q7A_R1 = 0.
IF (MISSING(Q7A)) V_Q7A_R1 = 1.




* Question Q8.


* [ERROR] Validate induction and induction-followed-by-maintenance patient counts are at least 0 and do not exceed S7.
COMPUTE V_Q8_R1 = 0.
IF ((NOT MISSING(Q8) AND (Q8 < 0.0 OR Q8 > 999999.0))) V_Q8_R1 = 1.




* Question Q8A.


* [ERROR] Require a maintenance-therapy decision when the question is shown in France.
COMPUTE V_Q8A_R1 = 0.
IF (MISSING(Q8A)) V_Q8A_R1 = 1.




* Question Q8B.


* [ERROR] Require a maintenance-duration selection when Q8_2 is greater than 0.
COMPUTE V_Q8B_R1 = 0.
IF (MISSING(Q8B)) V_Q8B_R1 = 1.




* Question Q9.


* [ERROR] Validate that no more than five current-treatment limitations are selected.
COMPUTE V_Q9_R1 = 0.
IF ((NOT MISSING(Q9) AND NOT ANY(Q9, 0, 1))) V_Q9_R1 = 1.




* Question Q10.


* [ERROR] Validate that no more than five clinical challenges or unmet needs are selected.
COMPUTE V_Q10_R1 = 0.
IF ((NOT MISSING(Q10) AND NOT ANY(Q10, 0, 1))) V_Q10_R1 = 1.




* Question Q10A.


* [ERROR] Require a communication-support selection when shown for respondents in Switzerland who selected Q10_9.
COMPUTE V_Q10A_R1 = 0.
IF (MISSING(Q10A)) V_Q10A_R1 = 1.



* [ERROR] Require a communication-support selection when shown for respondents in Switzerland who selected Q10_10.
COMPUTE V_Q10A_R2 = 0.
IF (MISSING(Q10A)) V_Q10A_R2 = 1.




* Question Q10B.


* [ERROR] Validate that the five selected treatment attributes use ranks from 1 through 5.
COMPUTE V_Q10B_R1 = 0.
IF ((NOT MISSING(Q10B) AND NOT RANGE(Q10B, 1, 5))) V_Q10B_R1 = 1.




* Question Q11.


* [ERROR] Require an awareness response about the new treatment.
COMPUTE V_Q11_R1 = 0.
IF (MISSING(Q11)) V_Q11_R1 = 1.




* Question Q11A.


* [ERROR] Validate that Q11A is applicable only when country is SUI.
COMPUTE V_Q11A_R1 = 0.
IF (((country = 'SUI') AND (MISSING(Q11A))) OR ((NOT (country = 'SUI')) AND (NOT MISSING(Q11A)))) V_Q11A_R1 = 1.



* [ERROR] Validate that the improvement rating is one of the stated scale values from 1 to 5.
COMPUTE V_Q11A_R2 = 0.
IF ((NOT MISSING(Q11A) AND NOT ANY(Q11A, 1, 2, 3, 4, 5))) V_Q11A_R2 = 1.




* Question Q12.


* [ERROR] Validate the multi-select response structure for expected benefits and drivers.
COMPUTE V_Q12_R1 = 0.
IF ((NOT MISSING(Q12) AND NOT ANY(Q12, 0, 1))) V_Q12_R1 = 1.



* [ERROR] Validate that no more than five expected benefits or drivers are selected.
COMPUTE V_Q12_R2 = 0.
IF (SUM(Q12) > 5) V_Q12_R2 = 1.




* Question Q13.


* [ERROR] Validate the multi-select response structure for expected concerns and barriers.
COMPUTE V_Q13_R1 = 0.
IF ((NOT MISSING(Q13) AND NOT ANY(Q13, 0, 1))) V_Q13_R1 = 1.



* [ERROR] Validate that no more than five expected concerns or barriers are selected.
COMPUTE V_Q13_R2 = 0.
IF (SUM(Q13) > 5) V_Q13_R2 = 1.




* Question Q14.


* [ERROR] Validate that a future line of therapy is selected.
COMPUTE V_Q14_R1 = 0.
IF (MISSING(Q14)) V_Q14_R1 = 1.




* Question Q15.


* [ERROR] Validate that the initial perception rating is one of the stated scale values from 1 to 7.
COMPUTE V_Q15_R1 = 0.
IF ((NOT MISSING(Q15) AND NOT ANY(Q15, 1, 2, 3, 4, 5, 6, 7))) V_Q15_R1 = 1.




* Question Q16.


* [ERROR] Validate that prescription interest is rated on the stated 1-to-7 scale.
COMPUTE V_Q16_R1 = 0.
IF ((NOT MISSING(Q16) AND NOT ANY(Q16, 1, 2, 3, 4, 5, 6, 7))) V_Q16_R1 = 1.




* Question Q16A.


* [ERROR] Validate that each age-group prescription-interest rating uses the stated 1-to-7 scale.
COMPUTE V_Q16A_R1 = 0.
IF ((NOT MISSING(Q16A) AND NOT ANY(Q16A, 1, 2, 3, 4, 5, 6, 7))) V_Q16A_R1 = 1.




* Question Q16B.


* [ERROR] Validate that each severity-level prescription-interest rating uses the stated 1-to-7 scale.
COMPUTE V_Q16B_R1 = 0.
IF ((NOT MISSING(Q16B) AND NOT ANY(Q16B, 1, 2, 3, 4, 5, 6, 7))) V_Q16B_R1 = 1.




* Question Q16C.


* [ERROR] Validate that each treatment-setting prescription-interest rating uses the stated 1-to-7 scale.
COMPUTE V_Q16C_R1 = 0.
IF ((NOT MISSING(Q16C) AND NOT ANY(Q16C, 1, 2, 3, 4, 5, 6, 7))) V_Q16C_R1 = 1.




* Question Q16D.


* [ERROR] Validate that the percentage share is between 0% and 100%.
COMPUTE V_Q16D_R1 = 0.
IF ((NOT MISSING(Q16D) AND NOT ANY(Q16D, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100))) V_Q16D_R1 = 1.




* Question Q17.


* [ERROR] Validate that the recommendation rating is one of the stated values from 0 to 10.
COMPUTE V_Q17_R1 = 0.
IF ((NOT MISSING(Q17) AND NOT ANY(Q17, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10))) V_Q17_R1 = 1.




* Question Q18.


* [ERROR] Validate that the required top-three factors question is answered.
COMPUTE V_Q18_R1 = 0.
IF (MISSING(Q18)) V_Q18_R1 = 1.



* [ERROR] Validate the multi-select response structure for product decision factors.
COMPUTE V_Q18_R2 = 0.
IF ((NOT MISSING(Q18) AND NOT ANY(Q18, 0, 1))) V_Q18_R2 = 1.



* [ERROR] Validate that exactly three product decision factors are selected at minimum.
COMPUTE V_Q18_R3 = 0.
IF (SUM(Q18) < 3) V_Q18_R3 = 1.



* [ERROR] Validate that no more than three product decision factors are selected.
COMPUTE V_Q18_R4 = 0.
IF (SUM(Q18) > 3) V_Q18_R4 = 1.




* Question Q19.


* [ERROR] Validate the open-ended support response field.
COMPUTE V_Q19_R1 = 0.
IF (MISSING(Q19)) V_Q19_R1 = 1.




* Question Q20.


* [ERROR] Validate that Q20 is applicable only when country is FRA.
COMPUTE V_Q20_R1 = 0.
IF (((country = 'FRA') AND (MISSING(Q20))) OR ((NOT (country = 'FRA')) AND (NOT MISSING(Q20)))) V_Q20_R1 = 1.



* [ERROR] Validate the multi-select response structure for paediatric-to-adult transition management.
COMPUTE V_Q20_R2 = 0.
IF ((NOT MISSING(Q20) AND NOT ANY(Q20, 0, 1))) V_Q20_R2 = 1.





*===============================================================================.
* FINAL VALIDATION SUMMARY.
*===============================================================================.
COMPUTE VALIDATION_OVERALL = MAX(V_S1_MANDATORY, V_S1_CODES, V_S1_SCREENOUT, V_S2_MANDATORY, V_S2_CODES, V_S2_SCREENOUT, V_S3_MANDATORY, V_S3_CODES, V_S4_MANDATORY, V_S4_CODES, V_S5_RANGE, V_S5_SCREENOUT, V_S6_MANDATORY, V_S6_CODES, V_S8_MISSING, V_S9_MISSING, V_S9_SCREENOUT, V_S10_MISSING, V_S10_MULTI, V_S12_MANDATORY, V_Q1_MISSING, V_Q1A_MISSING, V_Q2_MISSING, V_Q2_RANK, V_Q2A_MISSING, V_Q2A_MULTI, V_Q3_MISSING, V_Q3A_MISSING, V_Q3B_MISSING, V_Q3B_OPEN, V_Q3C_MISSING, V_Q3D_MISSING, V_Q3E_MISSING, V_Q3F_MISSING, V_Q3G_MISSING, V_Q4_MISSING, V_Q5_MISSING, V_Q5B_MISSING, V_Q5D_R1, V_Q5E_R1, V_Q5G_R1, V_Q5H_R1, V_Q5I_R1, V_Q5J_R1, V_Q5K_R1, V_Q5L_R1, V_Q5M_R1, V_Q6_R1, V_Q6A_R1, V_Q6B_R1, V_Q6C_R1, V_Q7_R1, V_Q7A_R1, V_Q8_R1, V_Q8A_R1, V_Q8B_R1, V_Q9_R1, V_Q10_R1, V_Q10A_R1, V_Q10A_R2, V_Q10B_R1, V_Q11_R1, V_Q11A_R1, V_Q11A_R2, V_Q12_R1, V_Q12_R2, V_Q13_R1, V_Q13_R2, V_Q14_R1, V_Q15_R1, V_Q16_R1, V_Q16A_R1, V_Q16B_R1, V_Q16C_R1, V_Q16D_R1, V_Q17_R1, V_Q18_R1, V_Q18_R2, V_Q18_R3, V_Q18_R4, V_Q19_R1, V_Q20_R1, V_Q20_R2).
FREQUENCIES VARIABLES=V_S1_MANDATORY V_S1_CODES V_S1_SCREENOUT V_S2_MANDATORY V_S2_CODES V_S2_SCREENOUT V_S3_MANDATORY V_S3_CODES V_S4_MANDATORY V_S4_CODES V_S5_RANGE V_S5_SCREENOUT V_S6_MANDATORY V_S6_CODES V_S8_MISSING V_S9_MISSING V_S9_SCREENOUT V_S10_MISSING V_S10_MULTI V_S12_MANDATORY V_Q1_MISSING V_Q1A_MISSING V_Q2_MISSING V_Q2_RANK V_Q2A_MISSING V_Q2A_MULTI V_Q3_MISSING V_Q3A_MISSING V_Q3B_MISSING V_Q3B_OPEN V_Q3C_MISSING V_Q3D_MISSING V_Q3E_MISSING V_Q3F_MISSING V_Q3G_MISSING V_Q4_MISSING V_Q5_MISSING V_Q5B_MISSING V_Q5D_R1 V_Q5E_R1 V_Q5G_R1 V_Q5H_R1 V_Q5I_R1 V_Q5J_R1 V_Q5K_R1 V_Q5L_R1 V_Q5M_R1 V_Q6_R1 V_Q6A_R1 V_Q6B_R1 V_Q6C_R1 V_Q7_R1 V_Q7A_R1 V_Q8_R1 V_Q8A_R1 V_Q8B_R1 V_Q9_R1 V_Q10_R1 V_Q10A_R1 V_Q10A_R2 V_Q10B_R1 V_Q11_R1 V_Q11A_R1 V_Q11A_R2 V_Q12_R1 V_Q12_R2 V_Q13_R1 V_Q13_R2 V_Q14_R1 V_Q15_R1 V_Q16_R1 V_Q16A_R1 V_Q16B_R1 V_Q16C_R1 V_Q16D_R1 V_Q17_R1 V_Q18_R1 V_Q18_R2 V_Q18_R3 V_Q18_R4 V_Q19_R1 V_Q20_R1 V_Q20_R2 VALIDATION_OVERALL.

* MODEL WARNINGS.
* Country-dependent routing and screen-out conditions in S3, S4, S6, and S7 were not emitted because the questionnaire batch does not supply a canonical country variable.
* The Q1D questionnaire states that referral percentages must sum to no more than 100%, but the supplied schema and approved macro parameters do not provide a safe representation for an inequality sum check; only the explicit individual percentage range was emitted.
* The Q5A questionnaire states that treatment percentages must sum to at least 100%, but the supplied schema and approved macro parameters do not provide a safe representation for an inequality sum check; only the explicit individual percentage range was emitted.
* Country-dependent routing checks for S11, Q1B, Q1C, and Q4A were omitted because no country variable is supplied in this batch.
* Response option codes were not supplied, so invalid-code and exclusive-option checks were not emitted.
* Omitted incomplete model rule: Rule S9_RANGE requires variables and a range or allowed_values.
* Omitted incomplete model rule: Rule Q1D_RANGE requires variables and a range or allowed_values.
* Omitted incomplete model rule: Rule Q5A_RANGE requires variables and a range or allowed_values.
* Q8 explicitly requires the two counts to sum to S7, but the supplied validation schema has no typed parameter for a variable-based expected total; only non-negative numeric-range validation is emitted.
* The questionnaire provides conditional country routing and those conditions are represented using structured predicates; no SPSS filter-variable macro parameters were inferred.
* Omitted unsafe model rule: Rule Q5C_R1 references unknown variables: ['Q5B'].
* Omitted unsafe model rule: Rule Q5F_R1 references unknown variables: ['Q3E'].


EXECUTE.
