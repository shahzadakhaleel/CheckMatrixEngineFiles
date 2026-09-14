* Encoding: UTF-8.
* Generated deterministically by Survey Programming AI.
* Source: (V5_R100162_ONCO) Vogelstein_Oncologist_Survey_for_review_KV_JS6.docx.
TITLE 'Vogelstein Oncologist Survey for review'.
* Project: Adoption of commercial comprehensive genomic profiling (CGP) tests.


*===============================================================================.
* SECTION Section I: Respondent Qualification & Institutional Profile: Section I: Respondent Qualification & Institutional Profile.
*===============================================================================.

* Question S1.
* No validation generated: The question has mandatory, allowed-code, exclusivity, and termination evidence, but no canonical response variable is supplied, so a safe validation target cannot be identified.



* Question S2.
* No validation generated: The question has mandatory, multi-select, exclusivity, and termination evidence, but no canonical response variable is supplied, so a safe validation target cannot be identified.



* Question S3.
* No validation generated: The question has mandatory, allowed-code, exclusivity, and termination evidence, but no canonical response variable is supplied, so a safe validation target cannot be identified.




*===============================================================================.
* SECTION Main section: Main section.
*===============================================================================.

* Question Q4.
* No validation generated: The question has mandatory and allowed-code evidence, but no canonical response variable is supplied, so a safe validation target cannot be identified.




*===============================================================================.
* SECTION Section II — Current CGP Utilization & Use Cases: Section II — Current CGP Utilization & Use Cases.
*===============================================================================.

* Question Q5.
* No validation generated: The question has mandatory, multi-select, and maximum-three-selection evidence, but no canonical response variable is supplied, so a safe validation target cannot be identified.



* Question Q6.
* No validation generated: The question has mandatory and numeric slider-range evidence, but no canonical response variable is supplied, so a safe validation target cannot be identified.



* Question Q7.
* No validation generated: The question has mandatory forced-ranking evidence with a top-five limit, but no canonical response variable is supplied, so a safe validation target cannot be identified.



* Question Q8.
* No validation generated: The question has mandatory forced-ranking evidence with a top-three limit, but no canonical response variable is supplied, so a safe validation target cannot be identified.



* Question Q9.
* No validation generated: The question has mandatory forced-ranking evidence for three items, but no canonical response variable is supplied, so a safe validation target cannot be identified.



* Question Q10.
* No validation generated: The question has mandatory multi-select evidence, but no canonical response variable is supplied, so a safe validation target cannot be identified.




*===============================================================================.
* SECTION Section II — High-Content vs Smaller Panels: Section II — High-Content vs Smaller Panels.
*===============================================================================.

* Question Q11_1.
* No validation generated: The required grid response and allowed five-point scale are evident, but no canonical response variable is supplied, so a safe validation target cannot be identified.



* Question Q11_2.
* No validation generated: The required grid response and allowed five-point scale are evident, but no canonical response variable is supplied, so a safe validation target cannot be identified.



* Question Q11_3.
* No validation generated: The required grid response and allowed five-point scale are evident, but no canonical response variable is supplied, so a safe validation target cannot be identified.



* Question Q11_4.
* No validation generated: The required grid response and allowed five-point scale are evident, but no canonical response variable is supplied, so a safe validation target cannot be identified.



* Question Q11_5.
* No validation generated: The required grid response and allowed five-point scale are evident, but no canonical response variable is supplied, so a safe validation target cannot be identified.



* Question Q12.
* No validation generated: The question has mandatory multi-select and exclusive-answer evidence, but no canonical response variable is supplied, so a safe validation target cannot be identified.




*===============================================================================.
* SECTION Section III — Multimodality vs Single-Mode Assays: Section III — Multimodality vs Single-Mode Assays.
*===============================================================================.

* Question Q13.
* No validation generated: The question has mandatory and allowed-code evidence, but no canonical response variable is supplied, so a safe validation target cannot be identified.



* Question Q14_1.
* No validation generated: The required grid response and allowed five-point scale are evident, but no canonical response variable is supplied, so a safe validation target cannot be identified.



