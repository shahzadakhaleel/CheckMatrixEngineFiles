* Encoding: UTF-8.
* Generated deterministically by Survey Programming AI.
* Source: (V2_R99525) RINVOQ Derm ZIP_Vitiligo Phototherapy Use Survey_v5.0 (002).docx.
TITLE 'RINVOQ Derm ZIP – Vitiligo Phototherapy Usage'.
* Project: RINVOQ Derm ZIP Vitiligo Phototherapy Use Survey.


*===============================================================================.
* SECTION Disclosures & Permissions: Disclosures & Permissions.
*===============================================================================.

* Question D1.
* No validation generated: The questionnaire provides consent and response-code evidence, but no SPSS variable is supplied to bind a validation rule.



* Question D2.
* No validation generated: The questionnaire provides consent, response-code, and termination-routing evidence, but no SPSS variable is supplied to bind a validation rule.



* Question CON.0.
* No validation generated: The questionnaire provides consent, response-code, and termination-routing evidence, but no SPSS variable is supplied to bind a validation rule.




*===============================================================================.
* SECTION Screener: Screener.
*===============================================================================.

* Question Q1.
* No validation generated: The questionnaire provides required single-select, allowed-code, and termination-routing evidence, but no SPSS variable is supplied to bind a validation rule.



* Question Q2.
* No validation generated: The questionnaire provides required single-select, allowed-code, and termination-routing evidence, but no SPSS variable is supplied to bind a validation rule.



* Question Q3_1.
* No validation generated: The questionnaire provides required whole-number and 0–999 range evidence, but no SPSS variable is supplied to bind a validation rule.



* Question Q3_2.
* No validation generated: The questionnaire provides required whole-number and 0–999 range evidence, but no SPSS variable is supplied to bind a validation rule.



* Question Q3_3.
* No validation generated: The questionnaire provides required whole-number and 0–999 range evidence, but no SPSS variable is supplied to bind a validation rule.



* Question Q3_4.
* No validation generated: The questionnaire provides required whole-number and 0–999 range evidence, but no SPSS variable is supplied to bind a validation rule.



* Question Q3_5.
* No validation generated: The questionnaire provides required whole-number and 0–999 range evidence, but no SPSS variable is supplied to bind a validation rule.



* Question Q3_6.
* No validation generated: The questionnaire provides required whole-number, 0–999 range, and zero-response termination evidence, but no SPSS variable is supplied to bind a validation rule.



* Question Q3_98.
* No validation generated: The questionnaire provides required whole-number and 0–999 range evidence, plus an other-condition specification, but no SPSS variable is supplied to bind a validation rule.




*===============================================================================.
* SECTION Survey: Survey.
*===============================================================================.

* Question Q4_1.
* No validation generated: The questionnaire provides required whole-number percentage and 0–100 range evidence, but no SPSS variable is supplied to bind a validation rule.



* Question Q4_2.
* No validation generated: The questionnaire provides required whole-number percentage and 0–100 range evidence, but no SPSS variable is supplied to bind a validation rule.



* Question Q4_3.
* No validation generated: The questionnaire provides required whole-number percentage and 0–100 range evidence, but no SPSS variable is supplied to bind a validation rule.



* Question Q4_4.
* No validation generated: The questionnaire provides required whole-number percentage, 0–100 range, and conditional termination evidence, but no SPSS variable is supplied to bind a validation rule.



* Question Q4_5.
* No validation generated: The questionnaire provides required whole-number percentage and 0–100 range evidence, but no SPSS variable is supplied to bind a validation rule.



* Question Q4_6.
* No validation generated: The questionnaire provides required whole-number percentage and 0–100 range evidence, but no SPSS variable is supplied to bind a validation rule.



* Question Q4_7.
* No validation generated: The questionnaire provides required whole-number percentage and 0–100 range evidence, but no SPSS variable is supplied to bind a validation rule.



* Question Q4_8.
* No validation generated: The questionnaire provides required whole-number percentage and 0–100 range evidence, but no SPSS variable is supplied to bind a validation rule.



