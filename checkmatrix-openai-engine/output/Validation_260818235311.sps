* Encoding: UTF-8.
* Generated deterministically by Survey Programming AI.
* Source: (V3_R99343) Myelofibrosis_Quant_survey_vFINAL_Clean_Updated_v3_Norstella_20260717.docx.
TITLE '│'.



*===============================================================================.
* SECTION MAIN: Questionnaire.
*===============================================================================.

* Question V1.
* No validation generated: Informational survey/version label with no respondent-entered response or validation evidence.



* Question V2.
* No validation generated: Informational survey/version label with no respondent-entered response or validation evidence.



* Question V3.
* No validation generated: Informational screener introduction and quota text with no respondent-entered response or validation evidence.



* Question S1.


* [ERROR] Allow only the listed practice locations.
COMPUTE V_S1_INVALID_CODES = 0.
IF ((NOT MISSING(S1) AND NOT ANY(S1, 'United States', 'United Kingdom', 'Germany', 'France', 'Spain', 'Italy', 'China', 'Japan', 'Other'))) V_S1_INVALID_CODES = 1.



* [ERROR] Require a single practice-location response.
COMPUTE V_S1_MANDATORY = 0.
IF (MISSING(S1)) V_S1_MANDATORY = 1.



* [ERROR] Terminate respondents selecting Other.
COMPUTE V_S1_SCREEN_OUT_OTHER = 0.
IF (S1 = 'Other') V_S1_SCREEN_OUT_OTHER = 1.




* Question S2.


* [ERROR] Allow only the listed cities.
COMPUTE V_S2_INVALID_CODES = 0.
IF ((NOT MISSING(S2) AND NOT ANY(S2, 'Beijing', 'Shanghai', 'Guangzhou', 'Other'))) V_S2_INVALID_CODES = 1.



* [ERROR] Require a city response for China respondents.
COMPUTE V_S2_MANDATORY_CHINA = 0.
IF (MISSING(S2)) V_S2_MANDATORY_CHINA = 1.



* [ERROR] Terminate China respondents selecting Other.
COMPUTE V_S2_SCREEN_OUT_OTHER = 0.
IF (S2 = 'Other') V_S2_SCREEN_OUT_OTHER = 1.




* Question S3.


* [ERROR] Allow only the listed specialties.
COMPUTE V_S3_INVALID_CODES = 0.
IF ((NOT MISSING(S3) AND NOT ANY(S3, 'Medical oncology', 'Hematology', 'Hematology / Oncology', 'Other'))) V_S3_INVALID_CODES = 1.



* [ERROR] Require a primary-specialty response.
COMPUTE V_S3_MANDATORY = 0.
IF (MISSING(S3)) V_S3_MANDATORY = 1.



* [ERROR] Terminate respondents selecting Other.
COMPUTE V_S3_SCREEN_OUT_OTHER = 0.
IF (S3 = 'Other') V_S3_SCREEN_OUT_OTHER = 1.




* Question S4.


* [ERROR] Allow only the listed role responses.
COMPUTE V_S4_INVALID_CODES = 0.
IF ((NOT MISSING(S4) AND NOT ANY(S4, 'I am the primary treating physician for myelofibrosis patients.', 'I co-manage myelofibrosis patients as part of a multidisciplinary team.', 'I diagnose / refer only.', 'I do not treat myelofibrosis patients.', 'Other'))) V_S4_INVALID_CODES = 1.



* [ERROR] Require a role response.
COMPUTE V_S4_MANDATORY = 0.
IF (MISSING(S4)) V_S4_MANDATORY = 1.



* [ERROR] Terminate respondents whose role is not primary treating physician.
COMPUTE V_S4_SCREEN_OUT_NONPRIMARY = 0.
IF (ANY(S4, 'I co-manage myelofibrosis patients as part of a multidisciplinary team.', 'I diagnose / refer only.', 'I do not treat myelofibrosis patients.', 'Other')) V_S4_SCREEN_OUT_NONPRIMARY = 1.




* Question S5.


* [ERROR] Restrict patient counts to 0 through 999.
COMPUTE V_S5_RANGE = 0.
IF ((NOT MISSING(S5) AND NOT ANY(S5, 0, 999))) V_S5_RANGE = 1.




