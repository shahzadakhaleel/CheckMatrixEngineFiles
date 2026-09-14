* Encoding: UTF-8.
* Generated deterministically by Survey Programming AI.
* Source: (V2_R99525) RINVOQ Derm ZIP_Vitiligo Phototherapy Use Survey_v5.0 (002).docx.
TITLE 'RINVOQ Derm ZIP – Vitiligo Phototherapy Usage'.
* Project: RINVOQ Derm ZIP Vitiligo Phototherapy Use Survey.


*===============================================================================.
* SECTION Disclosures & Permissions: Disclosures & Permissions.
*===============================================================================.

* Question D1.


* [ERROR] Consent response is required.
COMPUTE V_D1_MISSING = 0.
IF (MISSING(D1)) V_D1_MISSING = 1.



* [ERROR] Response must be Yes or No.
COMPUTE V_D1_CODES = 0.
IF ((NOT MISSING(D1) AND NOT ANY(D1, 1, 2))) V_D1_CODES = 1.




* Question D2.


* [ERROR] Proceeding response is required.
COMPUTE V_D2_MISSING = 0.
IF (MISSING(D2)) V_D2_MISSING = 1.



* [ERROR] Response must use one of the defined proceeding options.
COMPUTE V_D2_CODES = 0.
IF ((NOT MISSING(D2) AND NOT ANY(D2, 1, 2, 3))) V_D2_CODES = 1.



* [ERROR] Terminate immediately when the respondent is not willing to proceed.
COMPUTE V_D2_SCREENOUT = 0.
IF (D2 = 3) V_D2_SCREENOUT = 1.




* Question CON.0.


* [ERROR] Consent response is required.
COMPUTE V_CON0_MISSING = 0.
IF (MISSING(CON.0)) V_CON0_MISSING = 1.



* [ERROR] Response must be consent or do not consent.
COMPUTE V_CON0_CODES = 0.
IF ((NOT MISSING(CON.0) AND NOT ANY(CON.0, 1, 2))) V_CON0_CODES = 1.



* [ERROR] Terminate immediately when consent is not provided.
COMPUTE V_CON0_SCREENOUT = 0.
IF (CON.0 = 2) V_CON0_SCREENOUT = 1.





*===============================================================================.
* SECTION Screener: Screener.
*===============================================================================.

* Question Q1.


* [ERROR] Primary role response is required.
COMPUTE V_Q1_MISSING = 0.
IF (MISSING(Q1)) V_Q1_MISSING = 1.



* [ERROR] Primary role must use a defined response code.
COMPUTE V_Q1_CODES = 0.
IF ((NOT MISSING(Q1) AND NOT ANY(Q1, 1, 2, 3, 4, 7, 8, 9, 99))) V_Q1_CODES = 1.



* [ERROR] Terminate immediately for roles outside the eligible specialty group.
COMPUTE V_Q1_SCREENOUT = 0.
IF (ANY(Q1, 1, 3, 7, 99)) V_Q1_SCREENOUT = 1.




* Question Q2.


* [ERROR] Primary setting response is required.
COMPUTE V_Q2_MISSING = 0.
IF (MISSING(Q2)) V_Q2_MISSING = 1.



* [ERROR] Primary setting must use a defined response code.
COMPUTE V_Q2_CODES = 0.
IF ((NOT MISSING(Q2) AND NOT ANY(Q2, 1, 2, 3, 4, 5, 6, 7, 8, 98))) V_Q2_CODES = 1.



* [ERROR] Terminate immediately for ineligible primary settings.
COMPUTE V_Q2_SCREENOUT = 0.
IF (ANY(Q2, 8, 98)) V_Q2_SCREENOUT = 1.




* Question Q3.


* [ERROR] Monthly patient volume response is required.
COMPUTE V_Q3_MISSING = 0.
IF (MISSING(Q3)) V_Q3_MISSING = 1.



* [ERROR] Monthly patient volume must be a whole number from 0 to 999.
COMPUTE V_Q3_RANGE = 0.
IF ((NOT MISSING(Q3) AND (Q3 < 0.0 OR Q3 > 999.0))) V_Q3_RANGE = 1.