* Question Q4_98.
* No validation generated: The questionnaire provides required whole-number percentage and 0–100 range evidence, plus an other-treatment specification, but no SPSS variable is supplied to bind a validation rule.



* Question Q5.
* No validation generated: The questionnaire provides required multiple-response, allowed-code, and exclusive-option evidence, but no SPSS base variable is supplied to bind a validation rule.



* Question Q6_1.
* No validation generated: The questionnaire provides required whole-number percentage and 0–100 range evidence, but no SPSS variable is supplied to bind a validation rule.



* Question Q6_2.
* No validation generated: The questionnaire provides required whole-number percentage and 0–100 range evidence, but no SPSS variable is supplied to bind a validation rule.



* Question Q6_3.
* No validation generated: The questionnaire provides required whole-number percentage and 0–100 range evidence, but no SPSS variable is supplied to bind a validation rule.



* Question Q6_4.


* [ERROR] Response is required.
COMPUTE V_Q6_4_MISSING = 0.
IF (MISSING(Q6_4)) V_Q6_4_MISSING = 1.



* [ERROR] Percentage must be a whole number from 0 to 100.
COMPUTE V_Q6_4_RANGE = 0.
IF ((NOT MISSING(Q6_4) AND (Q6_4 < 0.0 OR Q6_4 > 100.0))) V_Q6_4_RANGE = 1.




* Question Q6_98.


* [ERROR] Response is required.
COMPUTE V_Q6_98_MISSING = 0.
IF (MISSING(Q6_98)) V_Q6_98_MISSING = 1.



* [ERROR] Percentage must be a whole number from 0 to 100.
COMPUTE V_Q6_98_RANGE = 0.
IF ((NOT MISSING(Q6_98) AND (Q6_98 < 0.0 OR Q6_98 > 100.0))) V_Q6_98_RANGE = 1.




* Question Q7.


* [ERROR] A single response is required.
COMPUTE V_Q7_MISSING = 0.
IF (MISSING(Q7)) V_Q7_MISSING = 1.



* [ERROR] Response must use one of the specified answer codes 1 through 4.
COMPUTE V_Q7_CODES = 0.
IF ((NOT MISSING(Q7) AND NOT ANY(Q7, 1, 2, 3, 4))) V_Q7_CODES = 1.




* Question Q8_1.


* [ERROR] Response is required.
COMPUTE V_Q8_1_MISSING = 0.
IF (MISSING(Q8_1)) V_Q8_1_MISSING = 1.



* [ERROR] Payment allocation percentages must be from 0 to 100.
COMPUTE V_Q8_1_RANGE = 0.
IF ((NOT MISSING(Q8_1) AND (Q8_1 < 0.0 OR Q8_1 > 100.0))) V_Q8_1_RANGE = 1.




* Question Q8_2.


* [ERROR] Response is required.
COMPUTE V_Q8_2_MISSING = 0.
IF (MISSING(Q8_2)) V_Q8_2_MISSING = 1.



* [ERROR] Payment allocation percentages must be from 0 to 100.
COMPUTE V_Q8_2_RANGE = 0.
IF ((NOT MISSING(Q8_2) AND (Q8_2 < 0.0 OR Q8_2 > 100.0))) V_Q8_2_RANGE = 1.




* Question Q8_3.


* [ERROR] Response is required.
COMPUTE V_Q8_3_MISSING = 0.
IF (MISSING(Q8_3)) V_Q8_3_MISSING = 1.



* [ERROR] Payment allocation percentages must be from 0 to 100.
COMPUTE V_Q8_3_RANGE = 0.
IF ((NOT MISSING(Q8_3) AND (Q8_3 < 0.0 OR Q8_3 > 100.0))) V_Q8_3_RANGE = 1.




* Question Q9_1.


* [ERROR] Response is required.
COMPUTE V_Q9_1_MISSING = 0.
IF (MISSING(Q9_1)) V_Q9_1_MISSING = 1.