* Question Q1.


* [ERROR] Restrict each treatment-line percentage to 0 through 100.
COMPUTE V_Q1_RANGE = 0.
IF ((NOT MISSING(Q1) AND NOT ANY(Q1, 0, 100))) V_Q1_RANGE = 1.



* [ERROR] Require treatment-line percentages to total 100.
!Sum_to_var svar=Q1.
COMPUTE V_Q1_TOTAL = 0.
IF (SUM(Q1) <> 100.0) V_Q1_TOTAL = 1.




* Question Q2.


* [ERROR] Restrict risk-group percentages to 0 through 100.
COMPUTE V_Q2_RANGE = 0.
IF ((NOT MISSING(Q2) AND NOT ANY(Q2, 0, 100))) V_Q2_RANGE = 1.



* [ERROR] Require risk-group percentages to total 100.
!Sum_to_var svar=Q2.
COMPUTE V_Q2_TOTAL = 0.
IF (SUM(Q2) <> 100.0) V_Q2_TOTAL = 1.




* Question Q3.


* [ERROR] Restrict the transplant-ineligible percentage to 0 through 100.
COMPUTE V_Q3_RANGE = 0.
IF ((NOT MISSING(Q3) AND NOT ANY(Q3, 0, 100))) V_Q3_RANGE = 1.




* Question Q4.


* [ERROR] Restrict the first-line-treatment percentage to 0 through 100.
COMPUTE V_Q4_RANGE = 0.
IF ((NOT MISSING(Q4) AND NOT ANY(Q4, 0, 100))) V_Q4_RANGE = 1.




* Question Q5.


* [ERROR] Restrict platelet-group percentages to 0 through 100 for US respondents.
COMPUTE V_Q5_RANGE = 0.
IF ((NOT MISSING(Q5) AND NOT ANY(Q5, 0, 100))) V_Q5_RANGE = 1.



* [ERROR] Require the two platelet-group percentages to total 100 for US respondents.
!Sum_to_var svar=Q5.
COMPUTE V_Q5_TOTAL = 0.
IF (SUM(Q5) <> 100.0) V_Q5_TOTAL = 1.




* Question Q6.


* [ERROR] Restrict treatment-breakdown percentages to 0 through 100 for eligible countries.
COMPUTE V_Q6_RANGE = 0.
IF ((NOT MISSING(Q6) AND NOT ANY(Q6, 0, 100))) V_Q6_RANGE = 1.



* [ERROR] Require each platelet-group treatment column to total 100 for eligible countries.
!Sum_to_var svar=Q6.
COMPUTE V_Q6_TOTAL = 0.
IF (SUM(Q6) <> 100.0) V_Q6_TOTAL = 1.




* Question Q7.


* [ERROR] Restrict treatment-breakdown percentages to 0 through 100 for China respondents.
COMPUTE V_Q7_RANGE = 0.
IF ((NOT MISSING(Q7) AND NOT ANY(Q7, 0, 100))) V_Q7_RANGE = 1.



* [ERROR] Require each platelet-group treatment column to total 100 for China respondents.
!Sum_to_var svar=Q7.
COMPUTE V_Q7_TOTAL = 0.
IF (SUM(Q7) <> 100.0) V_Q7_TOTAL = 1.




* Question Q8.


* [ERROR] Restrict treatment-breakdown percentages to 0 through 100.
COMPUTE V_Q8_RANGE = 0.
IF ((NOT MISSING(Q8) AND NOT ANY(Q8, 0, 100))) V_Q8_RANGE = 1.



* [ERROR] Require each platelet-group treatment column to total 100.
!Sum_to_var svar=Q8.
COMPUTE V_Q8_TOTAL = 0.
IF (SUM(Q8) <> 100.0) V_Q8_TOTAL = 1.




* Question Q9.


* [ERROR] Restrict the second-line-treatment percentage to 0 through 100.
COMPUTE V_Q9_RANGE = 0.
IF ((NOT MISSING(Q9) AND NOT ANY(Q9, 0, 100))) V_Q9_RANGE = 1.




* Question Q10.