* Question Q3_2.


* [ERROR] Monthly patient volume response is required.
COMPUTE V_Q32_MISSING = 0.
IF (MISSING(Q3_2)) V_Q32_MISSING = 1.



* [ERROR] Monthly patient volume must be a whole number from 0 to 999.
COMPUTE V_Q32_RANGE = 0.
IF ((NOT MISSING(Q3_2) AND (Q3_2 < 0.0 OR Q3_2 > 999.0))) V_Q32_RANGE = 1.




* Question Q3_3.


* [ERROR] Monthly patient volume response is required.
COMPUTE V_Q33_MISSING = 0.
IF (MISSING(Q3_3)) V_Q33_MISSING = 1.



* [ERROR] Monthly patient volume must be a whole number from 0 to 999.
COMPUTE V_Q33_RANGE = 0.
IF ((NOT MISSING(Q3_3) AND (Q3_3 < 0.0 OR Q3_3 > 999.0))) V_Q33_RANGE = 1.




* Question Q3_4.


* [ERROR] Monthly patient volume response is required.
COMPUTE V_Q34_MISSING = 0.
IF (MISSING(Q3_4)) V_Q34_MISSING = 1.



* [ERROR] Monthly patient volume must be a whole number from 0 to 999.
COMPUTE V_Q34_RANGE = 0.
IF ((NOT MISSING(Q3_4) AND (Q3_4 < 0.0 OR Q3_4 > 999.0))) V_Q34_RANGE = 1.




* Question Q3_5.


* [ERROR] Monthly patient volume response is required.
COMPUTE V_Q35_MISSING = 0.
IF (MISSING(Q3_5)) V_Q35_MISSING = 1.



* [ERROR] Monthly patient volume must be a whole number from 0 to 999.
COMPUTE V_Q35_RANGE = 0.
IF ((NOT MISSING(Q3_5) AND (Q3_5 < 0.0 OR Q3_5 > 999.0))) V_Q35_RANGE = 1.




* Question Q3_6.


* [ERROR] Monthly non-segmental vitiligo patient volume is required.
COMPUTE V_Q36_MISSING = 0.
IF (MISSING(Q3_6)) V_Q36_MISSING = 1.



* [ERROR] Monthly patient volume must be a whole number from 0 to 999.
COMPUTE V_Q36_RANGE = 0.
IF ((NOT MISSING(Q3_6) AND (Q3_6 < 0.0 OR Q3_6 > 999.0))) V_Q36_RANGE = 1.



* [ERROR] Terminate immediately when monthly non-segmental vitiligo patient volume is zero.
COMPUTE V_Q36_SCREENOUT = 0.
IF (Q3_6 = 0) V_Q36_SCREENOUT = 1.




* Question Q3_98.


* [ERROR] Monthly patient volume response is required.
COMPUTE V_Q398_MISSING = 0.
IF (MISSING(Q3_98)) V_Q398_MISSING = 1.



* [ERROR] Monthly patient volume must be a whole number from 0 to 999.
COMPUTE V_Q398_RANGE = 0.
IF ((NOT MISSING(Q3_98) AND (Q3_98 < 0.0 OR Q3_98 > 999.0))) V_Q398_RANGE = 1.




* Question Q4.


* [ERROR] Treatment-use percentage response is required.
COMPUTE V_Q4_MISSING = 0.
IF (MISSING(Q4)) V_Q4_MISSING = 1.



* [ERROR] Treatment-use percentage must be a whole number from 0 to 100.
COMPUTE V_Q4_RANGE = 0.
IF ((NOT MISSING(Q4) AND (Q4 < 0.0 OR Q4 > 100.0))) V_Q4_RANGE = 1.




* Question Q4_2.


* [ERROR] Treatment-use percentage response is required.
COMPUTE V_Q42_MISSING = 0.
IF (MISSING(Q4_2)) V_Q42_MISSING = 1.