* [ERROR] Sessions per week must be a whole number from 0 to 7.
COMPUTE V_Q9_1_RANGE = 0.
IF ((NOT MISSING(Q9_1) AND (Q9_1 < 0.0 OR Q9_1 > 7.0))) V_Q9_1_RANGE = 1.




* Question Q9_2.


* [ERROR] Response is required.
COMPUTE V_Q9_2_MISSING = 0.
IF (MISSING(Q9_2)) V_Q9_2_MISSING = 1.



* [ERROR] Duration must be a whole number from 0 to 999 weeks.
COMPUTE V_Q9_2_RANGE = 0.
IF ((NOT MISSING(Q9_2) AND (Q9_2 < 0.0 OR Q9_2 > 999.0))) V_Q9_2_RANGE = 1.




* Question Q10_1.


* [ERROR] Response is required.
COMPUTE V_Q10_1_MISSING = 0.
IF (MISSING(Q10_1)) V_Q10_1_MISSING = 1.



* [ERROR] Percentage must be from 0 to 100.
COMPUTE V_Q10_1_RANGE = 0.
IF ((NOT MISSING(Q10_1) AND (Q10_1 < 0.0 OR Q10_1 > 100.0))) V_Q10_1_RANGE = 1.




* Question Q10_2.


* [ERROR] Response is required.
COMPUTE V_Q10_2_MISSING = 0.
IF (MISSING(Q10_2)) V_Q10_2_MISSING = 1.



* [ERROR] Percentage must be from 0 to 100.
COMPUTE V_Q10_2_RANGE = 0.
IF ((NOT MISSING(Q10_2) AND (Q10_2 < 0.0 OR Q10_2 > 100.0))) V_Q10_2_RANGE = 1.




* Question Q10_3.


* [ERROR] Response is required.
COMPUTE V_Q10_3_MISSING = 0.
IF (MISSING(Q10_3)) V_Q10_3_MISSING = 1.



* [ERROR] Percentage must be from 0 to 100.
COMPUTE V_Q10_3_RANGE = 0.
IF ((NOT MISSING(Q10_3) AND (Q10_3 < 0.0 OR Q10_3 > 100.0))) V_Q10_3_RANGE = 1.




* Question Q10_4.


* [ERROR] Response is required.
COMPUTE V_Q10_4_MISSING = 0.
IF (MISSING(Q10_4)) V_Q10_4_MISSING = 1.



* [ERROR] Percentage must be from 0 to 100.
COMPUTE V_Q10_4_RANGE = 0.
IF ((NOT MISSING(Q10_4) AND (Q10_4 < 0.0 OR Q10_4 > 100.0))) V_Q10_4_RANGE = 1.




* Question Q10_5.


* [ERROR] Response is required.
COMPUTE V_Q10_5_MISSING = 0.
IF (MISSING(Q10_5)) V_Q10_5_MISSING = 1.



* [ERROR] Percentage must be from 0 to 100.
COMPUTE V_Q10_5_RANGE = 0.
IF ((NOT MISSING(Q10_5) AND (Q10_5 < 0.0 OR Q10_5 > 100.0))) V_Q10_5_RANGE = 1.




* Question Q11_1.


* [ERROR] Response is required.
COMPUTE V_Q11_1_MISSING = 0.
IF (MISSING(Q11_1)) V_Q11_1_MISSING = 1.



* [ERROR] Percentage must be from 0 to 100.
COMPUTE V_Q11_1_RANGE = 0.
IF ((NOT MISSING(Q11_1) AND (Q11_1 < 0.0 OR Q11_1 > 100.0))) V_Q11_1_RANGE = 1.




* Question Q11_2.


* [ERROR] Response is required.
COMPUTE V_Q11_2_MISSING = 0.
IF (MISSING(Q11_2)) V_Q11_2_MISSING = 1.



* [ERROR] Percentage must be from 0 to 100.
COMPUTE V_Q11_2_RANGE = 0.
IF ((NOT MISSING(Q11_2) AND (Q11_2 < 0.0 OR Q11_2 > 100.0))) V_Q11_2_RANGE = 1.




* Question Q11_3.