* [ERROR] Restrict second-line platelet-group percentages to 0 through 100 for US respondents.
COMPUTE V_Q10_RANGE = 0.
IF ((NOT MISSING(Q10) AND NOT ANY(Q10, 0, 100))) V_Q10_RANGE = 1.



* [ERROR] Require second-line platelet-group percentages to total 100 for US respondents.
!Sum_to_var svar=Q10.
COMPUTE V_Q10_TOTAL = 0.
IF (SUM(Q10) <> 100.0) V_Q10_TOTAL = 1.



* [WARNING] Flag when the second-line percentage with platelets at or above 50,000/µL exceeds the corresponding first-line percentage.
COMPUTE V_Q10_CROSS_Q5 = 0.
IF ((S1 = 'United States' AND Q9 > 0) AND NOT MISSING(Q5) AND NOT MISSING(Q10) AND NOT (Q5 < Q10)) V_Q10_CROSS_Q5 = 1.




* Question Q11.


* [ERROR] Restrict second-line treatment-breakdown percentages to 0 through 100 for eligible countries.
COMPUTE V_Q11_RANGE = 0.
IF ((NOT MISSING(Q11) AND NOT ANY(Q11, 0, 100))) V_Q11_RANGE = 1.



* [ERROR] Require each second-line platelet-group treatment column to total 100.
!Sum_to_var svar=Q11.
COMPUTE V_Q11_TOTAL = 0.
IF (SUM(Q11) <> 100.0) V_Q11_TOTAL = 1.




* Question Q12.


* [ERROR] Restrict second-line treatment-breakdown percentages to 0 through 100 for China respondents.
COMPUTE V_Q12_RANGE = 0.
IF ((NOT MISSING(Q12) AND NOT ANY(Q12, 0, 100))) V_Q12_RANGE = 1.



* [ERROR] Require each second-line platelet-group treatment column to total 100.
!Sum_to_var svar=Q12.
COMPUTE V_Q12_TOTAL = 0.
IF (SUM(Q12) <> 100.0) V_Q12_TOTAL = 1.




* Question Q13.


* [ERROR] Restrict second-line treatment-breakdown percentages to 0 through 100.
COMPUTE V_Q13_RANGE = 0.
IF ((NOT MISSING(Q13) AND NOT ANY(Q13, 0, 100))) V_Q13_RANGE = 1.



* [ERROR] Require each second-line platelet-group treatment column to total 100.
!Sum_to_var svar=Q13.
COMPUTE V_Q13_TOTAL = 0.
IF (SUM(Q13) <> 100.0) V_Q13_TOTAL = 1.




* Question Q14.


* [ERROR] Restrict the third-line-treatment percentage to 0 through 100.
COMPUTE V_Q14_RANGE = 0.
IF ((NOT MISSING(Q14) AND NOT ANY(Q14, 0, 100))) V_Q14_RANGE = 1.




* Question Q15.


* [ERROR] Restrict third-line platelet-group percentages to 0 through 100 for US respondents.
COMPUTE V_Q15_RANGE = 0.
IF ((NOT MISSING(Q15) AND NOT ANY(Q15, 0, 100))) V_Q15_RANGE = 1.



* [ERROR] Require third-line platelet-group percentages to total 100 for US respondents.
!Sum_to_var svar=Q15.
COMPUTE V_Q15_TOTAL = 0.
IF (SUM(Q15) <> 100.0) V_Q15_TOTAL = 1.



* [WARNING] Flag when the third-line percentage with platelets at or above 50,000/µL exceeds the corresponding second-line percentage.
COMPUTE V_Q15_CROSS_Q10 = 0.
IF ((S1 = 'United States' AND Q14 > 0) AND NOT MISSING(Q15) AND NOT MISSING(Q10) AND NOT (Q15 > Q10)) V_Q15_CROSS_Q10 = 1.




* Question Q16.


* [ERROR] Restrict third-line treatment-breakdown percentages to 0 through 100 for eligible countries.
COMPUTE V_Q16_RANGE = 0.
IF ((NOT MISSING(Q16) AND NOT ANY(Q16, 0, 100))) V_Q16_RANGE = 1.