* [ERROR] Treatment-use percentage must be a whole number from 0 to 100.
COMPUTE V_Q42_RANGE = 0.
IF ((NOT MISSING(Q4_2) AND (Q4_2 < 0.0 OR Q4_2 > 100.0))) V_Q42_RANGE = 1.




* Question Q4_3.


* [ERROR] Treatment-use percentage response is required.
COMPUTE V_Q43_MISSING = 0.
IF (MISSING(Q4_3)) V_Q43_MISSING = 1.



* [ERROR] Treatment-use percentage must be a whole number from 0 to 100.
COMPUTE V_Q43_RANGE = 0.
IF ((NOT MISSING(Q4_3) AND (Q4_3 < 0.0 OR Q4_3 > 100.0))) V_Q43_RANGE = 1.




* Question Q4_4.


* [ERROR] Phototherapy-use percentage response is required.
COMPUTE V_Q44_MISSING = 0.
IF (MISSING(Q4_4)) V_Q44_MISSING = 1.



* [ERROR] Phototherapy-use percentage must be a whole number from 0 to 100.
COMPUTE V_Q44_RANGE = 0.
IF ((NOT MISSING(Q4_4) AND (Q4_4 < 0.0 OR Q4_4 > 100.0))) V_Q44_RANGE = 1.



* [ERROR] Terminate immediately when phototherapy use is zero percent.
COMPUTE V_Q44_SCREENOUT = 0.
IF (Q4_4 = 0) V_Q44_SCREENOUT = 1.




* Question Q4_5.


* [ERROR] Treatment-use percentage response is required.
COMPUTE V_Q45_MISSING = 0.
IF (MISSING(Q4_5)) V_Q45_MISSING = 1.



* [ERROR] Treatment-use percentage must be a whole number from 0 to 100.
COMPUTE V_Q45_RANGE = 0.
IF ((NOT MISSING(Q4_5) AND (Q4_5 < 0.0 OR Q4_5 > 100.0))) V_Q45_RANGE = 1.




* Question Q4_6.


* [ERROR] Treatment-use percentage response is required.
COMPUTE V_Q46_MISSING = 0.
IF (MISSING(Q4_6)) V_Q46_MISSING = 1.



* [ERROR] Treatment-use percentage must be a whole number from 0 to 100.
COMPUTE V_Q46_RANGE = 0.
IF ((NOT MISSING(Q4_6) AND (Q4_6 < 0.0 OR Q4_6 > 100.0))) V_Q46_RANGE = 1.




* Question Q4_7.


* [ERROR] Treatment-use percentage response is required.
COMPUTE V_Q47_MISSING = 0.
IF (MISSING(Q4_7)) V_Q47_MISSING = 1.



* [ERROR] Treatment-use percentage must be a whole number from 0 to 100.
COMPUTE V_Q47_RANGE = 0.
IF ((NOT MISSING(Q4_7) AND (Q4_7 < 0.0 OR Q4_7 > 100.0))) V_Q47_RANGE = 1.




* Question Q4_8.


* [ERROR] Treatment-use percentage response is required.
COMPUTE V_Q48_MISSING = 0.
IF (MISSING(Q4_8)) V_Q48_MISSING = 1.



* [ERROR] Treatment-use percentage must be a whole number from 0 to 100.
COMPUTE V_Q48_RANGE = 0.
IF ((NOT MISSING(Q4_8) AND (Q4_8 < 0.0 OR Q4_8 > 100.0))) V_Q48_RANGE = 1.




* Question Q4_98.


* [ERROR] Treatment-use percentage response is required.
COMPUTE V_Q498_MISSING = 0.
IF (MISSING(Q4_98)) V_Q498_MISSING = 1.



* [ERROR] Treatment-use percentage must be a whole number from 0 to 100.
COMPUTE V_Q498_RANGE = 0.
IF ((NOT MISSING(Q4_98) AND (Q4_98 < 0.0 OR Q4_98 > 100.0))) V_Q498_RANGE = 1.




* Question Q5.


* [ERROR] At least one phototherapy offering response is required.
COMPUTE V_Q5_MISSING = 0.
IF (MISSING(Q5)) V_Q5_MISSING = 1.



