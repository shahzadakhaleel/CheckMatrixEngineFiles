* Encoding: UTF-8.
* Generated deterministically by Survey Programming AI.
* Source: (V5 R94036) Bob Response PC_Final_WAQ (2).docx.
TITLE 'Final Primary Care Landscape (6/16/26)'.



*===============================================================================.
* SECTION MAIN: Questionnaire.
*===============================================================================.

* Question V2.
* No validation generated: Date and client-identification text only; no respondent-entered value or validation evidence.



* Question V3.
* No validation generated: Date and client-identification text only; no respondent-entered value or validation evidence.



* Question V4.
* No validation generated: Date and client-identification text only; no respondent-entered value or validation evidence.



* Question V5.
* No validation generated: Introduction and study-information text only; no respondent-entered value or validation evidence.



* Question S1.


* [ERROR] Require a response to the employment screening question.
COMPUTE V_S1_MANDATORY = 0.
IF (MISSING(S1)) V_S1_MANDATORY = 1.



* [ERROR] Allow only Yes or No responses.
COMPUTE V_S1_INVALID_CODES = 0.
IF ((NOT MISSING(S1) AND NOT ANY(S1, 'Yes', 'No'))) V_S1_INVALID_CODES = 1.



* [ERROR] Terminate respondents answering Yes to the exclusion question.
COMPUTE V_S1_SCREENOUT_YES = 0.
IF (S1 = 'Yes') V_S1_SCREENOUT_YES = 1.




* Question S2.


* [ERROR] Require a primary-care certification or practice-type response.
COMPUTE V_S2_MANDATORY = 0.
IF (MISSING(S2)) V_S2_MANDATORY = 1.



* [ERROR] Allow only the listed certification or practice-type responses.
COMPUTE V_S2_INVALID_CODES = 0.
IF ((NOT MISSING(S2) AND NOT ANY(S2, 'General Practice (GP)', 'Family Practice (FP)', 'Internal Medicine (IM)', 'Nurse Practitioner (NP)', 'Physician Assistant (PA)', 'Other certification or practice type'))) V_S2_INVALID_CODES = 1.



* [ERROR] Terminate respondents selecting Other certification or practice type.
COMPUTE V_S2_SCREENOUT_OTHER = 0.
IF (S2 = 'Other certification or practice type') V_S2_SCREENOUT_OTHER = 1.




* Question S3.


* [ERROR] Require a practice affiliation and ownership response.
COMPUTE V_S3_MANDATORY = 0.
IF (MISSING(S3)) V_S3_MANDATORY = 1.



* [ERROR] Allow only the listed practice affiliation and ownership responses.
COMPUTE V_S3_INVALID_CODES = 0.
IF ((NOT MISSING(S3) AND NOT ANY(S3, 'Academic or Teaching Hospital-Owned Health System 2+ affiliated hospitals (AHS)', 'Community Hospital-Owned Health System, 2+ affiliated hospitals (CHS)', 'Physician-Owned Group Practice/Network of Practices, 30 or more MD/DOs (POG30+)', 'Physician-Owned Group/Network of Practices, 5 to 29 MD/DOs (POG5-29)', 'Physician-Owned Group/Solo Practice, 1 to 4 MD/DOs (POG1-4)', 'Other'))) V_S3_INVALID_CODES = 1.



* [ERROR] Terminate respondents selecting Other practice affiliation or ownership.
COMPUTE V_S3_SCREENOUT_OTHER = 0.
IF (S3 = 'Other') V_S3_SCREENOUT_OTHER = 1.




* Question S4.


* [ERROR] Require years in practice.
COMPUTE V_S4_MANDATORY = 0.
IF (MISSING(S4)) V_S4_MANDATORY = 1.



* [ERROR] Accept years in practice from 1 through 40.
COMPUTE V_S4_RANGE = 0.
IF ((NOT MISSING(S4) AND NOT ANY(S4, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40))) V_S4_RANGE = 1.



* [ERROR] Terminate respondents with fewer than 2 years in practice.
COMPUTE V_S4_SCREENOUT_LT2 = 0.
IF (S4 < 2) V_S4_SCREENOUT_LT2 = 1.



* [ERROR] Terminate respondents with more than 29 years in practice.
COMPUTE V_S4_SCREENOUT_GT29 = 0.
IF (S4 > 29) V_S4_SCREENOUT_GT29 = 1.




* Question S5.


* [ERROR] Require a response about planned departure or retirement.
COMPUTE V_S5_MANDATORY = 0.
IF (MISSING(S5)) V_S5_MANDATORY = 1.



* [ERROR] Allow only Yes or No responses.
COMPUTE V_S5_INVALID_CODES = 0.
IF ((NOT MISSING(S5) AND NOT ANY(S5, 'Yes', 'No'))) V_S5_INVALID_CODES = 1.



* [ERROR] Terminate respondents planning to leave primary care or retire within 2 to 3 years.
COMPUTE V_S5_SCREENOUT_YES = 0.
IF (S5 = 'Yes') V_S5_SCREENOUT_YES = 1.