* [ERROR] Require each third-line platelet-group treatment column to total 100.
!Sum_to_var svar=Q16.
COMPUTE V_Q16_TOTAL = 0.
IF (SUM(Q16) <> 100.0) V_Q16_TOTAL = 1.




* Question Q17.


* [ERROR] Restrict third-line treatment-breakdown percentages to 0 through 100 for China respondents.
COMPUTE V_Q17_RANGE = 0.
IF ((NOT MISSING(Q17) AND NOT ANY(Q17, 0, 100))) V_Q17_RANGE = 1.



* [ERROR] Require each third-line platelet-group treatment column to total 100.
!Sum_to_var svar=Q17.
COMPUTE V_Q17_TOTAL = 0.
IF (SUM(Q17) <> 100.0) V_Q17_TOTAL = 1.




* Question Q18.


* [ERROR] Each Q18 percentage entry must be between 0 and 100 inclusive.
COMPUTE V_Q18_R1 = 0.
IF ((NOT MISSING(Q18) AND NOT ANY(Q18, 0, 100))) V_Q18_R1 = 1.



* [ERROR] The percentages in each platelet-count column must total 100%.
COMPUTE V_Q18_R2 = 0.
IF (SUM(Q18) <> 100.0) V_Q18_R2 = 1.




* Question Q19.


* [ERROR] Each Q19 percentage entry must be between 0 and 100 inclusive.
COMPUTE V_Q19_R1 = 0.
IF ((NOT MISSING(Q19) AND NOT ANY(Q19, 0, 100))) V_Q19_R1 = 1.




* Question Q20.


* [ERROR] Each Q20 percentage entry must be between 0 and 100 inclusive.
COMPUTE V_Q20_R1 = 0.
IF ((NOT MISSING(Q20) AND NOT ANY(Q20, 0, 100))) V_Q20_R1 = 1.




* Question Q21.


* [ERROR] Each Q21 percentage entry must be between 0 and 100 inclusive.
COMPUTE V_Q21_R1 = 0.
IF ((NOT MISSING(Q21) AND NOT ANY(Q21, 0, 100))) V_Q21_R1 = 1.




* Question Q22.


* [ERROR] Each Q22 percentage entry must be between 0 and 100 inclusive.
COMPUTE V_Q22_R1 = 0.
IF ((NOT MISSING(Q22) AND NOT ANY(Q22, 0, 100))) V_Q22_R1 = 1.




* Question Q23.


* [ERROR] Each Q23 percentage entry must be between 0 and 100 inclusive.
COMPUTE V_Q23_R1 = 0.
IF ((NOT MISSING(Q23) AND NOT ANY(Q23, 0, 100))) V_Q23_R1 = 1.




* Question Q24.


* [ERROR] Each Q24 percentage entry must be between 0 and 100 inclusive.
COMPUTE V_Q24_R1 = 0.
IF ((NOT MISSING(Q24) AND NOT ANY(Q24, 0, 100))) V_Q24_R1 = 1.




* Question Q25.


* [ERROR] The Q25 percentage entry must be between 0 and 100 inclusive.
COMPUTE V_Q25_R1 = 0.
IF ((NOT MISSING(Q25) AND NOT ANY(Q25, 0, 100))) V_Q25_R1 = 1.




* Question Q26.


* [ERROR] The Q26 percentage entry must be between 0 and 100 inclusive.
COMPUTE V_Q26_R1 = 0.
IF ((NOT MISSING(Q26) AND NOT ANY(Q26, 0, 100))) V_Q26_R1 = 1.




* Question Q27.


* [ERROR] The Q27 percentage entry must be between 0 and 100 inclusive.
COMPUTE V_Q27_R1 = 0.
IF ((NOT MISSING(Q27) AND NOT ANY(Q27, 0, 100))) V_Q27_R1 = 1.




* Question Q28.


* [ERROR] A single response must be selected for the Q28 compliance-risk question.
COMPUTE V_Q28_R1 = 0.
IF (MISSING(Q28)) V_Q28_R1 = 1.