* [ERROR] Phototherapy offerings must be captured as a multiple-response selection.
!MULTI_B svar=Q5.
COMPUTE V_Q5_MULTI = 0.
IF ((NOT MISSING(Q5_1) AND NOT ANY(Q5_1, 0, 1)) OR (NOT MISSING(Q5_2) AND NOT ANY(Q5_2, 0, 1)) OR (NOT MISSING(Q5_3) AND NOT ANY(Q5_3, 0, 1)) OR (NOT MISSING(Q5_4) AND NOT ANY(Q5_4, 0, 1))) V_Q5_MULTI = 1.



* [ERROR] Phototherapy offering selections must use defined response codes.
COMPUTE V_Q5_CODES = 0.
IF ((NOT MISSING(Q5) AND NOT ANY(Q5, 1, 2, 3, 4))) V_Q5_CODES = 1.



* [ERROR] The no-phototherapy option cannot be selected with another offering.
COMPUTE V_Q5_EXCLUSIVE = 0.
IF (SUM(Q5_4) > 0 AND SUM(Q5_1, Q5_2, Q5_3, Q5_4) > 1) V_Q5_EXCLUSIVE = 1.




* Question Q6.


* [ERROR] Phototherapy treatment percentage responses are required.
COMPUTE V_Q6_MISSING = 0.
IF (MISSING(Q6)) V_Q6_MISSING = 1.



* [ERROR] Each phototherapy treatment percentage must be from 0 to 100.
COMPUTE V_Q6_RANGE = 0.
IF ((NOT MISSING(Q6) AND (Q6 < 0.0 OR Q6 > 100.0))) V_Q6_RANGE = 1.





*===============================================================================.
* SECTION Survey: Survey.
*===============================================================================.

* Question Q7.


* [ERROR] Referral and at-home recommendation response is required.
COMPUTE V_Q7_MISSING = 0.
IF (MISSING(Q7)) V_Q7_MISSING = 1.



* [ERROR] Response must use one of the defined referral and recommendation codes.
COMPUTE V_Q7_CODES = 0.
IF ((NOT MISSING(Q7) AND NOT ANY(Q7, 1, 2, 3, 4))) V_Q7_CODES = 1.




* Question Q8.


* [ERROR] Payment distribution responses are required for each shown column.
COMPUTE V_Q8_MISSING = 0.
IF (MISSING(Q8)) V_Q8_MISSING = 1.



* [ERROR] Each payment percentage must be from 0 to 100.
COMPUTE V_Q8_RANGE = 0.
IF ((NOT MISSING(Q8) AND (Q8 < 0.0 OR Q8 > 100.0))) V_Q8_RANGE = 1.



* [ERROR] Payment distributions must sum to 100 percent within each shown column.
!Sum_to_var svar=Q8.
COMPUTE V_Q8_TOTAL = 0.
IF (SUM(Q8_1, Q8_2, Q8_3) <> 100.0) V_Q8_TOTAL = 1.




* Question Q9_1.
* No validation generated: Numeric range, mandatory, and routing evidence is present, but no canonical response variable is supplied.



* Question Q9_2.
* No validation generated: Numeric range, mandatory, and routing evidence is present, but no canonical response variable is supplied.



* Question Q9_3.
* No validation generated: Numeric range, mandatory, and routing evidence is present, but no canonical response variable is supplied.



* Question Q9_4.
* No validation generated: Numeric range, mandatory, and routing evidence is present, but no canonical response variable is supplied.



* Question Q9_5.
* No validation generated: Numeric range, mandatory, and routing evidence is present, but no canonical response variable is supplied.



* Question Q9_6.
* No validation generated: Numeric range, mandatory, and routing evidence is present, but no canonical response variable is supplied.



* Question Q9_7.
* No validation generated: Numeric range, mandatory, and routing evidence is present, but no canonical response variable is supplied.



* Question Q9_8.
* No validation generated: Numeric range, mandatory, and routing evidence is present, but no canonical response variable is supplied.