* [ERROR] Response is required.
COMPUTE V_Q11_3_MISSING = 0.
IF (MISSING(Q11_3)) V_Q11_3_MISSING = 1.



* [ERROR] Percentage must be from 0 to 100.
COMPUTE V_Q11_3_RANGE = 0.
IF ((NOT MISSING(Q11_3) AND (Q11_3 < 0.0 OR Q11_3 > 100.0))) V_Q11_3_RANGE = 1.




* Question Q11_4.


* [ERROR] Response is required.
COMPUTE V_Q11_4_MISSING = 0.
IF (MISSING(Q11_4)) V_Q11_4_MISSING = 1.



* [ERROR] Percentage must be from 0 to 100.
COMPUTE V_Q11_4_RANGE = 0.
IF ((NOT MISSING(Q11_4) AND (Q11_4 < 0.0 OR Q11_4 > 100.0))) V_Q11_4_RANGE = 1.




* Question Q11_5.


* [ERROR] Response is required.
COMPUTE V_Q11_5_MISSING = 0.
IF (MISSING(Q11_5)) V_Q11_5_MISSING = 1.



* [ERROR] Percentage must be from 0 to 100.
COMPUTE V_Q11_5_RANGE = 0.
IF ((NOT MISSING(Q11_5) AND (Q11_5 < 0.0 OR Q11_5 > 100.0))) V_Q11_5_RANGE = 1.




* Question Q12.


* [ERROR] A free-text response is required.
COMPUTE V_Q12_OPEN = 0.
IF (MISSING(Q12)) V_Q12_OPEN = 1.




* Question Q13_1.


* [ERROR] Satisfaction response must be coded from 1 to 5.
COMPUTE V_Q13_1_CODES = 0.
IF ((NOT MISSING(Q13_1) AND NOT ANY(Q13_1, 1, 2, 3, 4, 5))) V_Q13_1_CODES = 1.




* Question Q13_2.


* [ERROR] Satisfaction response must be coded from 1 to 5.
COMPUTE V_Q13_2_CODES = 0.
IF ((NOT MISSING(Q13_2) AND NOT ANY(Q13_2, 1, 2, 3, 4, 5))) V_Q13_2_CODES = 1.




* Question Q13_3.


* [ERROR] Satisfaction response must be coded from 1 to 5.
COMPUTE V_Q13_3_CODES = 0.
IF ((NOT MISSING(Q13_3) AND NOT ANY(Q13_3, 1, 2, 3, 4, 5))) V_Q13_3_CODES = 1.




* Question Q13_4.


* [ERROR] Validate that the row is applicable only when Q6_4 is greater than 0.
COMPUTE V_Q13_4_ROUTE = 0.
IF (((Q6_4 > 0) AND (MISSING(Q13_4))) OR ((NOT (Q6_4 > 0)) AND (NOT MISSING(Q13_4)))) V_Q13_4_ROUTE = 1.



* [ERROR] Satisfaction response must be coded from 1 to 5.
COMPUTE V_Q13_4_CODES = 0.
IF ((NOT MISSING(Q13_4) AND NOT ANY(Q13_4, 1, 2, 3, 4, 5))) V_Q13_4_CODES = 1.




* Question Q13_5.


* [ERROR] Response is required.
COMPUTE V_Q13_5_MISSING = 0.
IF (MISSING(Q13_5)) V_Q13_5_MISSING = 1.



* [ERROR] Agreement response must be coded from 1 to 5.
COMPUTE V_Q13_5_CODES = 0.
IF ((NOT MISSING(Q13_5) AND NOT ANY(Q13_5, 1, 2, 3, 4, 5))) V_Q13_5_CODES = 1.




* Question Q14.


* [ERROR] A free-text response is required for respondents routed to this question.
COMPUTE V_Q14_OPEN = 0.
IF (MISSING(Q14)) V_Q14_OPEN = 1.




* Question Q15.