* Question Q14_2.
* No validation generated: The required grid response and allowed five-point scale are evident, but no canonical response variable is supplied, so a safe validation target cannot be identified.



* Question Q14_3.
* No validation generated: The required grid response and allowed five-point scale are evident, but no canonical response variable is supplied, so a safe validation target cannot be identified.



* Question Q14_4.
* No validation generated: The required grid response and allowed five-point scale are evident, but no canonical response variable is supplied, so a safe validation target cannot be identified.



* Question Q14_5.
* No validation generated: The required grid response and allowed five-point scale are evident, but no canonical response variable is supplied, so a safe validation target cannot be identified.



* Question Q15.
* No validation generated: The question has mandatory multi-select and exclusive-answer evidence, but no canonical response variable is supplied, so a safe validation target cannot be identified.




*===============================================================================.
* SECTION Section IV — Perceived Differentiation Among CGP Offerings: Section IV — Perceived Differentiation Among CGP Offerings.
*===============================================================================.

* Question Q16.
* No validation generated: The question has mandatory and allowed-code evidence, but no canonical response variable is supplied, so a safe validation target cannot be identified.



* Question Q17.
* No validation generated: The question has mandatory complete-ranking evidence with ranks one through thirteen, but no canonical response variable is supplied, so a safe validation target cannot be identified.



* Question Q18.


* [ERROR] Q18 is required and must have a response.
COMPUTE V_Q18_MANDATORY = 0.
IF (MISSING(Q18)) V_Q18_MANDATORY = 1.



* [ERROR] Q18 must contain one of the seven listed response codes.
COMPUTE V_Q18_CODES = 0.
IF ((NOT MISSING(Q18) AND NOT ANY(Q18, 1, 2, 3, 4, 5, 6, 7))) V_Q18_CODES = 1.




* Question Q19.


* [ERROR] The required open-text response for Q19 must not be missing.
COMPUTE V_Q19_MANDATORY = 0.
IF (MISSING(Q19)) V_Q19_MANDATORY = 1.



* [ERROR] Q19 requires an open-text response containing the preferred vendor and reason.
!String svar=Q19.
COMPUTE V_Q19_OPEN = 0.
IF (MISSING(Q19)) V_Q19_OPEN = 1.




* Question Q19_New.


* [ERROR] Q19_New is required and must have at least one selected vendor.
COMPUTE V_Q19NEW_MANDATORY = 0.
IF (MISSING(Q19_New)) V_Q19NEW_MANDATORY = 1.



* [ERROR] Q19_New must use only the eleven listed vendor codes.
COMPUTE V_Q19NEW_CODES = 0.
IF ((NOT MISSING(Q19_New) AND NOT ANY(Q19_New, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11))) V_Q19NEW_CODES = 1.



* [ERROR] Q19_New is a multi-select question and responses must be represented as multiple-response data.
!MULTI_A svar=Q19_New.
COMPUTE V_Q19NEW_MULTI = 0.
IF ((NOT MISSING(Q19_New_1) AND NOT ANY(Q19_New_1, 0, 1)) OR (NOT MISSING(Q19_New_2) AND NOT ANY(Q19_New_2, 0, 1)) OR (NOT MISSING(Q19_New_3) AND NOT ANY(Q19_New_3, 0, 1)) OR (NOT MISSING(Q19_New_4) AND NOT ANY(Q19_New_4, 0, 1)) OR (NOT MISSING(Q19_New_5) AND NOT ANY(Q19_New_5, 0, 1)) OR (NOT MISSING(Q19_New_6) AND NOT ANY(Q19_New_6, 0, 1)) OR (NOT MISSING(Q19_New_7) AND NOT ANY(Q19_New_7, 0, 1)) OR (NOT MISSING(Q19_New_8) AND NOT ANY(Q19_New_8, 0, 1)) OR (NOT MISSING(Q19_New_9) AND NOT ANY(Q19_New_9, 0, 1)) OR (NOT MISSING(Q19_New_10) AND NOT ANY(Q19_New_10, 0, 1)) OR (NOT MISSING(Q19_New_11) AND NOT ANY(Q19_New_11, 0, 1))) V_Q19NEW_MULTI = 1.




