* Encoding: UTF-8.
* Generated deterministically by Survey Programming AI.
* Source: (V1_R99488) LEO_HN_AD_M3_R1_survey_June_2026_v2.0.docx.
TITLE 'HEADER ALL PAGES:'.



*===============================================================================.
* SECTION MAIN: Questionnaire.
*===============================================================================.

* Question S1.ARE.


* [ERROR] A response is required to determine whether the respondent may proceed.
COMPUTE V_S1_ARE_MANDATORY = 0.
IF (MISSING(S1.ARE)) V_S1_ARE_MANDATORY = 1.



* [ERROR] Only Yes or No responses are valid.
COMPUTE V_S1_ARE_INVALID_CODES = 0.
IF ((NOT MISSING(S1.ARE) AND NOT ANY(S1.ARE, 'Yes', 'No'))) V_S1_ARE_INVALID_CODES = 1.



* [ERROR] Terminate the interview when the respondent answers No.
COMPUTE V_S1_ARE_SCREENOUT = 0.
IF (S1.ARE = 'No') V_S1_ARE_SCREENOUT = 1.




* Question S2.PLEASE.


* [ERROR] A location must be selected.
COMPUTE V_S2_PLEASE_MANDATORY = 0.
IF (MISSING(S2.PLEASE)) V_S2_PLEASE_MANDATORY = 1.



* [ERROR] Terminate the interview when Other is selected as the location.
COMPUTE V_S2_PLEASE_SCREENOUT = 0.
IF (S2.PLEASE = 'Other') V_S2_PLEASE_SCREENOUT = 1.




* Question S3.


* [ERROR] An occupation must be selected.
COMPUTE V_S3_MANDATORY = 0.
IF (MISSING(S3)) V_S3_MANDATORY = 1.



* [ERROR] Only occupation codes 1, 2, or 8 are valid.
COMPUTE V_S3_INVALID_CODES = 0.
IF ((NOT MISSING(S3) AND NOT ANY(S3, 1, 2, 8))) V_S3_INVALID_CODES = 1.



* [ERROR] Terminate the interview when Other occupation code 8 is selected.
COMPUTE V_S3_SCREENOUT = 0.
IF (S3 = 8) V_S3_SCREENOUT = 1.




* Question S4.


* [ERROR] A time-in-practice category must be selected.
COMPUTE V_S4_MANDATORY = 0.
IF (MISSING(S4)) V_S4_MANDATORY = 1.



* [ERROR] Only time-in-practice codes 1, 2, 3, or 4 are valid.
COMPUTE V_S4_INVALID_CODES = 0.
IF ((NOT MISSING(S4) AND NOT ANY(S4, 1, 2, 3, 4))) V_S4_INVALID_CODES = 1.




* Question Q54.
* No validation generated: This is an optional open-ended acknowledgement field; no response-format, length, or consistency constraint is specified.




*===============================================================================.
* FINAL VALIDATION SUMMARY.
*===============================================================================.
COMPUTE VALIDATION_OVERALL = MAX(V_S1_ARE_MANDATORY, V_S1_ARE_INVALID_CODES, V_S1_ARE_SCREENOUT, V_S2_PLEASE_MANDATORY, V_S2_PLEASE_SCREENOUT, V_S3_MANDATORY, V_S3_INVALID_CODES, V_S3_SCREENOUT, V_S4_MANDATORY, V_S4_INVALID_CODES).
FREQUENCIES VARIABLES=V_S1_ARE_MANDATORY V_S1_ARE_INVALID_CODES V_S1_ARE_SCREENOUT V_S2_PLEASE_MANDATORY V_S2_PLEASE_SCREENOUT V_S3_MANDATORY V_S3_INVALID_CODES V_S3_SCREENOUT V_S4_MANDATORY V_S4_INVALID_CODES VALIDATION_OVERALL.

* MODEL WARNINGS.
* The S2 location option coding is incomplete in the canonical extraction, so no allowed-code validation was added.
* The S4 canonical block contains appended main-survey grid content without separate variables; no validations were inferred for that content.


EXECUTE.