* [ERROR] Validate the multi-response selection structure for barriers to phototherapy.
COMPUTE V_Q15_MULTI = 0.
IF ((NOT MISSING(Q15_1) AND NOT ANY(Q15_1, 0, 1)) OR (NOT MISSING(Q15_2) AND NOT ANY(Q15_2, 0, 1)) OR (NOT MISSING(Q15_3) AND NOT ANY(Q15_3, 0, 1)) OR (NOT MISSING(Q15_4) AND NOT ANY(Q15_4, 0, 1)) OR (NOT MISSING(Q15_5) AND NOT ANY(Q15_5, 0, 1)) OR (NOT MISSING(Q15_6) AND NOT ANY(Q15_6, 0, 1)) OR (NOT MISSING(Q15_7) AND NOT ANY(Q15_7, 0, 1)) OR (NOT MISSING(Q15_8) AND NOT ANY(Q15_8, 0, 1)) OR (NOT MISSING(Q15_9) AND NOT ANY(Q15_9, 0, 1)) OR (NOT MISSING(Q15_10) AND NOT ANY(Q15_10, 0, 1)) OR (NOT MISSING(Q15_11) AND NOT ANY(Q15_11, 0, 1)) OR (NOT MISSING(Q15_98) AND NOT ANY(Q15_98, 0, 1)) OR (NOT MISSING(Q15_99) AND NOT ANY(Q15_99, 0, 1))) V_Q15_MULTI = 1.



* [ERROR] Allow only the documented barrier response codes.
COMPUTE V_Q15_CODES = 0.
IF ((NOT MISSING(Q15) AND NOT ANY(Q15, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 98, 99))) V_Q15_CODES = 1.



* [ERROR] Require at least one barrier response because the question is required.
COMPUTE V_Q15_MIN = 0.
IF (SUM(Q15_1, Q15_2, Q15_3, Q15_4, Q15_5, Q15_6, Q15_7, Q15_8, Q15_9, Q15_10, Q15_11, Q15_98, Q15_99) < 1) V_Q15_MIN = 1.



* [ERROR] Ensure that No significant barriers is not selected with any other barrier.
COMPUTE V_Q15_EXCLUSIVE = 0.
IF (SUM(Q15_99) > 0 AND SUM(Q15_1, Q15_2, Q15_3, Q15_4, Q15_5, Q15_6, Q15_7, Q15_8, Q15_9, Q15_10, Q15_11, Q15_98, Q15_99) > 1) V_Q15_EXCLUSIVE = 1.





*===============================================================================.
* SECTION Opzelura and phototherapy: Opzelura and phototherapy.
*===============================================================================.

* Question Q16_1.
* No validation generated: The model proposed only rules with unknown variables; they were omitted during deterministic validation.



* Question Q16_2.
* No validation generated: The model proposed only rules with unknown variables; they were omitted during deterministic validation.



* Question Q16_3.
* No validation generated: The model proposed only rules with unknown variables; they were omitted during deterministic validation.



* Question Q16_4.
* No validation generated: The model proposed only rules with unknown variables; they were omitted during deterministic validation.



* Question Q17.
* No validation generated: The question contains two percentage fields, but no field-level variables are supplied to identify the two targets without inventing variable names.



* Question Q18_1.


* [ERROR] Allow only scale responses from 1 through 7.
COMPUTE V_Q18_1_CODES = 0.
IF ((NOT MISSING(Q18_1) AND NOT ANY(Q18_1, 1, 2, 3, 4, 5, 6, 7))) V_Q18_1_CODES = 1.



* [ERROR] Require a response to the narrow-band UVB change assessment.
COMPUTE V_Q18_1_MANDATORY = 0.
IF (MISSING(Q18_1)) V_Q18_1_MANDATORY = 1.



* [WARNING] Flag identical responses across the four-item expected-change rating battery.
COMPUTE V_Q18_GRID_STRAIGHTLINE = 0.
IF (NOT MISSING(Q18_1) AND Q18_1 = Q18_2 AND Q18_1 = Q18_3 AND Q18_1 = Q18_4) V_Q18_GRID_STRAIGHTLINE = 1.




* Question Q18_2.


