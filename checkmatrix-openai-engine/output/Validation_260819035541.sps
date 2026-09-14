* Encoding: UTF-8.
* Generated deterministically by Survey Programming AI.
* Source: (R99698 V2) Brinsupri_NCFB_Physician_Survey_V2.docx.
TITLE 'BRINSUPRI (brensocatib) in NCFB — Physician Demand Estimation Survey: Pulmonologists'.
* Project: BRINSUPRI (brensocatib) in non-cystic fibrosis bronchiectasis (NCFB).


*===============================================================================.
* SECTION Compliance: Compliance.
*===============================================================================.

* Question C10_1.


* [ERROR] A response is required for the compliance statement.
COMPUTE V_C10_1_MISSING = 0.
IF (MISSING(C10_1)) V_C10_1_MISSING = 1.



* [ERROR] Only Yes (1) or No (2) is valid.
COMPUTE V_C10_1_CODES = 0.
IF ((NOT MISSING(C10_1) AND NOT ANY(C10_1, 1, 2))) V_C10_1_CODES = 1.



* [ERROR] Terminate when the respondent answers Yes.
COMPUTE V_C10_1_SCREEN = 0.
IF (C10_1 = 1) V_C10_1_SCREEN = 1.




* Question C10_2.


* [ERROR] A response is required for the compliance statement.
COMPUTE V_C10_2_MISSING = 0.
IF (MISSING(C10_2)) V_C10_2_MISSING = 1.



* [ERROR] Only Yes (1) or No (2) is valid.
COMPUTE V_C10_2_CODES = 0.
IF ((NOT MISSING(C10_2) AND NOT ANY(C10_2, 1, 2))) V_C10_2_CODES = 1.



* [ERROR] Terminate when the respondent answers Yes.
COMPUTE V_C10_2_SCREEN = 0.
IF (C10_2 = 1) V_C10_2_SCREEN = 1.




* Question C10_3.


* [ERROR] A response is required for the compliance statement.
COMPUTE V_C10_3_MISSING = 0.
IF (MISSING(C10_3)) V_C10_3_MISSING = 1.



* [ERROR] Only Yes (1) or No (2) is valid.
COMPUTE V_C10_3_CODES = 0.
IF ((NOT MISSING(C10_3) AND NOT ANY(C10_3, 1, 2))) V_C10_3_CODES = 1.



* [ERROR] Terminate when the respondent answers Yes.
COMPUTE V_C10_3_SCREEN = 0.
IF (C10_3 = 1) V_C10_3_SCREEN = 1.




* Question C10_4.


* [ERROR] A response is required for the compliance statement.
COMPUTE V_C10_4_MISSING = 0.
IF (MISSING(C10_4)) V_C10_4_MISSING = 1.



* [ERROR] Only Yes (1) or No (2) is valid.
COMPUTE V_C10_4_CODES = 0.
IF ((NOT MISSING(C10_4) AND NOT ANY(C10_4, 1, 2))) V_C10_4_CODES = 1.



* [ERROR] Terminate when the respondent answers Yes.
COMPUTE V_C10_4_SCREEN = 0.
IF (C10_4 = 1) V_C10_4_SCREEN = 1.




* Question C20.


* [ERROR] A response is required for the confidentiality agreement.
COMPUTE V_C20_MISSING = 0.
IF (MISSING(C20)) V_C20_MISSING = 1.



* [ERROR] Only Yes (1) or No (2) is valid.
COMPUTE V_C20_CODES = 0.
IF ((NOT MISSING(C20) AND NOT ANY(C20, 1, 2))) V_C20_CODES = 1.



* [ERROR] Terminate when the respondent answers No.
COMPUTE V_C20_SCREEN = 0.
IF (C20 = 2) V_C20_SCREEN = 1.





*===============================================================================.
* SECTION Screener: Screener.
*===============================================================================.

* Question SQ10.


* [ERROR] A primary specialty must be selected.
COMPUTE V_SQ10_MISSING = 0.
IF (MISSING(SQ10)) V_SQ10_MISSING = 1.



* [ERROR] Only the five listed specialty codes are valid.
COMPUTE V_SQ10_CODES = 0.
IF ((NOT MISSING(SQ10) AND NOT ANY(SQ10, 1, 2, 3, 4, 5))) V_SQ10_CODES = 1.