* Question S6.


* [ERROR] Require average weekly patient volume.
COMPUTE V_S6_MANDATORY = 0.
IF (MISSING(S6)) V_S6_MANDATORY = 1.



* [ERROR] Allow only the listed weekly patient-volume categories.
COMPUTE V_S6_INVALID_CODES = 0.
IF ((NOT MISSING(S6) AND NOT ANY(S6, 'Less than 75 patients per week', '75 to 99 patients', '100 to 124 patients', '125 to 149 patients', '150 to 174 patients', '175 to 199 patients', '200 or more patients'))) V_S6_INVALID_CODES = 1.



* [ERROR] Terminate respondents seeing fewer than 75 patients per week.
COMPUTE V_S6_SCREENOUT_LOW_VOLUME = 0.
IF (S6 = 'Less than 75 patients per week') V_S6_SCREENOUT_LOW_VOLUME = 1.




* Question S7.


* [ERROR] Require a response about having an assigned patient panel.
COMPUTE V_S7_MANDATORY = 0.
IF (MISSING(S7)) V_S7_MANDATORY = 1.



* [ERROR] Allow only Yes or No responses for assigned patient panel.
COMPUTE V_S7_INVALID_CODES = 0.
IF ((NOT MISSING(S7) AND NOT ANY(S7, 'Yes', 'No'))) V_S7_INVALID_CODES = 1.




* Question S8.


* [ERROR] Require payor coverage percentages.
COMPUTE V_S8_MANDATORY = 0.
IF (MISSING(S8)) V_S8_MANDATORY = 1.



* [ERROR] Require payor percentages to total 100%.
COMPUTE V_S8_PERCENTAGE_TOTAL = 0.
IF (SUM(S8) <> 100.0) V_S8_PERCENTAGE_TOTAL = 1.




* Question S9.


* [ERROR] Require a response about FQHC practice.
COMPUTE V_S9_MANDATORY = 0.
IF (MISSING(S9)) V_S9_MANDATORY = 1.



* [ERROR] Allow only Yes or No responses.
COMPUTE V_S9_INVALID_CODES = 0.
IF ((NOT MISSING(S9) AND NOT ANY(S9, 'Yes', 'No'))) V_S9_INVALID_CODES = 1.




* Question S10.


* [ERROR] Require a response to the functional-medicine experience question and associated survey block.
COMPUTE V_S10_MANDATORY = 0.
IF (MISSING(S10)) V_S10_MANDATORY = 1.





*===============================================================================.
* FINAL VALIDATION SUMMARY.
*===============================================================================.
COMPUTE VALIDATION_OVERALL = MAX(V_S1_MANDATORY, V_S1_INVALID_CODES, V_S1_SCREENOUT_YES, V_S2_MANDATORY, V_S2_INVALID_CODES, V_S2_SCREENOUT_OTHER, V_S3_MANDATORY, V_S3_INVALID_CODES, V_S3_SCREENOUT_OTHER, V_S4_MANDATORY, V_S4_RANGE, V_S4_SCREENOUT_LT2, V_S4_SCREENOUT_GT29, V_S5_MANDATORY, V_S5_INVALID_CODES, V_S5_SCREENOUT_YES, V_S6_MANDATORY, V_S6_INVALID_CODES, V_S6_SCREENOUT_LOW_VOLUME, V_S7_MANDATORY, V_S7_INVALID_CODES, V_S8_MANDATORY, V_S8_PERCENTAGE_TOTAL, V_S9_MANDATORY, V_S9_INVALID_CODES, V_S10_MANDATORY).
FREQUENCIES VARIABLES=V_S1_MANDATORY V_S1_INVALID_CODES V_S1_SCREENOUT_YES V_S2_MANDATORY V_S2_INVALID_CODES V_S2_SCREENOUT_OTHER V_S3_MANDATORY V_S3_INVALID_CODES V_S3_SCREENOUT_OTHER V_S4_MANDATORY V_S4_RANGE V_S4_SCREENOUT_LT2 V_S4_SCREENOUT_GT29 V_S5_MANDATORY V_S5_INVALID_CODES V_S5_SCREENOUT_YES V_S6_MANDATORY V_S6_INVALID_CODES V_S6_SCREENOUT_LOW_VOLUME V_S7_MANDATORY V_S7_INVALID_CODES V_S8_MANDATORY V_S8_PERCENTAGE_TOTAL V_S9_MANDATORY V_S9_INVALID_CODES V_S10_MANDATORY VALIDATION_OVERALL.

* MODEL WARNINGS.
* S10 contains multiple embedded survey questions and grids, but no separate canonical variables were supplied; uncertain subquestion-level range, ranking, duplicate-ranking, and routing checks were omitted.
* The S8 termination condition depends on the subtotal of three named payor fields, but those component variables were not supplied; no aggregate threshold rule was added.
* The conditional numeric panel-count field in S7 has no separate canonical variable; its range check was omitted.
* Omitted incomplete model rule: Rule S8_PERCENTAGE_RANGE requires variables and a range or allowed_values.


EXECUTE.