* [ERROR] Allow only scale responses from 1 through 7.
COMPUTE V_Q18_2_CODES = 0.
IF ((NOT MISSING(Q18_2) AND NOT ANY(Q18_2, 1, 2, 3, 4, 5, 6, 7))) V_Q18_2_CODES = 1.



* [ERROR] Require a response to the excimer laser change assessment.
COMPUTE V_Q18_2_MANDATORY = 0.
IF (MISSING(Q18_2)) V_Q18_2_MANDATORY = 1.




* Question Q18_3.


* [ERROR] Allow only scale responses from 1 through 7.
COMPUTE V_Q18_3_CODES = 0.
IF ((NOT MISSING(Q18_3) AND NOT ANY(Q18_3, 1, 2, 3, 4, 5, 6, 7))) V_Q18_3_CODES = 1.



* [ERROR] Require a response to the prescription at-home device change assessment.
COMPUTE V_Q18_3_MANDATORY = 0.
IF (MISSING(Q18_3)) V_Q18_3_MANDATORY = 1.




* Question Q18_4.


* [ERROR] Allow only scale responses from 1 through 7.
COMPUTE V_Q18_4_CODES = 0.
IF ((NOT MISSING(Q18_4) AND NOT ANY(Q18_4, 1, 2, 3, 4, 5, 6, 7))) V_Q18_4_CODES = 1.



* [ERROR] Require a response to the at-home DTC device change assessment.
COMPUTE V_Q18_4_MANDATORY = 0.
IF (MISSING(Q18_4)) V_Q18_4_MANDATORY = 1.




* Question Q19.


* [ERROR] Allow only the documented sequencing response codes.
COMPUTE V_Q19_CODES = 0.
IF ((NOT MISSING(Q19) AND NOT ANY(Q19, 1, 2, 3, 4, 5, 6, 7, 88))) V_Q19_CODES = 1.



* [ERROR] Require exactly one sequencing response.
COMPUTE V_Q19_MANDATORY = 0.
IF (MISSING(Q19)) V_Q19_MANDATORY = 1.





*===============================================================================.
* FINAL VALIDATION SUMMARY.
*===============================================================================.
COMPUTE VALIDATION_OVERALL = MAX(V_Q6_4_MISSING, V_Q6_4_RANGE, V_Q6_98_MISSING, V_Q6_98_RANGE, V_Q7_MISSING, V_Q7_CODES, V_Q8_1_MISSING, V_Q8_1_RANGE, V_Q8_2_MISSING, V_Q8_2_RANGE, V_Q8_3_MISSING, V_Q8_3_RANGE, V_Q9_1_MISSING, V_Q9_1_RANGE, V_Q9_2_MISSING, V_Q9_2_RANGE, V_Q10_1_MISSING, V_Q10_1_RANGE, V_Q10_2_MISSING, V_Q10_2_RANGE, V_Q10_3_MISSING, V_Q10_3_RANGE, V_Q10_4_MISSING, V_Q10_4_RANGE, V_Q10_5_MISSING, V_Q10_5_RANGE, V_Q11_1_MISSING, V_Q11_1_RANGE, V_Q11_2_MISSING, V_Q11_2_RANGE, V_Q11_3_MISSING, V_Q11_3_RANGE, V_Q11_4_MISSING, V_Q11_4_RANGE, V_Q11_5_MISSING, V_Q11_5_RANGE, V_Q12_OPEN, V_Q13_1_CODES, V_Q13_2_CODES, V_Q13_3_CODES, V_Q13_4_ROUTE, V_Q13_4_CODES, V_Q13_5_MISSING, V_Q13_5_CODES, V_Q14_OPEN, V_Q15_MULTI, V_Q15_CODES, V_Q15_MIN, V_Q15_EXCLUSIVE, V_Q18_1_CODES, V_Q18_1_MANDATORY, V_Q18_GRID_STRAIGHTLINE, V_Q18_2_CODES, V_Q18_2_MANDATORY, V_Q18_3_CODES, V_Q18_3_MANDATORY, V_Q18_4_CODES, V_Q18_4_MANDATORY, V_Q19_CODES, V_Q19_MANDATORY).
FREQUENCIES VARIABLES=V_Q6_4_MISSING V_Q6_4_RANGE V_Q6_98_MISSING V_Q6_98_RANGE V_Q7_MISSING V_Q7_CODES V_Q8_1_MISSING V_Q8_1_RANGE V_Q8_2_MISSING V_Q8_2_RANGE V_Q8_3_MISSING V_Q8_3_RANGE V_Q9_1_MISSING V_Q9_1_RANGE V_Q9_2_MISSING V_Q9_2_RANGE V_Q10_1_MISSING V_Q10_1_RANGE V_Q10_2_MISSING V_Q10_2_RANGE V_Q10_3_MISSING V_Q10_3_RANGE V_Q10_4_MISSING V_Q10_4_RANGE V_Q10_5_MISSING V_Q10_5_RANGE V_Q11_1_MISSING V_Q11_1_RANGE V_Q11_2_MISSING V_Q11_2_RANGE V_Q11_3_MISSING V_Q11_3_RANGE V_Q11_4_MISSING V_Q11_4_RANGE V_Q11_5_MISSING V_Q11_5_RANGE V_Q12_OPEN V_Q13_1_CODES V_Q13_2_CODES V_Q13_3_CODES V_Q13_4_ROUTE V_Q13_4_CODES V_Q13_5_MISSING V_Q13_5_CODES V_Q14_OPEN V_Q15_MULTI V_Q15_CODES V_Q15_MIN V_Q15_EXCLUSIVE V_Q18_1_CODES V_Q18_1_MANDATORY V_Q18_GRID_STRAIGHTLINE V_Q18_2_CODES V_Q18_2_MANDATORY V_Q18_3_CODES V_Q18_3_MANDATORY V_Q18_4_CODES V_Q18_4_MANDATORY V_Q19_CODES V_Q19_MANDATORY VALIDATION_OVERALL.