* [ERROR] Terminate respondents who do not select Pulmonology.
COMPUTE V_SQ10_SCREEN = 0.
IF (ANY(SQ10, 2, 3, 4, 5)) V_SQ10_SCREEN = 1.




* Question SQ20.


* [ERROR] A practice setting must be selected.
COMPUTE V_SQ20_MISSING = 0.
IF (MISSING(SQ20)) V_SQ20_MISSING = 1.



* [ERROR] Only the listed practice-setting codes are valid.
COMPUTE V_SQ20_CODES = 0.
IF ((NOT MISSING(SQ20) AND NOT ANY(SQ20, 1, 2, 3, 4, 5, 98))) V_SQ20_CODES = 1.




* Question SQ30_r1.


* [ERROR] The number of NCFB patients managed must be entered.
COMPUTE V_SQ30_R1_MISSING = 0.
IF (MISSING(SQ30_r1)) V_SQ30_R1_MISSING = 1.



* [ERROR] The count must be between 0 and 9999.
!Numeric svar=SQ30_r1 min=0 max=9999.
COMPUTE V_SQ30_R1_RANGE = 0.
IF ((NOT MISSING(SQ30_r1) AND (SQ30_r1 < 0.0 OR SQ30_r1 > 9999.0))) V_SQ30_R1_RANGE = 1.




* Question SQ30_r2.


* [ERROR] The number of COPD patients managed must be entered.
COMPUTE V_SQ30_R2_MISSING = 0.
IF (MISSING(SQ30_r2)) V_SQ30_R2_MISSING = 1.



* [ERROR] The count must be between 0 and 9999.
!Numeric svar=SQ30_r2 min=0 max=9999.
COMPUTE V_SQ30_R2_RANGE = 0.
IF ((NOT MISSING(SQ30_r2) AND (SQ30_r2 < 0.0 OR SQ30_r2 > 9999.0))) V_SQ30_R2_RANGE = 1.




* Question SQ30_r3.


* [ERROR] The number of asthma patients managed must be entered.
COMPUTE V_SQ30_R3_MISSING = 0.
IF (MISSING(SQ30_r3)) V_SQ30_R3_MISSING = 1.



* [ERROR] The count must be between 0 and 9999.
!Numeric svar=SQ30_r3 min=0 max=9999.
COMPUTE V_SQ30_R3_RANGE = 0.
IF ((NOT MISSING(SQ30_r3) AND (SQ30_r3 < 0.0 OR SQ30_r3 > 9999.0))) V_SQ30_R3_RANGE = 1.




* Question SQ30_r4.


* [ERROR] The number of cystic fibrosis patients managed must be entered.
COMPUTE V_SQ30_R4_MISSING = 0.
IF (MISSING(SQ30_r4)) V_SQ30_R4_MISSING = 1.



* [ERROR] The count must be between 0 and 9999.
!Numeric svar=SQ30_r4 min=0 max=9999.
COMPUTE V_SQ30_R4_RANGE = 0.
IF ((NOT MISSING(SQ30_r4) AND (SQ30_r4 < 0.0 OR SQ30_r4 > 9999.0))) V_SQ30_R4_RANGE = 1.




* Question SQ40.


* [ERROR] A role in NCFB treatment decisions must be selected.
COMPUTE V_SQ40_MISSING = 0.
IF (MISSING(SQ40)) V_SQ40_MISSING = 1.



* [ERROR] Only the four listed role codes are valid.
COMPUTE V_SQ40_CODES = 0.
IF ((NOT MISSING(SQ40) AND NOT ANY(SQ40, 1, 2, 3, 4))) V_SQ40_CODES = 1.




* Question SQ50.


* [ERROR] A familiarity and usage category must be selected.
COMPUTE V_SQ50_MISSING = 0.
IF (MISSING(SQ50)) V_SQ50_MISSING = 1.



* [ERROR] Only the six listed familiarity and usage codes are valid.
COMPUTE V_SQ50_CODES = 0.
IF ((NOT MISSING(SQ50) AND NOT ANY(SQ50, 1, 2, 3, 4, 5, 6))) V_SQ50_CODES = 1.





*===============================================================================.
* SECTION Section A: NCFB Patient Population & Diagnosis: Section A: NCFB Patient Population & Diagnosis.
*===============================================================================.

* Question Q10_r1.


* [ERROR] A mild-severity patient count must be entered.
COMPUTE V_Q10_R1_MISSING = 0.
IF (MISSING(Q10_r1)) V_Q10_R1_MISSING = 1.