* Question Q10_1.
* No validation generated: Mandatory and percentage-response evidence is present, but no canonical response variable or explicit percentage bounds are supplied.



* Question Q10_2.
* No validation generated: Mandatory, percentage-response, and conditional-routing evidence is present, but no canonical response variable or explicit percentage bounds are supplied.



* Question Q10_3.
* No validation generated: Mandatory and percentage-response evidence is present, but no canonical response variable or explicit percentage bounds are supplied.



* Question Q10_4.
* No validation generated: Mandatory and percentage-response evidence is present, but no canonical response variable or explicit percentage bounds are supplied.



* Question Q10_5.
* No validation generated: Mandatory and percentage-response evidence is present, but no canonical response variable or explicit percentage bounds are supplied.



* Question Q11_1.
* No validation generated: Mandatory, percentage-response, and conditional-routing evidence is present, but no canonical response variable or explicit percentage bounds are supplied.



* Question Q11_2.
* No validation generated: Mandatory, percentage-response, and conditional-routing evidence is present, but no canonical response variable or explicit percentage bounds are supplied.



* Question Q11_3.
* No validation generated: Mandatory, percentage-response, and conditional-routing evidence is present, but no canonical response variable or explicit percentage bounds are supplied.



* Question Q11_4.
* No validation generated: Mandatory, percentage-response, and conditional-routing evidence is present, but no canonical response variable or explicit percentage bounds are supplied.



* Question Q11_5.
* No validation generated: Mandatory, percentage-response, and conditional-routing evidence is present, but no canonical response variable or explicit percentage bounds are supplied.



* Question Q12.
* No validation generated: This is a required open-ended response, but no canonical response variable is supplied.



* Question Q13_1.
* No validation generated: Allowed response codes 1–5, mandatory status, and conditional routing are evidenced, but no canonical response variable is supplied.



* Question Q13_2.
* No validation generated: Allowed response codes 1–5, mandatory status, and conditional routing are evidenced, but no canonical response variable is supplied.



* Question Q13_3.
* No validation generated: Allowed response codes 1–5, mandatory status, and conditional routing are evidenced, but no canonical response variable is supplied.



* Question Q13_4.
* No validation generated: Allowed response codes 1–5, mandatory status, and conditional routing are evidenced, but no canonical response variable is supplied.



* Question Q13_5.
* No validation generated: Allowed response codes 1–5 and mandatory status are evidenced, but no canonical response variable is supplied.



* Question Q14.
* No validation generated: This is a required open-ended response with routing evidence, but no canonical response variable is supplied.



* Question Q15.
* No validation generated: The questionnaire supplies selection, required, and exclusivity evidence, but no target SPSS variable is supplied; a deterministic validation rule cannot be emitted without inventing a variable.




*===============================================================================.
* SECTION Opzelura and phototherapy: Opzelura and phototherapy.
*===============================================================================.

* Question Q16.
* No validation generated: The questionnaire specifies required whole-number percentage responses from 0–100, but no target SPSS variable or row-variable range is supplied; a deterministic validation rule cannot be emitted without inventing variables.



* Question Q17.
* No validation generated: The questionnaire specifies two required percentage responses with a 0–100 range, but no target SPSS variables are supplied; a deterministic validation rule cannot be emitted without inventing variables.



* Question Q18_1.
* No validation generated: The questionnaire specifies a required 1–7 response, but no target SPSS variable is supplied; a deterministic validation rule cannot be emitted without inventing a variable.



* Question Q18_2.
* No validation generated: The questionnaire specifies a required 1–7 response, but no target SPSS variable is supplied; a deterministic validation rule cannot be emitted without inventing a variable.



* Question Q18_3.
* No validation generated: The questionnaire specifies a required 1–7 response, but no target SPSS variable is supplied; a deterministic validation rule cannot be emitted without inventing a variable.



* Question Q18_4.
* No validation generated: The questionnaire specifies a required 1–7 response, but no target SPSS variable is supplied; a deterministic validation rule cannot be emitted without inventing a variable.



* Question Q19.
* No validation generated: The questionnaire specifies a required single response with allowed codes 1–7 and 88, but no target SPSS variable is supplied; a deterministic validation rule cannot be emitted without inventing a variable.