* MODEL WARNINGS.
* Evidence-supported checks could not be emitted because every supplied question has a null variable and no valid SPSS variable names were provided.
* Percentage-total checks were not added because the canonical data does not identify the individual column variables needed to calculate each row or column total.
* Q9_1 and Q9_2 describe four numeric fields each, but the canonical data supplies no individual field variables; range checks therefore target only the supplied question identifiers.
* The Q14 routing instruction refers to respondents who terminate at Q4, but it does not provide a structured predicate value or an explicit termination variable, so no routing rule was added.
* Omitted unsafe model rule: Rule Q13_1_ROUTE references unknown variables: ['Q6_1'].
* Omitted unsafe model rule: Rule Q13_2_ROUTE references unknown variables: ['Q6_2'].
* Omitted unsafe model rule: Rule Q13_3_ROUTE references unknown variables: ['Q6_3'].
* Q17 specifies two percentage fields but does not supply separate field-level variables; its range and mandatory checks were omitted to avoid inventing variables.
* Q15 contains routing and termination instructions using an OR condition that cannot be represented deterministically with the supplied predicate structure; no routing or screen-out rule was emitted.
* Omitted unsafe model rule: Rule Q16_1_MANDATORY references unknown variables: ['Q6_1'].
* Omitted unsafe model rule: Rule Q16_1_RANGE references unknown variables: ['Q6_1'].
* Omitted unsafe model rule: Rule Q16_2_MANDATORY references unknown variables: ['Q6_2'].
* Omitted unsafe model rule: Rule Q16_2_RANGE references unknown variables: ['Q6_2'].
* Omitted unsafe model rule: Rule Q16_3_MANDATORY references unknown variables: ['Q6_3'].
* Omitted unsafe model rule: Rule Q16_3_RANGE references unknown variables: ['Q6_3'].
* Omitted unsafe model rule: Rule Q16_4_MANDATORY references unknown variables: ['Q6_4'].
* Omitted unsafe model rule: Rule Q16_4_RANGE references unknown variables: ['Q6_4'].


EXECUTE.