* [ERROR] The mild count must be between 0 and the total NCFB patient count.
!Numeric svar=Q10_r1 min=0 max='SQ30_r1'.
COMPUTE V_Q10_R1_RANGE = 0.
IF ((NOT MISSING(Q10_r1) AND (Q10_r1 < 0.0))) V_Q10_R1_RANGE = 1.




* Question Q10_r2.


* [ERROR] A moderate-severity patient count must be entered.
COMPUTE V_Q10_R2_MISSING = 0.
IF (MISSING(Q10_r2)) V_Q10_R2_MISSING = 1.



* [ERROR] The moderate count must be between 0 and the total NCFB patient count.
!Numeric svar=Q10_r2 min=0 max='SQ30_r1'.
COMPUTE V_Q10_R2_RANGE = 0.
IF ((NOT MISSING(Q10_r2) AND (Q10_r2 < 0.0))) V_Q10_R2_RANGE = 1.




* Question Q10_r3.


* [ERROR] A severe-severity patient count must be entered.
COMPUTE V_Q10_R3_MISSING = 0.
IF (MISSING(Q10_r3)) V_Q10_R3_MISSING = 1.



* [ERROR] The severe count must be between 0 and the total NCFB patient count.
!Numeric svar=Q10_r3 min=0 max='SQ30_r1'.
COMPUTE V_Q10_R3_RANGE = 0.
IF ((NOT MISSING(Q10_r3) AND (Q10_r3 < 0.0))) V_Q10_R3_RANGE = 1.




* Question Q20_r1.


* [ERROR] A patient count for 0 pulmonary exacerbations must be entered.
COMPUTE V_Q20_R1_MISSING = 0.
IF (MISSING(Q20_r1)) V_Q20_R1_MISSING = 1.



* [ERROR] The count must be between 0 and the total NCFB patient count.
!Numeric svar=Q20_r1 min=0 max='SQ30_r1'.
COMPUTE V_Q20_R1_RANGE = 0.
IF ((NOT MISSING(Q20_r1) AND (Q20_r1 < 0.0))) V_Q20_R1_RANGE = 1.




* Question Q20_r2.


* [ERROR] A patient count for 1 pulmonary exacerbation must be entered.
COMPUTE V_Q20_R2_MISSING = 0.
IF (MISSING(Q20_r2)) V_Q20_R2_MISSING = 1.



* [ERROR] The count must be between 0 and the total NCFB patient count.
!Numeric svar=Q20_r2 min=0 max='SQ30_r1'.
COMPUTE V_Q20_R2_RANGE = 0.
IF ((NOT MISSING(Q20_r2) AND (Q20_r2 < 0.0))) V_Q20_R2_RANGE = 1.




* Question Q20_r3.


* [ERROR] A patient count for 2 pulmonary exacerbations must be entered.
COMPUTE V_Q20_R3_MISSING = 0.
IF (MISSING(Q20_r3)) V_Q20_R3_MISSING = 1.



* [ERROR] The count must be between 0 and the total NCFB patient count.
!Numeric svar=Q20_r3 min=0 max='SQ30_r1'.
COMPUTE V_Q20_R3_RANGE = 0.
IF ((NOT MISSING(Q20_r3) AND (Q20_r3 < 0.0))) V_Q20_R3_RANGE = 1.




* Question Q20_r4.


* [ERROR] A patient count for 3 or more pulmonary exacerbations must be entered.
COMPUTE V_Q20_R4_MISSING = 0.
IF (MISSING(Q20_r4)) V_Q20_R4_MISSING = 1.



* [ERROR] The count must be between 0 and the total NCFB patient count.
!Numeric svar=Q20_r4 min=0 max='SQ30_r1'.
COMPUTE V_Q20_R4_RANGE = 0.
IF ((NOT MISSING(Q20_r4) AND (Q20_r4 < 0.0))) V_Q20_R4_RANGE = 1.




* Question Q30.


* [ERROR] A progression-frequency response must be selected.
COMPUTE V_Q30_MISSING = 0.
IF (MISSING(Q30)) V_Q30_MISSING = 1.



* [ERROR] Only the five listed progression-frequency codes are valid.
COMPUTE V_Q30_CODES = 0.
IF ((NOT MISSING(Q30) AND NOT ANY(Q30, 1, 2, 3, 4, 5))) V_Q30_CODES = 1.




* Question Q40_r1.