*===============================================================================.
* FINAL VALIDATION SUMMARY.
*===============================================================================.
COMPUTE VALIDATION_OVERALL = MAX(V_D1_MISSING, V_D1_CODES, V_D2_MISSING, V_D2_CODES, V_D2_SCREENOUT, V_CON0_MISSING, V_CON0_CODES, V_CON0_SCREENOUT, V_Q1_MISSING, V_Q1_CODES, V_Q1_SCREENOUT, V_Q2_MISSING, V_Q2_CODES, V_Q2_SCREENOUT, V_Q3_MISSING, V_Q3_RANGE, V_Q32_MISSING, V_Q32_RANGE, V_Q33_MISSING, V_Q33_RANGE, V_Q34_MISSING, V_Q34_RANGE, V_Q35_MISSING, V_Q35_RANGE, V_Q36_MISSING, V_Q36_RANGE, V_Q36_SCREENOUT, V_Q398_MISSING, V_Q398_RANGE, V_Q4_MISSING, V_Q4_RANGE, V_Q42_MISSING, V_Q42_RANGE, V_Q43_MISSING, V_Q43_RANGE, V_Q44_MISSING, V_Q44_RANGE, V_Q44_SCREENOUT, V_Q45_MISSING, V_Q45_RANGE, V_Q46_MISSING, V_Q46_RANGE, V_Q47_MISSING, V_Q47_RANGE, V_Q48_MISSING, V_Q48_RANGE, V_Q498_MISSING, V_Q498_RANGE, V_Q5_MISSING, V_Q5_MULTI, V_Q5_CODES, V_Q5_EXCLUSIVE, V_Q6_MISSING, V_Q6_RANGE, V_Q7_MISSING, V_Q7_CODES, V_Q8_MISSING, V_Q8_RANGE, V_Q8_TOTAL).
FREQUENCIES VARIABLES=V_D1_MISSING V_D1_CODES V_D2_MISSING V_D2_CODES V_D2_SCREENOUT V_CON0_MISSING V_CON0_CODES V_CON0_SCREENOUT V_Q1_MISSING V_Q1_CODES V_Q1_SCREENOUT V_Q2_MISSING V_Q2_CODES V_Q2_SCREENOUT V_Q3_MISSING V_Q3_RANGE V_Q32_MISSING V_Q32_RANGE V_Q33_MISSING V_Q33_RANGE V_Q34_MISSING V_Q34_RANGE V_Q35_MISSING V_Q35_RANGE V_Q36_MISSING V_Q36_RANGE V_Q36_SCREENOUT V_Q398_MISSING V_Q398_RANGE V_Q4_MISSING V_Q4_RANGE V_Q42_MISSING V_Q42_RANGE V_Q43_MISSING V_Q43_RANGE V_Q44_MISSING V_Q44_RANGE V_Q44_SCREENOUT V_Q45_MISSING V_Q45_RANGE V_Q46_MISSING V_Q46_RANGE V_Q47_MISSING V_Q47_RANGE V_Q48_MISSING V_Q48_RANGE V_Q498_MISSING V_Q498_RANGE V_Q5_MISSING V_Q5_MULTI V_Q5_CODES V_Q5_EXCLUSIVE V_Q6_MISSING V_Q6_RANGE V_Q7_MISSING V_Q7_CODES V_Q8_MISSING V_Q8_RANGE V_Q8_TOTAL VALIDATION_OVERALL.

* MODEL WARNINGS.
* Q6 routing references Q6_1, Q6_2, and Q6_3, but those subvariables are not supplied as canonical variables; no routing rule was emitted.
* Q8 display routing references Q6_3 and payment-method columns without supplied canonical variables; no routing rule was emitted.
* All questions in this batch have variable set to null. Evidence-supported checks were not emitted because required rule targets cannot be identified without inventing variables.
* No SPSS variables are supplied for any question in batch 3; evidence-supported checks were omitted because required rule parameters cannot safely identify their targets.


EXECUTE.