* Question Q19b_vendor.


* [ERROR] Q19b_vendor is required when the piped preferred-vendor question is displayed.
COMPUTE V_Q19BV_MANDATORY = 0.
IF (MISSING(Q19b_vendor)) V_Q19BV_MANDATORY = 1.




* Question Q19b_reason.


* [ERROR] The required reason for the preferred vendor must not be missing.
COMPUTE V_Q19BR_MANDATORY = 0.
IF (MISSING(Q19b_reason)) V_Q19BR_MANDATORY = 1.



* [ERROR] Q19b_reason requires an open-text explanation.
!String svar=Q19b_reason.
COMPUTE V_Q19BR_OPEN = 0.
IF (MISSING(Q19b_reason)) V_Q19BR_OPEN = 1.




* Question Q19c_1.


* [ERROR] The required percentage for piped vendor 1 must not be missing when applicable.
COMPUTE V_Q19C1_MANDATORY = 0.
IF (MISSING(Q19c_1)) V_Q19C1_MANDATORY = 1.



* [ERROR] Q19c_1 is a percentage and must be between 0 and 100.
!Numeric svar=Q19c_1 min=0 max=100.
COMPUTE V_Q19C1_RANGE = 0.
IF ((NOT MISSING(Q19c_1) AND (Q19c_1 < 0.0 OR Q19c_1 > 100.0))) V_Q19C1_RANGE = 1.



* [ERROR] The vendor-share percentages across Q19c must total 100%.
!Sum_to_var svar=Q19c_1 evar=Q19c_other.
COMPUTE V_Q19C_TOTAL = 0.
IF (SUM(Q19c_1, Q19c_2, Q19c_3, Q19c_4, Q19c_other) <> 100.0) V_Q19C_TOTAL = 1.




* Question Q19c_2.


* [ERROR] The required percentage for piped vendor 2 must not be missing when applicable.
COMPUTE V_Q19C2_MANDATORY = 0.
IF (MISSING(Q19c_2)) V_Q19C2_MANDATORY = 1.



* [ERROR] Q19c_2 is a percentage and must be between 0 and 100.
!Numeric svar=Q19c_2 min=0 max=100.
COMPUTE V_Q19C2_RANGE = 0.
IF ((NOT MISSING(Q19c_2) AND (Q19c_2 < 0.0 OR Q19c_2 > 100.0))) V_Q19C2_RANGE = 1.




* Question Q19c_3.


* [ERROR] The required percentage for piped vendor 3 must not be missing when applicable.
COMPUTE V_Q19C3_MANDATORY = 0.
IF (MISSING(Q19c_3)) V_Q19C3_MANDATORY = 1.



* [ERROR] Q19c_3 is a percentage and must be between 0 and 100.
!Numeric svar=Q19c_3 min=0 max=100.
COMPUTE V_Q19C3_RANGE = 0.
IF ((NOT MISSING(Q19c_3) AND (Q19c_3 < 0.0 OR Q19c_3 > 100.0))) V_Q19C3_RANGE = 1.




* Question Q19c_4.


* [ERROR] The required percentage for piped vendor 4 must not be missing when applicable.
COMPUTE V_Q19C4_MANDATORY = 0.
IF (MISSING(Q19c_4)) V_Q19C4_MANDATORY = 1.



* [ERROR] Q19c_4 is a percentage and must be between 0 and 100.
!Numeric svar=Q19c_4 min=0 max=100.
COMPUTE V_Q19C4_RANGE = 0.
IF ((NOT MISSING(Q19c_4) AND (Q19c_4 < 0.0 OR Q19c_4 > 100.0))) V_Q19C4_RANGE = 1.




* Question Q19c_other.