* [ERROR] Only the five listed follow-up-frequency codes are valid when shown.
COMPUTE V_Q40_R1_CODES = 0.
IF ((NOT MISSING(Q40_r1) AND NOT ANY(Q40_r1, 1, 2, 3, 4, 5))) V_Q40_R1_CODES = 1.



* [ERROR] This row applies only when the 0-PE subgroup has patients.
COMPUTE V_Q40_R1_ROUTE = 0.
IF (((Q20_r1 > 0) AND (MISSING(Q40_r1))) OR ((NOT (Q20_r1 > 0)) AND (NOT MISSING(Q40_r1)))) V_Q40_R1_ROUTE = 1.




* Question Q40_r2.


* [ERROR] Only the five listed follow-up-frequency codes are valid when shown.
COMPUTE V_Q40_R2_CODES = 0.
IF ((NOT MISSING(Q40_r2) AND NOT ANY(Q40_r2, 1, 2, 3, 4, 5))) V_Q40_R2_CODES = 1.



* [ERROR] This row applies only when the 1-PE subgroup has patients.
COMPUTE V_Q40_R2_ROUTE = 0.
IF (((Q20_r2 > 0) AND (MISSING(Q40_r2))) OR ((NOT (Q20_r2 > 0)) AND (NOT MISSING(Q40_r2)))) V_Q40_R2_ROUTE = 1.




* Question Q40_r3.


* [ERROR] Only the five listed follow-up-frequency codes are valid when shown.
COMPUTE V_Q40_R3_CODES = 0.
IF ((NOT MISSING(Q40_r3) AND NOT ANY(Q40_r3, 1, 2, 3, 4, 5))) V_Q40_R3_CODES = 1.



* [ERROR] This row applies only when the 2-PE subgroup has patients.
COMPUTE V_Q40_R3_ROUTE = 0.
IF (((Q20_r3 > 0) AND (MISSING(Q40_r3))) OR ((NOT (Q20_r3 > 0)) AND (NOT MISSING(Q40_r3)))) V_Q40_R3_ROUTE = 1.




* Question Q40_r4.


* [ERROR] Only the five listed follow-up-frequency codes are valid when shown.
COMPUTE V_Q40_R4_CODES = 0.
IF ((NOT MISSING(Q40_r4) AND NOT ANY(Q40_r4, 1, 2, 3, 4, 5))) V_Q40_R4_CODES = 1.



* [ERROR] This row applies only when the 3-or-more-PE subgroup has patients.
COMPUTE V_Q40_R4_ROUTE = 0.
IF (((Q20_r4 > 0) AND (MISSING(Q40_r4))) OR ((NOT (Q20_r4 > 0)) AND (NOT MISSING(Q40_r4)))) V_Q40_R4_ROUTE = 1.




* Question Q40_r5.
* No validation generated: The question has response-code and routing evidence, but no target variable is supplied; validation cannot be expressed without inventing a variable.



* Question Q50.
* No validation generated: A numeric 0–100 bound is specified, but no target variable is supplied; validation cannot be expressed without inventing a variable.



* Question Q60.
* No validation generated: The question has defined response codes, but no target variable is supplied; validation cannot be expressed without inventing a variable.



* Question Q65.
* No validation generated: The question has defined response codes, but no target variable is supplied; validation cannot be expressed without inventing a variable.




*===============================================================================.
* SECTION Section B: Current Prescribing Behavior: Section B: Current Prescribing Behavior.
*===============================================================================.

* Question Q70_r1.
* No validation generated: A numeric 0–SQ30r1 bound is specified, but no target variable is supplied; validation cannot be expressed without inventing a variable.



* Question Q70_r2.
* No validation generated: A numeric 0–SQ30r1 bound is specified, but no target variable is supplied; validation cannot be expressed without inventing a variable.



* Question Q70_r3.
* No validation generated: A numeric 0–SQ30r1 bound is specified, but no target variable is supplied; validation cannot be expressed without inventing a variable.



* Question Q70_r4.
* No validation generated: A numeric 0–SQ30r1 bound is specified, but no target variable is supplied; validation cannot be expressed without inventing a variable.



* Question Q70_r5.
* No validation generated: A numeric 0–SQ30r1 bound is specified, but no target variable is supplied; validation cannot be expressed without inventing a variable.



* Question Q70_r6.
* No validation generated: A numeric 0–SQ30r1 bound is specified, but no target variable is supplied; validation cannot be expressed without inventing a variable.



