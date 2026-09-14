* Encoding: UTF-8.
* Generated deterministically by Survey Programming AI.
* Source: (V1_R99488) LEO_HN_AD_M3_R1_survey_June_2026_v2.0.docx.
TITLE 'HEADER ALL PAGES:'.



*===============================================================================.
* SECTION MAIN: Questionnaire.
*===============================================================================.

* Question S1.ARE.


* [ERROR] A response is required to determine whether the respondent proceeds or exits the interview.
COMPUTE V_S1_ARE_MISSING = 0.
IF (MISSING(S1.ARE)) V_S1_ARE_MISSING = 1.



* [ERROR] Terminate the interview when the respondent answers No.
COMPUTE V_S1_ARE_SCREENOUT = 0.
IF (S1.ARE = 'No') V_S1_ARE_SCREENOUT = 1.




* Question S2.PLEASE.


* [ERROR] A location must be selected to determine whether the respondent continues.
COMPUTE V_S2_PLEASE_MISSING = 0.
IF (MISSING(S2.PLEASE)) V_S2_PLEASE_MISSING = 1.



* [ERROR] Terminate the interview when the respondent selects Other as the location.
COMPUTE V_S2_PLEASE_SCREENOUT = 0.
IF (S2.PLEASE = 'Other') V_S2_PLEASE_SCREENOUT = 1.




* Question S3.


* [ERROR] An occupation must be selected.
COMPUTE V_S3_MISSING = 0.
IF (MISSING(S3)) V_S3_MISSING = 1.



* [ERROR] Only the listed occupation codes 1, 2, and 8 are valid responses.
COMPUTE V_S3_INVALID_CODES = 0.
IF ((NOT MISSING(S3) AND NOT ANY(S3, 1, 2, 8))) V_S3_INVALID_CODES = 1.



* [ERROR] Terminate the interview when the respondent selects occupation code 8, Other.
COMPUTE V_S3_SCREENOUT = 0.
IF (S3 = 8) V_S3_SCREENOUT = 1.




* Question S4.


* [ERROR] A time-in-practice category must be selected.
COMPUTE V_S4_MISSING = 0.
IF (MISSING(S4)) V_S4_MISSING = 1.



* [ERROR] Only time-in-practice codes 1 through 4 are valid responses.
COMPUTE V_S4_INVALID_CODES = 0.
IF ((NOT MISSING(S4) AND NOT ANY(S4, 1, 2, 3, 4))) V_S4_INVALID_CODES = 1.




* Question Q54.


* [INFO] Validate the optional free-text name and title response when provided.
COMPUTE V_Q54_OPEN_END = 0.
IF (MISSING(Q54)) V_Q54_OPEN_END = 1.





*===============================================================================.
* FINAL VALIDATION SUMMARY.
*===============================================================================.
COMPUTE VALIDATION_OVERALL = MAX(V_S1_ARE_MISSING, V_S1_ARE_SCREENOUT, V_S2_PLEASE_MISSING, V_S2_PLEASE_SCREENOUT, V_S3_MISSING, V_S3_INVALID_CODES, V_S3_SCREENOUT, V_S4_MISSING, V_S4_INVALID_CODES, V_Q54_OPEN_END).
FREQUENCIES VARIABLES=V_S1_ARE_MISSING V_S1_ARE_SCREENOUT V_S2_PLEASE_MISSING V_S2_PLEASE_SCREENOUT V_S3_MISSING V_S3_INVALID_CODES V_S3_SCREENOUT V_S4_MISSING V_S4_INVALID_CODES V_Q54_OPEN_END VALIDATION_OVERALL.

* MODEL WARNINGS.
* The parsed option structures for S1.ARE and S2.PLEASE are incomplete; no invalid-code rules were added for those questions.
* S4 contains extensive survey-grid instructions in its extracted text, but no grid item variables are supplied; no grid-level validation was added.


EXECUTE.