* [ERROR] The required percentage for the other vendor row must not be missing when applicable.
COMPUTE V_Q19CO_MANDATORY = 0.
IF (MISSING(Q19c_other)) V_Q19CO_MANDATORY = 1.



* [ERROR] Q19c_other is a percentage and must be between 0 and 100.
!Numeric svar=Q19c_other min=0 max=100.
COMPUTE V_Q19CO_RANGE = 0.
IF ((NOT MISSING(Q19c_other) AND (Q19c_other < 0.0 OR Q19c_other > 100.0))) V_Q19CO_RANGE = 1.





*===============================================================================.
* SECTION Section V — MRD: Utilization & Relationship to CGP: Section V — MRD: Utilization & Relationship to CGP.
*===============================================================================.

* Question Q19A_1.


* [ERROR] Q19A_1 is required and must have a response.
COMPUTE V_Q19A1_MANDATORY = 0.
IF (MISSING(Q19A_1)) V_Q19A1_MANDATORY = 1.



* [ERROR] Q19A_1 must contain one of the five listed agreement-scale codes.
COMPUTE V_Q19A1_CODES = 0.
IF ((NOT MISSING(Q19A_1) AND NOT ANY(Q19A_1, 1, 2, 3, 4, 5))) V_Q19A1_CODES = 1.



* [WARNING] Check for identical responses across the six-item Q19A rating battery.
COMPUTE V_Q19A_STRAIGHTLINE = 0.
IF (NOT MISSING(Q19A_1) AND Q19A_1 = Q19A_2 AND Q19A_1 = Q19A_3 AND Q19A_1 = Q19A_4 AND Q19A_1 = Q19A_5 AND Q19A_1 = Q19A_6) V_Q19A_STRAIGHTLINE = 1.




* Question Q19A_2.


* [ERROR] Q19A_2 is required and must have a response.
COMPUTE V_Q19A2_MANDATORY = 0.
IF (MISSING(Q19A_2)) V_Q19A2_MANDATORY = 1.



* [ERROR] Q19A_2 must contain one of the five listed agreement-scale codes.
COMPUTE V_Q19A2_CODES = 0.
IF ((NOT MISSING(Q19A_2) AND NOT ANY(Q19A_2, 1, 2, 3, 4, 5))) V_Q19A2_CODES = 1.




* Question Q19A_3.


* [ERROR] Q19A_3 is required and must have a response.
COMPUTE V_Q19A3_MANDATORY = 0.
IF (MISSING(Q19A_3)) V_Q19A3_MANDATORY = 1.



* [ERROR] Q19A_3 must contain one of the five listed agreement-scale codes.
COMPUTE V_Q19A3_CODES = 0.
IF ((NOT MISSING(Q19A_3) AND NOT ANY(Q19A_3, 1, 2, 3, 4, 5))) V_Q19A3_CODES = 1.




* Question Q19A_4.


* [ERROR] Q19A_4 is required and must have a response.
COMPUTE V_Q19A4_MANDATORY = 0.
IF (MISSING(Q19A_4)) V_Q19A4_MANDATORY = 1.



* [ERROR] Q19A_4 must contain one of the five listed agreement-scale codes.
COMPUTE V_Q19A4_CODES = 0.
IF ((NOT MISSING(Q19A_4) AND NOT ANY(Q19A_4, 1, 2, 3, 4, 5))) V_Q19A4_CODES = 1.




* Question Q19A_5.


* [ERROR] Q19A_5 is required and must have a response.
COMPUTE V_Q19A5_MANDATORY = 0.
IF (MISSING(Q19A_5)) V_Q19A5_MANDATORY = 1.



* [ERROR] Q19A_5 must contain one of the five listed agreement-scale codes.
COMPUTE V_Q19A5_CODES = 0.
IF ((NOT MISSING(Q19A_5) AND NOT ANY(Q19A_5, 1, 2, 3, 4, 5))) V_Q19A5_CODES = 1.




* Question Q19A_6.


* [ERROR] Q19A_6 is required and must have a response.
COMPUTE V_Q19A6_MANDATORY = 0.
IF (MISSING(Q19A_6)) V_Q19A6_MANDATORY = 1.