* Question Q70_r7.
* No validation generated: A numeric 0–SQ30r1 bound is specified, but no target variable is supplied; validation cannot be expressed without inventing a variable.



* Question Q70_r8.
* No validation generated: A numeric 0–SQ30r1 bound is specified, but no target variable is supplied; validation cannot be expressed without inventing a variable.



* Question Q70_r9.
* No validation generated: A numeric 0–SQ30r1 bound is specified, but no target variable is supplied; validation cannot be expressed without inventing a variable.



* Question Q80_r1.
* No validation generated: A conditional numeric range and total constraint are specified, but no target variable is supplied; validation cannot be expressed without inventing a variable.



* Question Q80_r2.
* No validation generated: A conditional numeric range and total constraint are specified, but no target variable is supplied; validation cannot be expressed without inventing a variable.



* Question Q80_r3.
* No validation generated: A conditional numeric range and total constraint are specified, but no target variable is supplied; validation cannot be expressed without inventing a variable.



* Question Q80_r4.
* No validation generated: A conditional numeric range and total constraint are specified, but no target variable is supplied; validation cannot be expressed without inventing a variable.



* Question Q90_r1.
* No validation generated: A conditional numeric 0–SQ30r1 bound is specified, but no target variable is supplied; validation cannot be expressed without inventing a variable.



* Question Q90_r2.
* No validation generated: A conditional numeric 0–SQ30r1 bound is specified, but no target variable is supplied; validation cannot be expressed without inventing a variable.



* Question Q90_r3.
* No validation generated: A conditional numeric 0–SQ30r1 bound is specified, but no target variable is supplied; validation cannot be expressed without inventing a variable.



* Question Q90_r4.
* No validation generated: A conditional numeric bound and cross-question lower-bound check are specified, but no target variable is supplied; validation cannot be expressed without inventing a variable.



* Question Q90_r5.
* No validation generated: A conditional numeric 0–SQ30r1 bound is specified, but no target variable is supplied; validation cannot be expressed without inventing a variable.



* Question Q95.
* No validation generated: A conditional numeric range and total constraint are specified, but no target variable is supplied; validation cannot be expressed without inventing a variable.



* Question Q100.
* No validation generated: The question has defined multi-response codes and conditional routing, but no target variable is supplied; validation cannot be expressed without inventing a variable.



* Question Q110.
* No validation generated: A conditional numeric 0–Q90r5 bound is specified, but no target variable is supplied; validation cannot be expressed without inventing a variable.



* Question Q120.
* No validation generated: No canonical SPSS variable is supplied for this conditionally routed multi-response question, so a deterministic response, routing, or other-specify consistency check cannot be defined.



* Question Q130.
* No validation generated: No canonical SPSS variable is supplied for this conditionally routed single-response question, so a deterministic response or other-specify consistency check cannot be defined.



* Question Q140.
* No validation generated: No canonical SPSS variable is supplied for this conditionally routed single-response question, so a deterministic allowed-code check cannot be defined.



* Question Q150_r1.
* No validation generated: No canonical SPSS variable is supplied for this conditionally routed matrix multi-response row, so a deterministic response check cannot be defined.



* Question Q150_r2.
* No validation generated: No canonical SPSS variable is supplied for this conditionally routed matrix multi-response row, so a deterministic response check cannot be defined.



* Question Q150_r3.
* No validation generated: No canonical SPSS variable is supplied for this conditionally routed matrix multi-response row, so a deterministic response check cannot be defined.



* Question Q150_r4.
* No validation generated: No canonical SPSS variable is supplied for this conditionally routed matrix multi-response row, so a deterministic response check cannot be defined.



* Question Q150_r5.
* No validation generated: No canonical SPSS variable is supplied for this conditionally routed matrix multi-response row, so a deterministic response check cannot be defined.



* Question Q150_r6.
* No validation generated: No canonical SPSS variable is supplied for this conditionally routed matrix multi-response row, so a deterministic response check cannot be defined.



* Question Q150_r7.
* No validation generated: No canonical SPSS variable is supplied for this conditionally routed matrix multi-response row, so a deterministic response or other-specify consistency check cannot be defined.



* Question Q160.
* No validation generated: No canonical SPSS variable is supplied for this conditionally routed single-response question, so a deterministic allowed-code check cannot be defined.