*===============================================================================.
* FINAL VALIDATION SUMMARY.
*===============================================================================.
COMPUTE VALIDATION_OVERALL = MAX(V_S1_INVALID_CODES, V_S1_MANDATORY, V_S1_SCREEN_OUT_OTHER, V_S2_INVALID_CODES, V_S2_MANDATORY_CHINA, V_S2_SCREEN_OUT_OTHER, V_S3_INVALID_CODES, V_S3_MANDATORY, V_S3_SCREEN_OUT_OTHER, V_S4_INVALID_CODES, V_S4_MANDATORY, V_S4_SCREEN_OUT_NONPRIMARY, V_S5_RANGE, V_Q1_RANGE, V_Q1_TOTAL, V_Q2_RANGE, V_Q2_TOTAL, V_Q3_RANGE, V_Q4_RANGE, V_Q5_RANGE, V_Q5_TOTAL, V_Q6_RANGE, V_Q6_TOTAL, V_Q7_RANGE, V_Q7_TOTAL, V_Q8_RANGE, V_Q8_TOTAL, V_Q9_RANGE, V_Q10_RANGE, V_Q10_TOTAL, V_Q10_CROSS_Q5, V_Q11_RANGE, V_Q11_TOTAL, V_Q12_RANGE, V_Q12_TOTAL, V_Q13_RANGE, V_Q13_TOTAL, V_Q14_RANGE, V_Q15_RANGE, V_Q15_TOTAL, V_Q15_CROSS_Q10, V_Q16_RANGE, V_Q16_TOTAL, V_Q17_RANGE, V_Q17_TOTAL, V_Q18_R1, V_Q18_R2, V_Q19_R1, V_Q20_R1, V_Q21_R1, V_Q22_R1, V_Q23_R1, V_Q24_R1, V_Q25_R1, V_Q26_R1, V_Q27_R1, V_Q28_R1).
FREQUENCIES VARIABLES=V_S1_INVALID_CODES V_S1_MANDATORY V_S1_SCREEN_OUT_OTHER V_S2_INVALID_CODES V_S2_MANDATORY_CHINA V_S2_SCREEN_OUT_OTHER V_S3_INVALID_CODES V_S3_MANDATORY V_S3_SCREEN_OUT_OTHER V_S4_INVALID_CODES V_S4_MANDATORY V_S4_SCREEN_OUT_NONPRIMARY V_S5_RANGE V_Q1_RANGE V_Q1_TOTAL V_Q2_RANGE V_Q2_TOTAL V_Q3_RANGE V_Q4_RANGE V_Q5_RANGE V_Q5_TOTAL V_Q6_RANGE V_Q6_TOTAL V_Q7_RANGE V_Q7_TOTAL V_Q8_RANGE V_Q8_TOTAL V_Q9_RANGE V_Q10_RANGE V_Q10_TOTAL V_Q10_CROSS_Q5 V_Q11_RANGE V_Q11_TOTAL V_Q12_RANGE V_Q12_TOTAL V_Q13_RANGE V_Q13_TOTAL V_Q14_RANGE V_Q15_RANGE V_Q15_TOTAL V_Q15_CROSS_Q10 V_Q16_RANGE V_Q16_TOTAL V_Q17_RANGE V_Q17_TOTAL V_Q18_R1 V_Q18_R2 V_Q19_R1 V_Q20_R1 V_Q21_R1 V_Q22_R1 V_Q23_R1 V_Q24_R1 V_Q25_R1 V_Q26_R1 V_Q27_R1 V_Q28_R1 VALIDATION_OVERALL.

* MODEL WARNINGS.
* S5's two numerical components are represented by the supplied base variable S5; the questionnaire does not provide component variable names, so the sum-based threshold screen-out cannot be deterministically expressed.
* Country-specific and zero-response skips for Q6-Q17 are represented only where the controlling variables are explicitly named; platelet-group-specific controls cannot be emitted because component variable names were not supplied.
* Omitted incomplete model rule: Rule S5-threshold requires trigger or applicability.
* Conditional skip instructions for Q18-Q27 refer to platelet-group-specific values of prior questions, but the canonical questionnaire does not provide separate filter variables or response-code mappings; conditional routing checks were therefore omitted.
* Q28 includes an other-specify free-text response, but no separate canonical variable for that text field was supplied; an open-end consistency check was therefore omitted.


EXECUTE.