* [ERROR] Q19A_6 must contain one of the five listed agreement-scale codes.
COMPUTE V_Q19A6_CODES = 0.
IF ((NOT MISSING(Q19A_6) AND NOT ANY(Q19A_6, 1, 2, 3, 4, 5))) V_Q19A6_CODES = 1.





*===============================================================================.
* SECTION Section VI — Wrap-up: Section VI — Wrap-up.
*===============================================================================.

* Question Q21.


* [ERROR] Q21 is required and must not be missing.
COMPUTE V_Q21_MANDATORY = 0.
IF (MISSING(Q21)) V_Q21_MANDATORY = 1.



* [ERROR] Q21 requires an open-text response describing the biggest barrier or unmet need.
!String svar=Q21.
COMPUTE V_Q21_OPEN = 0.
IF (MISSING(Q21)) V_Q21_OPEN = 1.





*===============================================================================.
* FINAL VALIDATION SUMMARY.
*===============================================================================.
COMPUTE VALIDATION_OVERALL = MAX(V_Q18_MANDATORY, V_Q18_CODES, V_Q19_MANDATORY, V_Q19_OPEN, V_Q19NEW_MANDATORY, V_Q19NEW_CODES, V_Q19NEW_MULTI, V_Q19BV_MANDATORY, V_Q19BR_MANDATORY, V_Q19BR_OPEN, V_Q19C1_MANDATORY, V_Q19C1_RANGE, V_Q19C_TOTAL, V_Q19C2_MANDATORY, V_Q19C2_RANGE, V_Q19C3_MANDATORY, V_Q19C3_RANGE, V_Q19C4_MANDATORY, V_Q19C4_RANGE, V_Q19CO_MANDATORY, V_Q19CO_RANGE, V_Q19A1_MANDATORY, V_Q19A1_CODES, V_Q19A_STRAIGHTLINE, V_Q19A2_MANDATORY, V_Q19A2_CODES, V_Q19A3_MANDATORY, V_Q19A3_CODES, V_Q19A4_MANDATORY, V_Q19A4_CODES, V_Q19A5_MANDATORY, V_Q19A5_CODES, V_Q19A6_MANDATORY, V_Q19A6_CODES, V_Q21_MANDATORY, V_Q21_OPEN).
FREQUENCIES VARIABLES=V_Q18_MANDATORY V_Q18_CODES V_Q19_MANDATORY V_Q19_OPEN V_Q19NEW_MANDATORY V_Q19NEW_CODES V_Q19NEW_MULTI V_Q19BV_MANDATORY V_Q19BR_MANDATORY V_Q19BR_OPEN V_Q19C1_MANDATORY V_Q19C1_RANGE V_Q19C_TOTAL V_Q19C2_MANDATORY V_Q19C2_RANGE V_Q19C3_MANDATORY V_Q19C3_RANGE V_Q19C4_MANDATORY V_Q19C4_RANGE V_Q19CO_MANDATORY V_Q19CO_RANGE V_Q19A1_MANDATORY V_Q19A1_CODES V_Q19A_STRAIGHTLINE V_Q19A2_MANDATORY V_Q19A2_CODES V_Q19A3_MANDATORY V_Q19A3_CODES V_Q19A4_MANDATORY V_Q19A4_CODES V_Q19A5_MANDATORY V_Q19A5_CODES V_Q19A6_MANDATORY V_Q19A6_CODES V_Q21_MANDATORY V_Q21_OPEN VALIDATION_OVERALL.

* MODEL WARNINGS.
* Evidence-supported checks could not be emitted because every question in this batch has a null canonical variable. Emitting question IDs as response variables would invent identifiers and violate the supplied questionnaire metadata.
* The canonical questionnaire does not provide SPSS variable names; canonical question IDs were used as validation targets. The exact piped-variable mapping for Q19b_vendor and Q19c rows is not supplied, so vendor-specific piping consistency checks were not added.


EXECUTE.