* Question Q170_r1.
* No validation generated: No canonical SPSS variable is supplied for this numeric allocation row, so the stated 0-to-piped-count and sum-to-Q90r3 checks cannot be defined deterministically.



* Question Q170_r2.
* No validation generated: No canonical SPSS variable is supplied for this numeric allocation row, so the stated 0-to-piped-count and sum-to-Q90r3 checks cannot be defined deterministically.



* Question Q170_r3.
* No validation generated: No canonical SPSS variable is supplied for this numeric allocation row, so the stated 0-to-piped-count and sum-to-Q90r3 checks cannot be defined deterministically.



* Question Q170_r4.
* No validation generated: No canonical SPSS variable is supplied for this numeric allocation row, so the stated 0-to-piped-count and sum-to-Q90r3 checks cannot be defined deterministically.



* Question Q180.
* No validation generated: No canonical SPSS variable is supplied for this conditionally routed open-end question, so the documented minimum-five-character check cannot be defined.



* Question Q190.
* No validation generated: No canonical SPSS variable is supplied for this conditionally routed open-end question, so the documented minimum-five-character check cannot be defined.



* Question Q200.
* No validation generated: No canonical SPSS variable is supplied for this conditionally routed multi-response question, so the exclusive None option, allowed-code, and other-specify checks cannot be defined.



* Question Q210.
* No validation generated: No canonical SPSS variable is supplied for this conditionally routed multi-response question, so the exclusive non-initiation option, allowed-code, and other-specify checks cannot be defined.



* Question Q220.
* No validation generated: No canonical SPSS variable is supplied for this conditionally routed single-response question, so a deterministic allowed-code check cannot be defined.



* Question Q230.
* No validation generated: No canonical SPSS variable is supplied for this conditionally routed open-end question, so the documented minimum-ten-character check cannot be defined.



* Question Q240.
* No validation generated: No canonical SPSS variable is supplied for this single-response question, so a deterministic allowed-code check cannot be defined.



* Question Q250.
* No validation generated: No canonical SPSS variable is supplied for this conditionally routed single-response question, so a deterministic allowed-code check cannot be defined.




*===============================================================================.
* SECTION Section C: Future Prescribing Intent & Market Dynamics: Section C: Future Prescribing Intent & Market Dynamics.
*===============================================================================.

* Question Q260_r1.
* No validation generated: No canonical SPSS variable is supplied for this numeric cumulative-count row, so the stated 0-to-piped-count range check cannot be defined deterministically.



* Question Q260_r2.
* No validation generated: No canonical SPSS variable is supplied for this numeric cumulative-count row, so the stated 0-to-piped-count range check cannot be defined deterministically.



* Question Q260_r3.
* No validation generated: No SPSS variable name is supplied for this numeric matrix row, so the supported cumulative-count and routing checks cannot be represented safely.



* Question Q260_r4.
* No validation generated: No SPSS variable name is supplied for this numeric matrix row, so the supported cumulative-count and routing checks cannot be represented safely.



* Question Q260_r5.
* No validation generated: No SPSS variable name is supplied for this numeric matrix row, so the supported cumulative-count and routing checks cannot be represented safely.



* Question Q270_r1.
* No validation generated: No SPSS variable name is supplied for this numeric matrix row; additionally, the referenced Q20 row variables are not identified, so the routing, row maximum, and total-to-Q260r3 checks cannot be represented safely.



* Question Q270_r2.
* No validation generated: No SPSS variable name is supplied for this numeric matrix row; additionally, the referenced Q20 row variables are not identified, so the routing, row maximum, and total-to-Q260r3 checks cannot be represented safely.



* Question Q270_r3.
* No validation generated: No SPSS variable name is supplied for this numeric matrix row; additionally, the referenced Q20 row variables are not identified, so the routing, row maximum, and total-to-Q260r3 checks cannot be represented safely.



* Question Q270_r4.
* No validation generated: No SPSS variable name is supplied for this numeric matrix row; additionally, the referenced Q20 row variables are not identified, so the routing, row maximum, and total-to-Q260r3 checks cannot be represented safely.




