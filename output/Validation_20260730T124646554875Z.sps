* Encoding: UTF-8.
* Generated deterministically by Survey Programming AI.
* Source: (V9 R98676) CRA-Astellas_Dravet_Syndrome_HCP_Survey_v28May2026.docx.
TITLE 'Dravet Syndrome Forecast'.



*===============================================================================.
* SECTION MAIN: Questionnaire.
*===============================================================================.

* Question V2.
* No validation generated: This item is an informational date/label with no respondent response, options, or validation instruction.



* Question V3.
* No validation generated: This item is an informational date/label with no respondent response, options, or validation instruction.



* Question V4.
* No validation generated: This item is an informational date/label with no respondent response, options, or validation instruction.



* Question V5.
* No validation generated: This item is an informational date/label with no respondent response, options, or validation instruction.



* Question V6.
* No validation generated: This item is an informational date/label with no respondent response, options, or validation instruction.



* Question V7.
* No validation generated: This item is an informational date/label with no respondent response, options, or validation instruction.



* Question V8.
* No validation generated: This item is an informational date/label with no respondent response, options, or validation instruction.



* Question V9.


* [ERROR] A response is required for V9.
COMPUTE V_V9_R1 = 0.
IF (MISSING(V9)) V_V9_R1 = 1.




* Question PT10.


* [ERROR] Only Yes or No responses are valid for the single-select pre-test availability question.
COMPUTE V_PT10_R1 = 0.
IF ((NOT MISSING(PT10) AND NOT ANY(PT10, 'Yes', 'No'))) V_PT10_R1 = 1.



* [ERROR] No more than one response may be selected.
COMPUTE V_PT10_R2 = 0.
IF (SUM(PT10) > 1) V_PT10_R2 = 1.




* Question PT20.


* [ERROR] Only Yes or No responses are valid for the single-select pre-test contact question.
COMPUTE V_PT20_R1 = 0.
IF ((NOT MISSING(PT20) AND NOT ANY(PT20, 'Yes', 'No'))) V_PT20_R1 = 1.



* [ERROR] No more than one response may be selected for the pre-test contact question.
COMPUTE V_PT20_R2 = 0.
IF (SUM(PT20) > 1) V_PT20_R2 = 1.




* Question S85.


* [ERROR] A response is required for S85.
COMPUTE V_S85_R1 = 0.
IF (MISSING(S85)) V_S85_R1 = 1.



* [ERROR] The age-group percentage allocations must sum to 100%.
COMPUTE V_S85_R2 = 0.
IF (SUM(S85) <> 100.0) V_S85_R2 = 1.



* [ERROR] The product-prescribing portion permits multiple selections.
COMPUTE V_S85_R3 = 0.
IF ((NOT MISSING(S85) AND NOT ANY(S85, 0, 1))) V_S85_R3 = 1.



* [ERROR] The specified terminating product options must not be selected with other product responses.
COMPUTE V_S85_R4 = 0.
IF (SUM(S85_8, S85_9) > 0 AND SUM(S85) > 1) V_S85_R4 = 1.





*===============================================================================.
* FINAL VALIDATION SUMMARY.
*===============================================================================.
COMPUTE VALIDATION_OVERALL = MAX(V_V9_R1, V_PT10_R1, V_PT10_R2, V_PT20_R1, V_PT20_R2, V_S85_R1, V_S85_R2, V_S85_R3, V_S85_R4).
FREQUENCIES VARIABLES=V_V9_R1 V_PT10_R1 V_PT10_R2 V_PT20_R1 V_PT20_R2 V_S85_R1 V_S85_R2 V_S85_R3 V_S85_R4 VALIDATION_OVERALL.

* MODEL WARNINGS.
* V9 contains extensive concatenated survey documentation and embedded questions; only the explicit required flag was validated because no unambiguous numeric response range or response-code set belongs to V9 itself.
* S85 contains multiple concatenated question blocks and inconsistent embedded variable references; percentage-total, multi-response, and terminating-option checks are retained only at the supplied S85 base-variable level.


EXECUTE.