*===============================================================================.
* FINAL VALIDATION SUMMARY.
*===============================================================================.
COMPUTE VALIDATION_OVERALL = MAX(V_C10_1_MISSING, V_C10_1_CODES, V_C10_1_SCREEN, V_C10_2_MISSING, V_C10_2_CODES, V_C10_2_SCREEN, V_C10_3_MISSING, V_C10_3_CODES, V_C10_3_SCREEN, V_C10_4_MISSING, V_C10_4_CODES, V_C10_4_SCREEN, V_C20_MISSING, V_C20_CODES, V_C20_SCREEN, V_SQ10_MISSING, V_SQ10_CODES, V_SQ10_SCREEN, V_SQ20_MISSING, V_SQ20_CODES, V_SQ30_R1_MISSING, V_SQ30_R1_RANGE, V_SQ30_R2_MISSING, V_SQ30_R2_RANGE, V_SQ30_R3_MISSING, V_SQ30_R3_RANGE, V_SQ30_R4_MISSING, V_SQ30_R4_RANGE, V_SQ40_MISSING, V_SQ40_CODES, V_SQ50_MISSING, V_SQ50_CODES, V_Q10_R1_MISSING, V_Q10_R1_RANGE, V_Q10_R2_MISSING, V_Q10_R2_RANGE, V_Q10_R3_MISSING, V_Q10_R3_RANGE, V_Q20_R1_MISSING, V_Q20_R1_RANGE, V_Q20_R2_MISSING, V_Q20_R2_RANGE, V_Q20_R3_MISSING, V_Q20_R3_RANGE, V_Q20_R4_MISSING, V_Q20_R4_RANGE, V_Q30_MISSING, V_Q30_CODES, V_Q40_R1_CODES, V_Q40_R1_ROUTE, V_Q40_R2_CODES, V_Q40_R2_ROUTE, V_Q40_R3_CODES, V_Q40_R3_ROUTE, V_Q40_R4_CODES, V_Q40_R4_ROUTE).
FREQUENCIES VARIABLES=V_C10_1_MISSING V_C10_1_CODES V_C10_1_SCREEN V_C10_2_MISSING V_C10_2_CODES V_C10_2_SCREEN V_C10_3_MISSING V_C10_3_CODES V_C10_3_SCREEN V_C10_4_MISSING V_C10_4_CODES V_C10_4_SCREEN V_C20_MISSING V_C20_CODES V_C20_SCREEN V_SQ10_MISSING V_SQ10_CODES V_SQ10_SCREEN V_SQ20_MISSING V_SQ20_CODES V_SQ30_R1_MISSING V_SQ30_R1_RANGE V_SQ30_R2_MISSING V_SQ30_R2_RANGE V_SQ30_R3_MISSING V_SQ30_R3_RANGE V_SQ30_R4_MISSING V_SQ30_R4_RANGE V_SQ40_MISSING V_SQ40_CODES V_SQ50_MISSING V_SQ50_CODES V_Q10_R1_MISSING V_Q10_R1_RANGE V_Q10_R2_MISSING V_Q10_R2_RANGE V_Q10_R3_MISSING V_Q10_R3_RANGE V_Q20_R1_MISSING V_Q20_R1_RANGE V_Q20_R2_MISSING V_Q20_R2_RANGE V_Q20_R3_MISSING V_Q20_R3_RANGE V_Q20_R4_MISSING V_Q20_R4_RANGE V_Q30_MISSING V_Q30_CODES V_Q40_R1_CODES V_Q40_R1_ROUTE V_Q40_R2_CODES V_Q40_R2_ROUTE V_Q40_R3_CODES V_Q40_R3_ROUTE V_Q40_R4_CODES V_Q40_R4_ROUTE VALIDATION_OVERALL.

* MODEL WARNINGS.
* The questionnaire provides no explicit SPSS variable names; canonical question IDs were used as validation targets.
* The Q10 and Q20 allocation instructions specify totals equal to SQ30_r1. Sum_to_var macro checks were included, but the schema's expected_total field cannot represent a variable-valued total.
* Omitted incomplete model rule: Rule Q10_SUM requires variables and expected_total.
* Omitted incomplete model rule: Rule Q20_SUM requires variables and expected_total.
* All 25 questions in this batch have variable set to null. Evidence-supported checks were omitted because emitting rules would require inventing target variables.
* All questions in this batch have a null canonical variable. Evidence-supported checks requiring target variables or structured routing predicates were therefore omitted.
* Referenced routing and piping variables such as SQ50, Q110, Q90r3, and SQ30r1 are not supplied as canonical variables in this batch.
* All questions in this batch have null variable names. The Q270 routing instructions also reference corresponding Q20 row variables that are not supplied in the batch.


EXECUTE.
