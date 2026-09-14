* Encoding: UTF-8.
* Generated deterministically by Survey Programming AI.
* Source: (V5 R94036) Bob Response PC_Final_WAQ (2).docx.
TITLE 'Final Primary Care Landscape (6/16/26)'.
* Project: Primary Care Landscape.


*===============================================================================.
* SECTION Introduction: Introduction.
*===============================================================================.

* Question INTRO.
* No validation generated: Informational introduction text; no respondent-entered data to validate.



* Question S1.


* [ERROR] S1 must be answered.
COMPUTE V_S1_MANDATORY = 0.
IF (MISSING(S1)) V_S1_MANDATORY = 1.



* [ERROR] S1 must contain a valid response code.
COMPUTE V_S1_CODES = 0.
IF ((NOT MISSING(S1) AND NOT ANY(S1, 1, 2))) V_S1_CODES = 1.



* [ERROR] Respondents answering Yes at S1 must be screened out.
COMPUTE V_S1_SCREENOUT = 0.
IF (S1 = 1) V_S1_SCREENOUT = 1.




* Question S2.


* [ERROR] S2 must be answered.
COMPUTE V_S2_MANDATORY = 0.
IF (MISSING(S2)) V_S2_MANDATORY = 1.



* [ERROR] S2 must contain a valid response code.
COMPUTE V_S2_CODES = 0.
IF ((NOT MISSING(S2) AND NOT ANY(S2, 1, 2, 3, 4, 5, 98))) V_S2_CODES = 1.



* [ERROR] Respondents selecting Other certification or practice type must be screened out.
COMPUTE V_S2_SCREENOUT = 0.
IF (S2 = 98) V_S2_SCREENOUT = 1.




* Question S3.


* [ERROR] S3 must be answered.
COMPUTE V_S3_MANDATORY = 0.
IF (MISSING(S3)) V_S3_MANDATORY = 1.



* [ERROR] S3 must contain a valid response code.
COMPUTE V_S3_CODES = 0.
IF ((NOT MISSING(S3) AND NOT ANY(S3, 1, 2, 3, 4, 5, 98))) V_S3_CODES = 1.



* [ERROR] Respondents selecting Other must be screened out.
COMPUTE V_S3_SCREENOUT = 0.
IF (S3 = 98) V_S3_SCREENOUT = 1.




* Question S4.


* [ERROR] S4 must be answered.
COMPUTE V_S4_MANDATORY = 0.
IF (MISSING(S4)) V_S4_MANDATORY = 1.



* [ERROR] S4 must be between 1 and 40 years.
COMPUTE V_S4_RANGE = 0.
IF ((NOT MISSING(S4) AND (S4 < 1.0 OR S4 > 40.0))) V_S4_RANGE = 1.



* [ERROR] Respondents reporting fewer than 2 years in practice must be screened out.
COMPUTE V_S4_SCREENOUT_LOW = 0.
IF (S4 < 2) V_S4_SCREENOUT_LOW = 1.



* [ERROR] Respondents reporting more than 29 years in practice must be screened out.
COMPUTE V_S4_SCREENOUT_HIGH = 0.
IF (S4 > 29) V_S4_SCREENOUT_HIGH = 1.




* Question S5.


* [ERROR] S5 must be answered.
COMPUTE V_S5_MANDATORY = 0.
IF (MISSING(S5)) V_S5_MANDATORY = 1.



* [ERROR] S5 must contain a valid response code.
COMPUTE V_S5_CODES = 0.
IF ((NOT MISSING(S5) AND NOT ANY(S5, 1, 2))) V_S5_CODES = 1.



* [ERROR] Respondents planning to leave primary care or retire must be screened out.
COMPUTE V_S5_SCREENOUT = 0.
IF (S5 = 1) V_S5_SCREENOUT = 1.




* Question S6.


* [ERROR] S6 must be answered.
COMPUTE V_S6_MANDATORY = 0.
IF (MISSING(S6)) V_S6_MANDATORY = 1.



* [ERROR] S6 must contain a valid response code.
COMPUTE V_S6_CODES = 0.
IF ((NOT MISSING(S6) AND NOT ANY(S6, 1, 2, 3, 4, 5, 6, 7))) V_S6_CODES = 1.



* [ERROR] Respondents seeing fewer than 75 patients per week must be screened out.
COMPUTE V_S6_SCREENOUT = 0.
IF (S6 = 1) V_S6_SCREENOUT = 1.




* Question S7.


* [ERROR] S7 must be answered.
COMPUTE V_S7_MANDATORY = 0.
IF (MISSING(S7)) V_S7_MANDATORY = 1.



* [ERROR] S7 must contain a valid response code.
COMPUTE V_S7_CODES = 0.
IF ((NOT MISSING(S7) AND NOT ANY(S7, 1, 2))) V_S7_CODES = 1.




* Question S7_PANEL_SIZE.


* [ERROR] The assigned patient panel size must be between 1 and 5,000.
COMPUTE V_S7_PANEL_SIZE_RANGE = 0.
IF ((NOT MISSING(S7_PANEL_SIZE) AND (S7_PANEL_SIZE < 1.0 OR S7_PANEL_SIZE > 5000.0))) V_S7_PANEL_SIZE_RANGE = 1.



* [ERROR] Panel size is applicable only when S7 indicates the respondent has an assigned panel.
COMPUTE V_S7_PANEL_SIZE_ROUTING = 0.
IF (((S7 = 1) AND (MISSING(S7_PANEL_SIZE))) OR ((NOT (S7 = 1)) AND (NOT MISSING(S7_PANEL_SIZE)))) V_S7_PANEL_SIZE_ROUTING = 1.




* Question S8_1.


* [ERROR] S8 Commercial Insurance percentage must be answered.
COMPUTE V_S8_1_MANDATORY = 0.
IF (MISSING(S8_1)) V_S8_1_MANDATORY = 1.



* [ERROR] S8 Commercial Insurance percentage must be between 0 and 100.
COMPUTE V_S8_1_RANGE = 0.
IF ((NOT MISSING(S8_1) AND (S8_1 < 0.0 OR S8_1 > 100.0))) V_S8_1_RANGE = 1.




* Question S8_2.


* [ERROR] S8 Medicare percentage must be answered.
COMPUTE V_S8_2_MANDATORY = 0.
IF (MISSING(S8_2)) V_S8_2_MANDATORY = 1.



* [ERROR] S8 Medicare percentage must be between 0 and 100.
COMPUTE V_S8_2_RANGE = 0.
IF ((NOT MISSING(S8_2) AND (S8_2 < 0.0 OR S8_2 > 100.0))) V_S8_2_RANGE = 1.




* Question S8_3.


* [ERROR] S8 Medicaid percentage must be answered.
COMPUTE V_S8_3_MANDATORY = 0.
IF (MISSING(S8_3)) V_S8_3_MANDATORY = 1.



* [ERROR] S8 Medicaid percentage must be between 0 and 100.
COMPUTE V_S8_3_RANGE = 0.
IF ((NOT MISSING(S8_3) AND (S8_3 < 0.0 OR S8_3 > 100.0))) V_S8_3_RANGE = 1.




* Question S8_4.


* [ERROR] S8 Other coverage percentage must be answered.
COMPUTE V_S8_4_MANDATORY = 0.
IF (MISSING(S8_4)) V_S8_4_MANDATORY = 1.



* [ERROR] S8 Other coverage percentage must be between 0 and 100.
COMPUTE V_S8_4_RANGE = 0.
IF ((NOT MISSING(S8_4) AND (S8_4 < 0.0 OR S8_4 > 100.0))) V_S8_4_RANGE = 1.



* [ERROR] The four S8 coverage percentages must total 100%.
!Sum_to_var svar=S8_1 evar=S8_4.
COMPUTE V_S8_TOTAL = 0.
IF (SUM(S8_1, S8_2, S8_3, S8_4) <> 100.0) V_S8_TOTAL = 1.




* Question S9.


* [ERROR] S9 must be answered.
COMPUTE V_S9_MANDATORY = 0.
IF (MISSING(S9)) V_S9_MANDATORY = 1.



* [ERROR] S9 must contain a valid response code.
COMPUTE V_S9_CODES = 0.
IF ((NOT MISSING(S9) AND NOT ANY(S9, 1, 2))) V_S9_CODES = 1.




* Question S10.


* [ERROR] S10 must be answered.
COMPUTE V_S10_MANDATORY = 0.
IF (MISSING(S10)) V_S10_MANDATORY = 1.



* [ERROR] S10 must contain a valid response code.
COMPUTE V_S10_CODES = 0.
IF ((NOT MISSING(S10) AND NOT ANY(S10, 1, 2))) V_S10_CODES = 1.





*===============================================================================.
* SECTION Survey: Survey.
*===============================================================================.

* Question Q1_R01.


* [ERROR] Q1_R01 must be answered.
COMPUTE V_Q1_R01_MANDATORY = 0.
IF (MISSING(Q1_R01)) V_Q1_R01_MANDATORY = 1.



* [ERROR] Q1_R01 must be between 0% and 100%.
COMPUTE V_Q1_R01_RANGE = 0.
IF ((NOT MISSING(Q1_R01) AND (Q1_R01 < 0.0 OR Q1_R01 > 100.0))) V_Q1_R01_RANGE = 1.




* Question Q1_R02.


* [ERROR] Q1_R02 must be answered.
COMPUTE V_Q1_R02_MANDATORY = 0.
IF (MISSING(Q1_R02)) V_Q1_R02_MANDATORY = 1.



* [ERROR] Q1_R02 must be between 0% and 100%.
COMPUTE V_Q1_R02_RANGE = 0.
IF ((NOT MISSING(Q1_R02) AND (Q1_R02 < 0.0 OR Q1_R02 > 100.0))) V_Q1_R02_RANGE = 1.




* Question Q1_R03.


* [ERROR] Q1_R03 must be answered.
COMPUTE V_Q1_R03_MANDATORY = 0.
IF (MISSING(Q1_R03)) V_Q1_R03_MANDATORY = 1.



* [ERROR] Q1_R03 must be between 0% and 100%.
COMPUTE V_Q1_R03_RANGE = 0.
IF ((NOT MISSING(Q1_R03) AND (Q1_R03 < 0.0 OR Q1_R03 > 100.0))) V_Q1_R03_RANGE = 1.




* Question Q1_R04.


* [ERROR] Q1_R04 must be answered.
COMPUTE V_Q1_R04_MANDATORY = 0.
IF (MISSING(Q1_R04)) V_Q1_R04_MANDATORY = 1.



* [ERROR] Q1_R04 must be between 0% and 100%.
COMPUTE V_Q1_R04_RANGE = 0.
IF ((NOT MISSING(Q1_R04) AND (Q1_R04 < 0.0 OR Q1_R04 > 100.0))) V_Q1_R04_RANGE = 1.




* Question Q1_R05.


* [ERROR] Q1_R05 must be answered.
COMPUTE V_Q1_R05_MANDATORY = 0.
IF (MISSING(Q1_R05)) V_Q1_R05_MANDATORY = 1.



* [ERROR] Q1_R05 must be between 0% and 100%.
COMPUTE V_Q1_R05_RANGE = 0.
IF ((NOT MISSING(Q1_R05) AND (Q1_R05 < 0.0 OR Q1_R05 > 100.0))) V_Q1_R05_RANGE = 1.




* Question Q1_R06.


* [ERROR] Q1_R06 must be answered.
COMPUTE V_Q1_R06_MANDATORY = 0.
IF (MISSING(Q1_R06)) V_Q1_R06_MANDATORY = 1.



* [ERROR] Q1_R06 must be between 0% and 100%.
COMPUTE V_Q1_R06_RANGE = 0.
IF ((NOT MISSING(Q1_R06) AND (Q1_R06 < 0.0 OR Q1_R06 > 100.0))) V_Q1_R06_RANGE = 1.




* Question Q1_R07.


* [ERROR] Q1_R07 must be answered.
COMPUTE V_Q1_R07_MANDATORY = 0.
IF (MISSING(Q1_R07)) V_Q1_R07_MANDATORY = 1.



* [ERROR] Q1_R07 must be between 0% and 100%.
COMPUTE V_Q1_R07_RANGE = 0.
IF ((NOT MISSING(Q1_R07) AND (Q1_R07 < 0.0 OR Q1_R07 > 100.0))) V_Q1_R07_RANGE = 1.




* Question Q1_R08.


* [ERROR] Q1_R08 must be answered.
COMPUTE V_Q1_R08_MANDATORY = 0.
IF (MISSING(Q1_R08)) V_Q1_R08_MANDATORY = 1.



* [ERROR] Q1_R08 must be between 0% and 100%.
COMPUTE V_Q1_R08_RANGE = 0.
IF ((NOT MISSING(Q1_R08) AND (Q1_R08 < 0.0 OR Q1_R08 > 100.0))) V_Q1_R08_RANGE = 1.




* Question Q1_R09.


* [ERROR] Q1_R09 must be answered.
COMPUTE V_Q1_R09_MANDATORY = 0.
IF (MISSING(Q1_R09)) V_Q1_R09_MANDATORY = 1.



* [ERROR] Q1_R09 must be between 0% and 100%.
COMPUTE V_Q1_R09_RANGE = 0.
IF ((NOT MISSING(Q1_R09) AND (Q1_R09 < 0.0 OR Q1_R09 > 100.0))) V_Q1_R09_RANGE = 1.




* Question Q1_R10.


* [ERROR] Q1_R10 must be answered.
COMPUTE V_Q1_R10_MANDATORY = 0.
IF (MISSING(Q1_R10)) V_Q1_R10_MANDATORY = 1.



* [ERROR] Q1_R10 must be between 0% and 100%.
COMPUTE V_Q1_R10_RANGE = 0.
IF ((NOT MISSING(Q1_R10) AND (Q1_R10 < 0.0 OR Q1_R10 > 100.0))) V_Q1_R10_RANGE = 1.




* Question Q1_R11.


* [ERROR] Response must be between 0% and 100%.
COMPUTE V_Q1_R11_RANGE = 0.
IF ((NOT MISSING(Q1_R11) AND (Q1_R11 < 0.0 OR Q1_R11 > 100.0))) V_Q1_R11_RANGE = 1.




* Question Q1_R12.


* [ERROR] Response must be between 0% and 100%.
COMPUTE V_Q1_R12_RANGE = 0.
IF ((NOT MISSING(Q1_R12) AND (Q1_R12 < 0.0 OR Q1_R12 > 100.0))) V_Q1_R12_RANGE = 1.




* Question Q2_R01.


* [ERROR] Response must not exceed 99 test panels.
COMPUTE V_Q2_R01_RANGE = 0.
IF ((NOT MISSING(Q2_R01) AND (Q2_R01 > 99.0))) V_Q2_R01_RANGE = 1.




* Question Q2_R02.


* [ERROR] Response must not exceed 99 test panels.
COMPUTE V_Q2_R02_RANGE = 0.
IF ((NOT MISSING(Q2_R02) AND (Q2_R02 > 99.0))) V_Q2_R02_RANGE = 1.




* Question Q2_R03.


* [ERROR] Response must not exceed 99 test panels.
COMPUTE V_Q2_R03_RANGE = 0.
IF ((NOT MISSING(Q2_R03) AND (Q2_R03 > 99.0))) V_Q2_R03_RANGE = 1.




* Question Q2_R04.


* [ERROR] Response must not exceed 99 test panels.
COMPUTE V_Q2_R04_RANGE = 0.
IF ((NOT MISSING(Q2_R04) AND (Q2_R04 > 99.0))) V_Q2_R04_RANGE = 1.




* Question Q2_R05.


* [ERROR] Response must not exceed 99 test panels.
COMPUTE V_Q2_R05_RANGE = 0.
IF ((NOT MISSING(Q2_R05) AND (Q2_R05 > 99.0))) V_Q2_R05_RANGE = 1.




* Question Q2_R06.


* [ERROR] Response must not exceed 99 test panels.
COMPUTE V_Q2_R06_RANGE = 0.
IF ((NOT MISSING(Q2_R06) AND (Q2_R06 > 99.0))) V_Q2_R06_RANGE = 1.




* Question Q2_R07.


* [ERROR] Response must not exceed 99 test panels.
COMPUTE V_Q2_R07_RANGE = 0.
IF ((NOT MISSING(Q2_R07) AND (Q2_R07 > 99.0))) V_Q2_R07_RANGE = 1.




* Question Q2_R08.


* [ERROR] Response must not exceed 99 test panels.
COMPUTE V_Q2_R08_RANGE = 0.
IF ((NOT MISSING(Q2_R08) AND (Q2_R08 > 99.0))) V_Q2_R08_RANGE = 1.




* Question Q2_R09.


* [ERROR] Response must not exceed 99 test panels.
COMPUTE V_Q2_R09_RANGE = 0.
IF ((NOT MISSING(Q2_R09) AND (Q2_R09 > 99.0))) V_Q2_R09_RANGE = 1.




* Question Q2_R10.


* [ERROR] Response must not exceed 99 test panels.
COMPUTE V_Q2_R10_RANGE = 0.
IF ((NOT MISSING(Q2_R10) AND (Q2_R10 > 99.0))) V_Q2_R10_RANGE = 1.




* Question Q2_R11.


* [ERROR] Response must not exceed 99 test panels.
COMPUTE V_Q2_R11_RANGE = 0.
IF ((NOT MISSING(Q2_R11) AND (Q2_R11 > 99.0))) V_Q2_R11_RANGE = 1.




* Question Q2_R12.


* [ERROR] Response must not exceed 99 test panels.
COMPUTE V_Q2_R12_RANGE = 0.
IF ((NOT MISSING(Q2_R12) AND (Q2_R12 > 99.0))) V_Q2_R12_RANGE = 1.




* Question Q3_R01.
* No validation generated: The supplied source gives conflicting numeric ranges for this question (1–99 and 0–199), so no range check is emitted.



* Question Q3_R02.
* No validation generated: The supplied source gives conflicting numeric ranges for this question (1–99 and 0–199), so no range check is emitted.



* Question Q3_R03.
* No validation generated: The supplied source gives conflicting numeric ranges for this question (1–99 and 0–199), so no range check is emitted.



* Question Q3_R04.
* No validation generated: The supplied source gives conflicting numeric ranges for this question (1–99 and 0–199), so no range check is emitted.



* Question Q3_R05.
* No validation generated: The supplied source gives conflicting numeric ranges for this question (1–99 and 0–199), so no range check is emitted.



* Question Q3_R06.
* No validation generated: The supplied source gives conflicting numeric ranges for this question (1–99 and 0–199), so no range check is emitted.



* Question Q3_R07.
* No validation generated: The supplied source gives conflicting numeric ranges for this question (1–99 and 0–199), so no range check is emitted.



* Question Q3_R08.
* No validation generated: The supplied source gives conflicting numeric ranges for this question (1–99 and 0–199), so no range check is emitted.



* Question Q3_R09.
* No validation generated: The supplied source gives conflicting numeric ranges for this question (1–99 and 0–199), so no range check is emitted.



* Question Q3_R10.
* No validation generated: The supplied source gives conflicting numeric ranges for this question (1–99 and 0–199), so no range check is emitted.



* Question Q3_R11.
* No validation generated: The supplied source gives conflicting numeric ranges for this question (1–99 and 0–199), so no range check is emitted.



* Question Q3_R12.
* No validation generated: Numeric range evidence is conflicting in the supplied source: both 1–99 and 0–199 are stated, so no deterministic range check is supported.



* Question Q4_R01.


* [ERROR] Response must be one of the specified 10-point scale values.
COMPUTE V_Q4_R01_INVALID_CODES = 0.
IF ((NOT MISSING(Q4_R01) AND NOT ANY(Q4_R01, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10))) V_Q4_R01_INVALID_CODES = 1.




* Question Q4_R02.


* [ERROR] Response must be one of the specified 10-point scale values.
COMPUTE V_Q4_R02_INVALID_CODES = 0.
IF ((NOT MISSING(Q4_R02) AND NOT ANY(Q4_R02, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10))) V_Q4_R02_INVALID_CODES = 1.




* Question Q4_R03.


* [ERROR] Response must be one of the specified 10-point scale values.
COMPUTE V_Q4_R03_INVALID_CODES = 0.
IF ((NOT MISSING(Q4_R03) AND NOT ANY(Q4_R03, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10))) V_Q4_R03_INVALID_CODES = 1.




* Question Q4_R04.


* [ERROR] Response must be one of the specified 10-point scale values.
COMPUTE V_Q4_R04_INVALID_CODES = 0.
IF ((NOT MISSING(Q4_R04) AND NOT ANY(Q4_R04, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10))) V_Q4_R04_INVALID_CODES = 1.




* Question Q4_R05.


* [ERROR] Response must be one of the specified 10-point scale values.
COMPUTE V_Q4_R05_INVALID_CODES = 0.
IF ((NOT MISSING(Q4_R05) AND NOT ANY(Q4_R05, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10))) V_Q4_R05_INVALID_CODES = 1.




* Question Q4_R06.


* [ERROR] Response must be one of the specified 10-point scale values.
COMPUTE V_Q4_R06_INVALID_CODES = 0.
IF ((NOT MISSING(Q4_R06) AND NOT ANY(Q4_R06, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10))) V_Q4_R06_INVALID_CODES = 1.




* Question Q4_R07.


* [ERROR] Response must be one of the specified 10-point scale values.
COMPUTE V_Q4_R07_INVALID_CODES = 0.
IF ((NOT MISSING(Q4_R07) AND NOT ANY(Q4_R07, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10))) V_Q4_R07_INVALID_CODES = 1.




* Question Q4_R08.


* [ERROR] Response must be one of the specified 10-point scale values.
COMPUTE V_Q4_R08_INVALID_CODES = 0.
IF ((NOT MISSING(Q4_R08) AND NOT ANY(Q4_R08, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10))) V_Q4_R08_INVALID_CODES = 1.




* Question Q4_R09.


* [ERROR] Response must be one of the specified 10-point scale values.
COMPUTE V_Q4_R09_INVALID_CODES = 0.
IF ((NOT MISSING(Q4_R09) AND NOT ANY(Q4_R09, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10))) V_Q4_R09_INVALID_CODES = 1.




* Question Q4_R10.


* [ERROR] Response must be one of the specified 10-point scale values.
COMPUTE V_Q4_R10_INVALID_CODES = 0.
IF ((NOT MISSING(Q4_R10) AND NOT ANY(Q4_R10, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10))) V_Q4_R10_INVALID_CODES = 1.




* Question Q4_R11.


* [ERROR] Response must be one of the specified 10-point scale values.
COMPUTE V_Q4_R11_INVALID_CODES = 0.
IF ((NOT MISSING(Q4_R11) AND NOT ANY(Q4_R11, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10))) V_Q4_R11_INVALID_CODES = 1.




* Question Q4_R12.


* [ERROR] Response must be one of the specified 10-point scale values.
COMPUTE V_Q4_R12_INVALID_CODES = 0.
IF ((NOT MISSING(Q4_R12) AND NOT ANY(Q4_R12, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10))) V_Q4_R12_INVALID_CODES = 1.




* Question Q5_R01.


* [ERROR] Response must be one of the specified 10-point scale values.
COMPUTE V_Q5_R01_INVALID_CODES = 0.
IF ((NOT MISSING(Q5_R01) AND NOT ANY(Q5_R01, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10))) V_Q5_R01_INVALID_CODES = 1.




* Question Q5_R02.


* [ERROR] Response must be one of the specified 10-point scale values.
COMPUTE V_Q5_R02_INVALID_CODES = 0.
IF ((NOT MISSING(Q5_R02) AND NOT ANY(Q5_R02, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10))) V_Q5_R02_INVALID_CODES = 1.




* Question Q5_R03.


* [ERROR] Response must be one of the specified 10-point scale values.
COMPUTE V_Q5_R03_INVALID_CODES = 0.
IF ((NOT MISSING(Q5_R03) AND NOT ANY(Q5_R03, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10))) V_Q5_R03_INVALID_CODES = 1.




* Question Q5_R04.


* [ERROR] Response must be one of the specified 10-point scale values.
COMPUTE V_Q5_R04_INVALID_CODES = 0.
IF ((NOT MISSING(Q5_R04) AND NOT ANY(Q5_R04, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10))) V_Q5_R04_INVALID_CODES = 1.




* Question Q5_R05.


* [ERROR] Response must be one of the specified 10-point scale values.
COMPUTE V_Q5_R05_INVALID_CODES = 0.
IF ((NOT MISSING(Q5_R05) AND NOT ANY(Q5_R05, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10))) V_Q5_R05_INVALID_CODES = 1.




* Question Q5_R06.


* [ERROR] Response must be one of the specified 10-point scale values.
COMPUTE V_Q5_R06_INVALID_CODES = 0.
IF ((NOT MISSING(Q5_R06) AND NOT ANY(Q5_R06, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10))) V_Q5_R06_INVALID_CODES = 1.




* Question Q5_R07.


* [ERROR] Response must be one of the specified 10-point scale values.
COMPUTE V_Q5_R07_INVALID_CODES = 0.
IF ((NOT MISSING(Q5_R07) AND NOT ANY(Q5_R07, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10))) V_Q5_R07_INVALID_CODES = 1.




* Question Q5_R08.


* [ERROR] Response must be one of the specified 10-point scale values.
COMPUTE V_Q5_R08_INVALID_CODES = 0.
IF ((NOT MISSING(Q5_R08) AND NOT ANY(Q5_R08, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10))) V_Q5_R08_INVALID_CODES = 1.




* Question Q5_R09.


* [ERROR] Response must be one of the specified 10-point scale values.
COMPUTE V_Q5_R09_INVALID_CODES = 0.
IF ((NOT MISSING(Q5_R09) AND NOT ANY(Q5_R09, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10))) V_Q5_R09_INVALID_CODES = 1.




* Question Q5_R10.


* [ERROR] Response must be one of the specified 10-point scale values.
COMPUTE V_Q5_R10_INVALID_CODES = 0.
IF ((NOT MISSING(Q5_R10) AND NOT ANY(Q5_R10, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10))) V_Q5_R10_INVALID_CODES = 1.




* Question Q5_R11.


* [ERROR] Response must be one of the specified 10-point scale values.
COMPUTE V_Q5_R11_INVALID_CODES = 0.
IF ((NOT MISSING(Q5_R11) AND NOT ANY(Q5_R11, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10))) V_Q5_R11_INVALID_CODES = 1.




* Question Q5_R12.


* [ERROR] Response must be one of the specified 10-point scale values.
COMPUTE V_Q5_R12_INVALID_CODES = 0.
IF ((NOT MISSING(Q5_R12) AND NOT ANY(Q5_R12, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10))) V_Q5_R12_INVALID_CODES = 1.




* Question Q6_R01.


* [ERROR] Response must use one of the documented 1–10 scale values.
COMPUTE V_Q6_R01_INVALID_CODES = 0.
IF ((NOT MISSING(Q6_R01) AND NOT ANY(Q6_R01, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10))) V_Q6_R01_INVALID_CODES = 1.




* Question Q6_R02.


* [ERROR] Response must use one of the documented 1–10 scale values.
COMPUTE V_Q6_R02_INVALID_CODES = 0.
IF ((NOT MISSING(Q6_R02) AND NOT ANY(Q6_R02, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10))) V_Q6_R02_INVALID_CODES = 1.




* Question Q6_R03.


* [ERROR] Response must use one of the documented 1–10 scale values.
COMPUTE V_Q6_R03_INVALID_CODES = 0.
IF ((NOT MISSING(Q6_R03) AND NOT ANY(Q6_R03, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10))) V_Q6_R03_INVALID_CODES = 1.




* Question Q6_R04.


* [ERROR] Response must use one of the documented 1–10 scale values.
COMPUTE V_Q6_R04_INVALID_CODES = 0.
IF ((NOT MISSING(Q6_R04) AND NOT ANY(Q6_R04, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10))) V_Q6_R04_INVALID_CODES = 1.




* Question Q6_R05.


* [ERROR] Response must use one of the documented 1–10 scale values.
COMPUTE V_Q6_R05_INVALID_CODES = 0.
IF ((NOT MISSING(Q6_R05) AND NOT ANY(Q6_R05, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10))) V_Q6_R05_INVALID_CODES = 1.




* Question Q6_R06.


* [ERROR] Response must use one of the documented 1–10 scale values.
COMPUTE V_Q6_R06_INVALID_CODES = 0.
IF ((NOT MISSING(Q6_R06) AND NOT ANY(Q6_R06, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10))) V_Q6_R06_INVALID_CODES = 1.




* Question Q6_R07.


* [ERROR] Response must use one of the documented 1–10 scale values.
COMPUTE V_Q6_R07_INVALID_CODES = 0.
IF ((NOT MISSING(Q6_R07) AND NOT ANY(Q6_R07, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10))) V_Q6_R07_INVALID_CODES = 1.




* Question Q6_R08.


* [ERROR] Response must use one of the documented 1–10 scale values.
COMPUTE V_Q6_R08_INVALID_CODES = 0.
IF ((NOT MISSING(Q6_R08) AND NOT ANY(Q6_R08, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10))) V_Q6_R08_INVALID_CODES = 1.




* Question Q6_R09.


* [ERROR] Response must use one of the documented 1–10 scale values.
COMPUTE V_Q6_R09_INVALID_CODES = 0.
IF ((NOT MISSING(Q6_R09) AND NOT ANY(Q6_R09, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10))) V_Q6_R09_INVALID_CODES = 1.




* Question Q6_R10.


* [ERROR] Response must use one of the documented 1–10 scale values.
COMPUTE V_Q6_R10_INVALID_CODES = 0.
IF ((NOT MISSING(Q6_R10) AND NOT ANY(Q6_R10, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10))) V_Q6_R10_INVALID_CODES = 1.




* Question Q6_R11.


* [ERROR] Response must use one of the documented 1–10 scale values.
COMPUTE V_Q6_R11_INVALID_CODES = 0.
IF ((NOT MISSING(Q6_R11) AND NOT ANY(Q6_R11, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10))) V_Q6_R11_INVALID_CODES = 1.




* Question Q6_R12.


* [ERROR] Response must use one of the documented 1–10 scale values.
COMPUTE V_Q6_R12_INVALID_CODES = 0.
IF ((NOT MISSING(Q6_R12) AND NOT ANY(Q6_R12, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10))) V_Q6_R12_INVALID_CODES = 1.




* Question Q7_R01_A.


* [ERROR] Response must be Yes or No as documented.
COMPUTE V_Q7_R01_A_INVALID_CODES = 0.
IF ((NOT MISSING(Q7_R01_A) AND NOT ANY(Q7_R01_A, 1, 0))) V_Q7_R01_A_INVALID_CODES = 1.




* Question Q7_R01_B.


* [ERROR] Response must use one of the documented 1–10 scale values.
COMPUTE V_Q7_R01_B_INVALID_CODES = 0.
IF ((NOT MISSING(Q7_R01_B) AND NOT ANY(Q7_R01_B, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10))) V_Q7_R01_B_INVALID_CODES = 1.




* Question Q7_R02_A.


* [ERROR] Response must be Yes or No as documented.
COMPUTE V_Q7_R02_A_INVALID_CODES = 0.
IF ((NOT MISSING(Q7_R02_A) AND NOT ANY(Q7_R02_A, 1, 0))) V_Q7_R02_A_INVALID_CODES = 1.




* Question Q7_R02_B.


* [ERROR] Response must use one of the documented 1–10 scale values.
COMPUTE V_Q7_R02_B_INVALID_CODES = 0.
IF ((NOT MISSING(Q7_R02_B) AND NOT ANY(Q7_R02_B, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10))) V_Q7_R02_B_INVALID_CODES = 1.




* Question Q7_R03_A.


* [ERROR] Response must be Yes or No as documented.
COMPUTE V_Q7_R03_A_INVALID_CODES = 0.
IF ((NOT MISSING(Q7_R03_A) AND NOT ANY(Q7_R03_A, 1, 0))) V_Q7_R03_A_INVALID_CODES = 1.




* Question Q7_R03_B.


* [ERROR] Response must use one of the documented 1–10 scale values.
COMPUTE V_Q7_R03_B_INVALID_CODES = 0.
IF ((NOT MISSING(Q7_R03_B) AND NOT ANY(Q7_R03_B, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10))) V_Q7_R03_B_INVALID_CODES = 1.




* Question Q7_R04_A.


* [ERROR] Response must be Yes or No as documented.
COMPUTE V_Q7_R04_A_INVALID_CODES = 0.
IF ((NOT MISSING(Q7_R04_A) AND NOT ANY(Q7_R04_A, 1, 0))) V_Q7_R04_A_INVALID_CODES = 1.




* Question Q7_R04_B.


* [ERROR] Response must use one of the documented 1–10 scale values.
COMPUTE V_Q7_R04_B_INVALID_CODES = 0.
IF ((NOT MISSING(Q7_R04_B) AND NOT ANY(Q7_R04_B, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10))) V_Q7_R04_B_INVALID_CODES = 1.




* Question Q7_R05_A.


* [ERROR] Response must be Yes or No as documented.
COMPUTE V_Q7_R05_A_INVALID_CODES = 0.
IF ((NOT MISSING(Q7_R05_A) AND NOT ANY(Q7_R05_A, 1, 0))) V_Q7_R05_A_INVALID_CODES = 1.




* Question Q7_R05_B.


* [ERROR] Response must use one of the documented 1–10 scale values.
COMPUTE V_Q7_R05_B_INVALID_CODES = 0.
IF ((NOT MISSING(Q7_R05_B) AND NOT ANY(Q7_R05_B, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10))) V_Q7_R05_B_INVALID_CODES = 1.




* Question Q7_R06_A.


* [ERROR] Response must be Yes or No as documented.
COMPUTE V_Q7_R06_A_INVALID_CODES = 0.
IF ((NOT MISSING(Q7_R06_A) AND NOT ANY(Q7_R06_A, 1, 0))) V_Q7_R06_A_INVALID_CODES = 1.




* Question Q7_R06_B.


* [ERROR] Response must use one of the documented 1–10 scale values.
COMPUTE V_Q7_R06_B_INVALID_CODES = 0.
IF ((NOT MISSING(Q7_R06_B) AND NOT ANY(Q7_R06_B, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10))) V_Q7_R06_B_INVALID_CODES = 1.




* Question Q7_R07_A.


* [ERROR] Response must be Yes or No as documented.
COMPUTE V_Q7_R07_A_INVALID_CODES = 0.
IF ((NOT MISSING(Q7_R07_A) AND NOT ANY(Q7_R07_A, 1, 0))) V_Q7_R07_A_INVALID_CODES = 1.




* Question Q7_R07_B.


* [ERROR] Response must be a valid 1-to-10 potential-for-improving-care rating.
COMPUTE V_Q7_R07_B_INVALID_CODES = 0.
IF ((NOT MISSING(Q7_R07_B) AND NOT ANY(Q7_R07_B, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10))) V_Q7_R07_B_INVALID_CODES = 1.




* Question Q7_R08_A.


* [ERROR] Response must be Yes or No.
COMPUTE V_Q7_R08_A_INVALID_CODES = 0.
IF ((NOT MISSING(Q7_R08_A) AND NOT ANY(Q7_R08_A, 'YES', 'NO'))) V_Q7_R08_A_INVALID_CODES = 1.




* Question Q7_R08_B.


* [ERROR] Response must be a valid 1-to-10 potential-for-improving-care rating.
COMPUTE V_Q7_R08_B_INVALID_CODES = 0.
IF ((NOT MISSING(Q7_R08_B) AND NOT ANY(Q7_R08_B, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10))) V_Q7_R08_B_INVALID_CODES = 1.




* Question Q7_R09_A.


* [ERROR] Response must be Yes or No.
COMPUTE V_Q7_R09_A_INVALID_CODES = 0.
IF ((NOT MISSING(Q7_R09_A) AND NOT ANY(Q7_R09_A, 'YES', 'NO'))) V_Q7_R09_A_INVALID_CODES = 1.




* Question Q7_R09_B.


* [ERROR] Response must be a valid 1-to-10 potential-for-improving-care rating.
COMPUTE V_Q7_R09_B_INVALID_CODES = 0.
IF ((NOT MISSING(Q7_R09_B) AND NOT ANY(Q7_R09_B, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10))) V_Q7_R09_B_INVALID_CODES = 1.




* Question Q7_R10_A.


* [ERROR] Response must be Yes or No.
COMPUTE V_Q7_R10_A_INVALID_CODES = 0.
IF ((NOT MISSING(Q7_R10_A) AND NOT ANY(Q7_R10_A, 'YES', 'NO'))) V_Q7_R10_A_INVALID_CODES = 1.




* Question Q7_R10_B.


* [ERROR] Response must be a valid 1-to-10 potential-for-improving-care rating.
COMPUTE V_Q7_R10_B_INVALID_CODES = 0.
IF ((NOT MISSING(Q7_R10_B) AND NOT ANY(Q7_R10_B, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10))) V_Q7_R10_B_INVALID_CODES = 1.




* Question Q7_R11_A.


* [ERROR] Response must be Yes or No.
COMPUTE V_Q7_R11_A_INVALID_CODES = 0.
IF ((NOT MISSING(Q7_R11_A) AND NOT ANY(Q7_R11_A, 'YES', 'NO'))) V_Q7_R11_A_INVALID_CODES = 1.




* Question Q7_R11_B.


* [ERROR] Response must be a valid 1-to-10 potential-for-improving-care rating.
COMPUTE V_Q7_R11_B_INVALID_CODES = 0.
IF ((NOT MISSING(Q7_R11_B) AND NOT ANY(Q7_R11_B, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10))) V_Q7_R11_B_INVALID_CODES = 1.




* Question Q7_R12_A.


* [ERROR] Response must be Yes or No.
COMPUTE V_Q7_R12_A_INVALID_CODES = 0.
IF ((NOT MISSING(Q7_R12_A) AND NOT ANY(Q7_R12_A, 'YES', 'NO'))) V_Q7_R12_A_INVALID_CODES = 1.




* Question Q7_R12_B.


* [ERROR] Response must be a valid 1-to-10 potential-for-improving-care rating.
COMPUTE V_Q7_R12_B_INVALID_CODES = 0.
IF ((NOT MISSING(Q7_R12_B) AND NOT ANY(Q7_R12_B, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10))) V_Q7_R12_B_INVALID_CODES = 1.




* Question Q7_R13_A.


* [ERROR] Response must be Yes or No.
COMPUTE V_Q7_R13_A_INVALID_CODES = 0.
IF ((NOT MISSING(Q7_R13_A) AND NOT ANY(Q7_R13_A, 'YES', 'NO'))) V_Q7_R13_A_INVALID_CODES = 1.




* Question Q7_R13_B.


* [ERROR] Response must be a valid 1-to-10 potential-for-improving-care rating.
COMPUTE V_Q7_R13_B_INVALID_CODES = 0.
IF ((NOT MISSING(Q7_R13_B) AND NOT ANY(Q7_R13_B, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10))) V_Q7_R13_B_INVALID_CODES = 1.




* Question Q7_R14_A.


* [ERROR] Response must be Yes or No.
COMPUTE V_Q7_R14_A_INVALID_CODES = 0.
IF ((NOT MISSING(Q7_R14_A) AND NOT ANY(Q7_R14_A, 'YES', 'NO'))) V_Q7_R14_A_INVALID_CODES = 1.




* Question Q7_R14_B.


* [ERROR] Response must be a valid 1-to-10 potential-for-improving-care rating.
COMPUTE V_Q7_R14_B_INVALID_CODES = 0.
IF ((NOT MISSING(Q7_R14_B) AND NOT ANY(Q7_R14_B, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10))) V_Q7_R14_B_INVALID_CODES = 1.




* Question Q7_R15_A.


* [ERROR] Response must be Yes or No.
COMPUTE V_Q7_R15_A_INVALID_CODES = 0.
IF ((NOT MISSING(Q7_R15_A) AND NOT ANY(Q7_R15_A, 'YES', 'NO'))) V_Q7_R15_A_INVALID_CODES = 1.




* Question Q7_R15_B.


* [ERROR] Response must be a valid 1-to-10 potential-for-improving-care rating.
COMPUTE V_Q7_R15_B_INVALID_CODES = 0.
IF ((NOT MISSING(Q7_R15_B) AND NOT ANY(Q7_R15_B, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10))) V_Q7_R15_B_INVALID_CODES = 1.




* Question Q7_R16_A.


* [ERROR] Response must be Yes or No.
COMPUTE V_Q7_R16_A_INVALID_CODES = 0.
IF ((NOT MISSING(Q7_R16_A) AND NOT ANY(Q7_R16_A, 'YES', 'NO'))) V_Q7_R16_A_INVALID_CODES = 1.




* Question Q7_R16_B.


* [ERROR] Response must be a valid 1-to-10 potential-for-improving-care rating.
COMPUTE V_Q7_R16_B_INVALID_CODES = 0.
IF ((NOT MISSING(Q7_R16_B) AND NOT ANY(Q7_R16_B, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10))) V_Q7_R16_B_INVALID_CODES = 1.




* Question Q7_R17_A.


* [ERROR] Response must be Yes or No.
COMPUTE V_Q7_R17_A_INVALID_CODES = 0.
IF ((NOT MISSING(Q7_R17_A) AND NOT ANY(Q7_R17_A, 'YES', 'NO'))) V_Q7_R17_A_INVALID_CODES = 1.




* Question Q7_R17_B.


* [ERROR] Response must be a valid 1-to-10 potential-for-improving-care rating.
COMPUTE V_Q7_R17_B_INVALID_CODES = 0.
IF ((NOT MISSING(Q7_R17_B) AND NOT ANY(Q7_R17_B, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10))) V_Q7_R17_B_INVALID_CODES = 1.




* Question Q7_R18_A.


* [ERROR] Response must be Yes or No.
COMPUTE V_Q7_R18_A_INVALID_CODES = 0.
IF ((NOT MISSING(Q7_R18_A) AND NOT ANY(Q7_R18_A, 'YES', 'NO'))) V_Q7_R18_A_INVALID_CODES = 1.




* Question Q7_R18_B.


* [ERROR] Response must be a valid 1-to-10 potential-for-improving-care rating.
COMPUTE V_Q7_R18_B_INVALID_CODES = 0.
IF ((NOT MISSING(Q7_R18_B) AND NOT ANY(Q7_R18_B, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10))) V_Q7_R18_B_INVALID_CODES = 1.




* Question Q7_R19_A.


* [ERROR] Response must be Yes or No.
COMPUTE V_Q7_R19_A_INVALID_CODES = 0.
IF ((NOT MISSING(Q7_R19_A) AND NOT ANY(Q7_R19_A, 'YES', 'NO'))) V_Q7_R19_A_INVALID_CODES = 1.




* Question Q7_R19_B.


* [ERROR] Response must be a valid 1-to-10 potential-for-improving-care rating.
COMPUTE V_Q7_R19_B_INVALID_CODES = 0.
IF ((NOT MISSING(Q7_R19_B) AND NOT ANY(Q7_R19_B, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10))) V_Q7_R19_B_INVALID_CODES = 1.




* Question Q7_R20_A.


* [ERROR] Response must use a valid current-practice impact code.
COMPUTE V_Q7_R20_A_INVALID_CODES = 0.
IF ((NOT MISSING(Q7_R20_A) AND NOT ANY(Q7_R20_A, 1, 0))) V_Q7_R20_A_INVALID_CODES = 1.




* Question Q7_R20_B.


* [ERROR] Response must be a rating from 1 through 10.
COMPUTE V_Q7_R20_B_INVALID_CODES = 0.
IF ((NOT MISSING(Q7_R20_B) AND NOT ANY(Q7_R20_B, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10))) V_Q7_R20_B_INVALID_CODES = 1.




* Question Q8_R01.


* [ERROR] Response must be one of the defined top-three ranking codes or Not in Top 3.
COMPUTE V_Q8_R01_INVALID_CODES = 0.
IF ((NOT MISSING(Q8_R01) AND NOT ANY(Q8_R01, 1, 2, 3, 'NOT_TOP3'))) V_Q8_R01_INVALID_CODES = 1.



* [ERROR] Ranking must use positions 1 through 3 when this improvement is placed in the top three.
COMPUTE V_Q8_R01_RANKING = 0.
IF ((NOT MISSING(Q8_R01_1) AND NOT RANGE(Q8_R01_1, 1, 3)) OR (NOT MISSING(Q8_R01_2) AND NOT RANGE(Q8_R01_2, 1, 3)) OR (NOT MISSING(Q8_R01_3) AND NOT RANGE(Q8_R01_3, 1, 3)) OR (NOT MISSING(Q8_R01_NOT_TOP3) AND NOT RANGE(Q8_R01_NOT_TOP3, 1, 3))) V_Q8_R01_RANKING = 1.



* [ERROR] Top-three rankings across Q8 improvements must not duplicate rank positions.
COMPUTE V_Q8_DUPLICATE_RANKINGS = 0.
IF (NOT MISSING(Q8_R01) AND Q8_R01 = Q8_R02) V_Q8_DUPLICATE_RANKINGS = 1.
IF (NOT MISSING(Q8_R01) AND Q8_R01 = Q8_R03) V_Q8_DUPLICATE_RANKINGS = 1.
IF (NOT MISSING(Q8_R01) AND Q8_R01 = Q8_R04) V_Q8_DUPLICATE_RANKINGS = 1.
IF (NOT MISSING(Q8_R01) AND Q8_R01 = Q8_R05) V_Q8_DUPLICATE_RANKINGS = 1.
IF (NOT MISSING(Q8_R01) AND Q8_R01 = Q8_R06) V_Q8_DUPLICATE_RANKINGS = 1.
IF (NOT MISSING(Q8_R01) AND Q8_R01 = Q8_R07) V_Q8_DUPLICATE_RANKINGS = 1.
IF (NOT MISSING(Q8_R01) AND Q8_R01 = Q8_R08) V_Q8_DUPLICATE_RANKINGS = 1.
IF (NOT MISSING(Q8_R01) AND Q8_R01 = Q8_R09) V_Q8_DUPLICATE_RANKINGS = 1.
IF (NOT MISSING(Q8_R01) AND Q8_R01 = Q8_R10) V_Q8_DUPLICATE_RANKINGS = 1.
IF (NOT MISSING(Q8_R01) AND Q8_R01 = Q8_R11) V_Q8_DUPLICATE_RANKINGS = 1.
IF (NOT MISSING(Q8_R01) AND Q8_R01 = Q8_R12) V_Q8_DUPLICATE_RANKINGS = 1.
IF (NOT MISSING(Q8_R02) AND Q8_R02 = Q8_R03) V_Q8_DUPLICATE_RANKINGS = 1.
IF (NOT MISSING(Q8_R02) AND Q8_R02 = Q8_R04) V_Q8_DUPLICATE_RANKINGS = 1.
IF (NOT MISSING(Q8_R02) AND Q8_R02 = Q8_R05) V_Q8_DUPLICATE_RANKINGS = 1.
IF (NOT MISSING(Q8_R02) AND Q8_R02 = Q8_R06) V_Q8_DUPLICATE_RANKINGS = 1.
IF (NOT MISSING(Q8_R02) AND Q8_R02 = Q8_R07) V_Q8_DUPLICATE_RANKINGS = 1.
IF (NOT MISSING(Q8_R02) AND Q8_R02 = Q8_R08) V_Q8_DUPLICATE_RANKINGS = 1.
IF (NOT MISSING(Q8_R02) AND Q8_R02 = Q8_R09) V_Q8_DUPLICATE_RANKINGS = 1.
IF (NOT MISSING(Q8_R02) AND Q8_R02 = Q8_R10) V_Q8_DUPLICATE_RANKINGS = 1.
IF (NOT MISSING(Q8_R02) AND Q8_R02 = Q8_R11) V_Q8_DUPLICATE_RANKINGS = 1.
IF (NOT MISSING(Q8_R02) AND Q8_R02 = Q8_R12) V_Q8_DUPLICATE_RANKINGS = 1.
IF (NOT MISSING(Q8_R03) AND Q8_R03 = Q8_R04) V_Q8_DUPLICATE_RANKINGS = 1.
IF (NOT MISSING(Q8_R03) AND Q8_R03 = Q8_R05) V_Q8_DUPLICATE_RANKINGS = 1.
IF (NOT MISSING(Q8_R03) AND Q8_R03 = Q8_R06) V_Q8_DUPLICATE_RANKINGS = 1.
IF (NOT MISSING(Q8_R03) AND Q8_R03 = Q8_R07) V_Q8_DUPLICATE_RANKINGS = 1.
IF (NOT MISSING(Q8_R03) AND Q8_R03 = Q8_R08) V_Q8_DUPLICATE_RANKINGS = 1.
IF (NOT MISSING(Q8_R03) AND Q8_R03 = Q8_R09) V_Q8_DUPLICATE_RANKINGS = 1.
IF (NOT MISSING(Q8_R03) AND Q8_R03 = Q8_R10) V_Q8_DUPLICATE_RANKINGS = 1.
IF (NOT MISSING(Q8_R03) AND Q8_R03 = Q8_R11) V_Q8_DUPLICATE_RANKINGS = 1.
IF (NOT MISSING(Q8_R03) AND Q8_R03 = Q8_R12) V_Q8_DUPLICATE_RANKINGS = 1.
IF (NOT MISSING(Q8_R04) AND Q8_R04 = Q8_R05) V_Q8_DUPLICATE_RANKINGS = 1.
IF (NOT MISSING(Q8_R04) AND Q8_R04 = Q8_R06) V_Q8_DUPLICATE_RANKINGS = 1.
IF (NOT MISSING(Q8_R04) AND Q8_R04 = Q8_R07) V_Q8_DUPLICATE_RANKINGS = 1.
IF (NOT MISSING(Q8_R04) AND Q8_R04 = Q8_R08) V_Q8_DUPLICATE_RANKINGS = 1.
IF (NOT MISSING(Q8_R04) AND Q8_R04 = Q8_R09) V_Q8_DUPLICATE_RANKINGS = 1.
IF (NOT MISSING(Q8_R04) AND Q8_R04 = Q8_R10) V_Q8_DUPLICATE_RANKINGS = 1.
IF (NOT MISSING(Q8_R04) AND Q8_R04 = Q8_R11) V_Q8_DUPLICATE_RANKINGS = 1.
IF (NOT MISSING(Q8_R04) AND Q8_R04 = Q8_R12) V_Q8_DUPLICATE_RANKINGS = 1.
IF (NOT MISSING(Q8_R05) AND Q8_R05 = Q8_R06) V_Q8_DUPLICATE_RANKINGS = 1.
IF (NOT MISSING(Q8_R05) AND Q8_R05 = Q8_R07) V_Q8_DUPLICATE_RANKINGS = 1.
IF (NOT MISSING(Q8_R05) AND Q8_R05 = Q8_R08) V_Q8_DUPLICATE_RANKINGS = 1.
IF (NOT MISSING(Q8_R05) AND Q8_R05 = Q8_R09) V_Q8_DUPLICATE_RANKINGS = 1.
IF (NOT MISSING(Q8_R05) AND Q8_R05 = Q8_R10) V_Q8_DUPLICATE_RANKINGS = 1.
IF (NOT MISSING(Q8_R05) AND Q8_R05 = Q8_R11) V_Q8_DUPLICATE_RANKINGS = 1.
IF (NOT MISSING(Q8_R05) AND Q8_R05 = Q8_R12) V_Q8_DUPLICATE_RANKINGS = 1.
IF (NOT MISSING(Q8_R06) AND Q8_R06 = Q8_R07) V_Q8_DUPLICATE_RANKINGS = 1.
IF (NOT MISSING(Q8_R06) AND Q8_R06 = Q8_R08) V_Q8_DUPLICATE_RANKINGS = 1.
IF (NOT MISSING(Q8_R06) AND Q8_R06 = Q8_R09) V_Q8_DUPLICATE_RANKINGS = 1.
IF (NOT MISSING(Q8_R06) AND Q8_R06 = Q8_R10) V_Q8_DUPLICATE_RANKINGS = 1.
IF (NOT MISSING(Q8_R06) AND Q8_R06 = Q8_R11) V_Q8_DUPLICATE_RANKINGS = 1.
IF (NOT MISSING(Q8_R06) AND Q8_R06 = Q8_R12) V_Q8_DUPLICATE_RANKINGS = 1.
IF (NOT MISSING(Q8_R07) AND Q8_R07 = Q8_R08) V_Q8_DUPLICATE_RANKINGS = 1.
IF (NOT MISSING(Q8_R07) AND Q8_R07 = Q8_R09) V_Q8_DUPLICATE_RANKINGS = 1.
IF (NOT MISSING(Q8_R07) AND Q8_R07 = Q8_R10) V_Q8_DUPLICATE_RANKINGS = 1.
IF (NOT MISSING(Q8_R07) AND Q8_R07 = Q8_R11) V_Q8_DUPLICATE_RANKINGS = 1.
IF (NOT MISSING(Q8_R07) AND Q8_R07 = Q8_R12) V_Q8_DUPLICATE_RANKINGS = 1.
IF (NOT MISSING(Q8_R08) AND Q8_R08 = Q8_R09) V_Q8_DUPLICATE_RANKINGS = 1.
IF (NOT MISSING(Q8_R08) AND Q8_R08 = Q8_R10) V_Q8_DUPLICATE_RANKINGS = 1.
IF (NOT MISSING(Q8_R08) AND Q8_R08 = Q8_R11) V_Q8_DUPLICATE_RANKINGS = 1.
IF (NOT MISSING(Q8_R08) AND Q8_R08 = Q8_R12) V_Q8_DUPLICATE_RANKINGS = 1.
IF (NOT MISSING(Q8_R09) AND Q8_R09 = Q8_R10) V_Q8_DUPLICATE_RANKINGS = 1.
IF (NOT MISSING(Q8_R09) AND Q8_R09 = Q8_R11) V_Q8_DUPLICATE_RANKINGS = 1.
IF (NOT MISSING(Q8_R09) AND Q8_R09 = Q8_R12) V_Q8_DUPLICATE_RANKINGS = 1.
IF (NOT MISSING(Q8_R10) AND Q8_R10 = Q8_R11) V_Q8_DUPLICATE_RANKINGS = 1.
IF (NOT MISSING(Q8_R10) AND Q8_R10 = Q8_R12) V_Q8_DUPLICATE_RANKINGS = 1.
IF (NOT MISSING(Q8_R11) AND Q8_R11 = Q8_R12) V_Q8_DUPLICATE_RANKINGS = 1.




* Question Q8_R02.


* [ERROR] Response must be one of the defined top-three ranking codes or Not in Top 3.
COMPUTE V_Q8_R02_INVALID_CODES = 0.
IF ((NOT MISSING(Q8_R02) AND NOT ANY(Q8_R02, 1, 2, 3, 'NOT_TOP3'))) V_Q8_R02_INVALID_CODES = 1.



* [ERROR] Ranking must use positions 1 through 3 when this improvement is placed in the top three.
COMPUTE V_Q8_R02_RANKING = 0.
IF ((NOT MISSING(Q8_R02_1) AND NOT RANGE(Q8_R02_1, 1, 3)) OR (NOT MISSING(Q8_R02_2) AND NOT RANGE(Q8_R02_2, 1, 3)) OR (NOT MISSING(Q8_R02_3) AND NOT RANGE(Q8_R02_3, 1, 3)) OR (NOT MISSING(Q8_R02_NOT_TOP3) AND NOT RANGE(Q8_R02_NOT_TOP3, 1, 3))) V_Q8_R02_RANKING = 1.




* Question Q8_R03.


* [ERROR] Response must be one of the defined top-three ranking codes or Not in Top 3.
COMPUTE V_Q8_R03_INVALID_CODES = 0.
IF ((NOT MISSING(Q8_R03) AND NOT ANY(Q8_R03, 1, 2, 3, 'NOT_TOP3'))) V_Q8_R03_INVALID_CODES = 1.



* [ERROR] Ranking must use positions 1 through 3 when this improvement is placed in the top three.
COMPUTE V_Q8_R03_RANKING = 0.
IF ((NOT MISSING(Q8_R03_1) AND NOT RANGE(Q8_R03_1, 1, 3)) OR (NOT MISSING(Q8_R03_2) AND NOT RANGE(Q8_R03_2, 1, 3)) OR (NOT MISSING(Q8_R03_3) AND NOT RANGE(Q8_R03_3, 1, 3)) OR (NOT MISSING(Q8_R03_NOT_TOP3) AND NOT RANGE(Q8_R03_NOT_TOP3, 1, 3))) V_Q8_R03_RANKING = 1.




* Question Q8_R04.


* [ERROR] Response must be one of the defined top-three ranking codes or Not in Top 3.
COMPUTE V_Q8_R04_INVALID_CODES = 0.
IF ((NOT MISSING(Q8_R04) AND NOT ANY(Q8_R04, 1, 2, 3, 'NOT_TOP3'))) V_Q8_R04_INVALID_CODES = 1.



* [ERROR] Ranking must use positions 1 through 3 when this improvement is placed in the top three.
COMPUTE V_Q8_R04_RANKING = 0.
IF ((NOT MISSING(Q8_R04_1) AND NOT RANGE(Q8_R04_1, 1, 3)) OR (NOT MISSING(Q8_R04_2) AND NOT RANGE(Q8_R04_2, 1, 3)) OR (NOT MISSING(Q8_R04_3) AND NOT RANGE(Q8_R04_3, 1, 3)) OR (NOT MISSING(Q8_R04_NOT_TOP3) AND NOT RANGE(Q8_R04_NOT_TOP3, 1, 3))) V_Q8_R04_RANKING = 1.




* Question Q8_R05.


* [ERROR] Response must be one of the defined top-three ranking codes or Not in Top 3.
COMPUTE V_Q8_R05_INVALID_CODES = 0.
IF ((NOT MISSING(Q8_R05) AND NOT ANY(Q8_R05, 1, 2, 3, 'NOT_TOP3'))) V_Q8_R05_INVALID_CODES = 1.



* [ERROR] Ranking must use positions 1 through 3 when this improvement is placed in the top three.
COMPUTE V_Q8_R05_RANKING = 0.
IF ((NOT MISSING(Q8_R05_1) AND NOT RANGE(Q8_R05_1, 1, 3)) OR (NOT MISSING(Q8_R05_2) AND NOT RANGE(Q8_R05_2, 1, 3)) OR (NOT MISSING(Q8_R05_3) AND NOT RANGE(Q8_R05_3, 1, 3)) OR (NOT MISSING(Q8_R05_NOT_TOP3) AND NOT RANGE(Q8_R05_NOT_TOP3, 1, 3))) V_Q8_R05_RANKING = 1.




* Question Q8_R06.


* [ERROR] Response must be one of the defined top-three ranking codes or Not in Top 3.
COMPUTE V_Q8_R06_INVALID_CODES = 0.
IF ((NOT MISSING(Q8_R06) AND NOT ANY(Q8_R06, 1, 2, 3, 'NOT_TOP3'))) V_Q8_R06_INVALID_CODES = 1.



* [ERROR] Ranking must use positions 1 through 3 when this improvement is placed in the top three.
COMPUTE V_Q8_R06_RANKING = 0.
IF ((NOT MISSING(Q8_R06_1) AND NOT RANGE(Q8_R06_1, 1, 3)) OR (NOT MISSING(Q8_R06_2) AND NOT RANGE(Q8_R06_2, 1, 3)) OR (NOT MISSING(Q8_R06_3) AND NOT RANGE(Q8_R06_3, 1, 3)) OR (NOT MISSING(Q8_R06_NOT_TOP3) AND NOT RANGE(Q8_R06_NOT_TOP3, 1, 3))) V_Q8_R06_RANKING = 1.




* Question Q8_R07.


* [ERROR] Response must be one of the defined top-three ranking codes or Not in Top 3.
COMPUTE V_Q8_R07_INVALID_CODES = 0.
IF ((NOT MISSING(Q8_R07) AND NOT ANY(Q8_R07, 1, 2, 3, 'NOT_TOP3'))) V_Q8_R07_INVALID_CODES = 1.



* [ERROR] Ranking must use positions 1 through 3 when this improvement is placed in the top three.
COMPUTE V_Q8_R07_RANKING = 0.
IF ((NOT MISSING(Q8_R07_1) AND NOT RANGE(Q8_R07_1, 1, 3)) OR (NOT MISSING(Q8_R07_2) AND NOT RANGE(Q8_R07_2, 1, 3)) OR (NOT MISSING(Q8_R07_3) AND NOT RANGE(Q8_R07_3, 1, 3)) OR (NOT MISSING(Q8_R07_NOT_TOP3) AND NOT RANGE(Q8_R07_NOT_TOP3, 1, 3))) V_Q8_R07_RANKING = 1.




* Question Q8_R08.


* [ERROR] Response must be one of the defined top-three ranking codes or Not in Top 3.
COMPUTE V_Q8_R08_INVALID_CODES = 0.
IF ((NOT MISSING(Q8_R08) AND NOT ANY(Q8_R08, 1, 2, 3, 'NOT_TOP3'))) V_Q8_R08_INVALID_CODES = 1.



* [ERROR] Ranking must use positions 1 through 3 when this improvement is placed in the top three.
COMPUTE V_Q8_R08_RANKING = 0.
IF ((NOT MISSING(Q8_R08_1) AND NOT RANGE(Q8_R08_1, 1, 3)) OR (NOT MISSING(Q8_R08_2) AND NOT RANGE(Q8_R08_2, 1, 3)) OR (NOT MISSING(Q8_R08_3) AND NOT RANGE(Q8_R08_3, 1, 3)) OR (NOT MISSING(Q8_R08_NOT_TOP3) AND NOT RANGE(Q8_R08_NOT_TOP3, 1, 3))) V_Q8_R08_RANKING = 1.




* Question Q8_R09.


* [ERROR] Response must be one of the defined top-three ranking codes or Not in Top 3.
COMPUTE V_Q8_R09_INVALID_CODES = 0.
IF ((NOT MISSING(Q8_R09) AND NOT ANY(Q8_R09, 1, 2, 3, 'NOT_TOP3'))) V_Q8_R09_INVALID_CODES = 1.



* [ERROR] Ranking must use positions 1 through 3 when this improvement is placed in the top three.
COMPUTE V_Q8_R09_RANKING = 0.
IF ((NOT MISSING(Q8_R09_1) AND NOT RANGE(Q8_R09_1, 1, 3)) OR (NOT MISSING(Q8_R09_2) AND NOT RANGE(Q8_R09_2, 1, 3)) OR (NOT MISSING(Q8_R09_3) AND NOT RANGE(Q8_R09_3, 1, 3)) OR (NOT MISSING(Q8_R09_NOT_TOP3) AND NOT RANGE(Q8_R09_NOT_TOP3, 1, 3))) V_Q8_R09_RANKING = 1.




* Question Q8_R10.


* [ERROR] Response must be one of the defined top-three ranking codes or Not in Top 3.
COMPUTE V_Q8_R10_INVALID_CODES = 0.
IF ((NOT MISSING(Q8_R10) AND NOT ANY(Q8_R10, 1, 2, 3, 'NOT_TOP3'))) V_Q8_R10_INVALID_CODES = 1.



* [ERROR] Ranking must use positions 1 through 3 when this improvement is placed in the top three.
COMPUTE V_Q8_R10_RANKING = 0.
IF ((NOT MISSING(Q8_R10_1) AND NOT RANGE(Q8_R10_1, 1, 3)) OR (NOT MISSING(Q8_R10_2) AND NOT RANGE(Q8_R10_2, 1, 3)) OR (NOT MISSING(Q8_R10_3) AND NOT RANGE(Q8_R10_3, 1, 3)) OR (NOT MISSING(Q8_R10_NOT_TOP3) AND NOT RANGE(Q8_R10_NOT_TOP3, 1, 3))) V_Q8_R10_RANKING = 1.




* Question Q8_R11.


* [ERROR] Response must be one of the defined top-three ranking codes or Not in Top 3.
COMPUTE V_Q8_R11_INVALID_CODES = 0.
IF ((NOT MISSING(Q8_R11) AND NOT ANY(Q8_R11, 1, 2, 3, 'NOT_TOP3'))) V_Q8_R11_INVALID_CODES = 1.



* [ERROR] Ranking must use positions 1 through 3 when this improvement is placed in the top three.
COMPUTE V_Q8_R11_RANKING = 0.
IF ((NOT MISSING(Q8_R11_1) AND NOT RANGE(Q8_R11_1, 1, 3)) OR (NOT MISSING(Q8_R11_2) AND NOT RANGE(Q8_R11_2, 1, 3)) OR (NOT MISSING(Q8_R11_3) AND NOT RANGE(Q8_R11_3, 1, 3)) OR (NOT MISSING(Q8_R11_NOT_TOP3) AND NOT RANGE(Q8_R11_NOT_TOP3, 1, 3))) V_Q8_R11_RANKING = 1.




* Question Q8_R12.


* [ERROR] Response must be one of the defined top-three ranking codes or Not in Top 3.
COMPUTE V_Q8_R12_INVALID_CODES = 0.
IF ((NOT MISSING(Q8_R12) AND NOT ANY(Q8_R12, 1, 2, 3, 'NOT_TOP3'))) V_Q8_R12_INVALID_CODES = 1.



* [ERROR] Ranking must use positions 1 through 3 when this improvement is placed in the top three.
COMPUTE V_Q8_R12_RANKING = 0.
IF ((NOT MISSING(Q8_R12_1) AND NOT RANGE(Q8_R12_1, 1, 3)) OR (NOT MISSING(Q8_R12_2) AND NOT RANGE(Q8_R12_2, 1, 3)) OR (NOT MISSING(Q8_R12_3) AND NOT RANGE(Q8_R12_3, 1, 3)) OR (NOT MISSING(Q8_R12_NOT_TOP3) AND NOT RANGE(Q8_R12_NOT_TOP3, 1, 3))) V_Q8_R12_RANKING = 1.




* Question Q9_R01.


* [ERROR] Response must use one of the five defined agreement-scale codes.
COMPUTE V_Q9_R01_INVALID_CODES = 0.
IF ((NOT MISSING(Q9_R01) AND NOT ANY(Q9_R01, 1, 2, 3, 4, 5))) V_Q9_R01_INVALID_CODES = 1.




* Question Q9_R02.


* [ERROR] Response must use one of the five defined agreement-scale codes.
COMPUTE V_Q9_R02_INVALID_CODES = 0.
IF ((NOT MISSING(Q9_R02) AND NOT ANY(Q9_R02, 1, 2, 3, 4, 5))) V_Q9_R02_INVALID_CODES = 1.




* Question Q9_R03.


* [ERROR] Response must use one of the five defined agreement-scale codes.
COMPUTE V_Q9_R03_INVALID_CODES = 0.
IF ((NOT MISSING(Q9_R03) AND NOT ANY(Q9_R03, 1, 2, 3, 4, 5))) V_Q9_R03_INVALID_CODES = 1.




* Question Q9_R04.


* [ERROR] Response must use one of the five defined agreement-scale codes.
COMPUTE V_Q9_R04_INVALID_CODES = 0.
IF ((NOT MISSING(Q9_R04) AND NOT ANY(Q9_R04, 1, 2, 3, 4, 5))) V_Q9_R04_INVALID_CODES = 1.




* Question Q9_R05.


* [ERROR] Response must use one of the five defined agreement-scale codes.
COMPUTE V_Q9_R05_INVALID_CODES = 0.
IF ((NOT MISSING(Q9_R05) AND NOT ANY(Q9_R05, 1, 2, 3, 4, 5))) V_Q9_R05_INVALID_CODES = 1.




* Question Q9_R06.


* [ERROR] Response must use one of the five defined agreement-scale codes.
COMPUTE V_Q9_R06_INVALID_CODES = 0.
IF ((NOT MISSING(Q9_R06) AND NOT ANY(Q9_R06, 1, 2, 3, 4, 5))) V_Q9_R06_INVALID_CODES = 1.




* Question Q9_R07.


* [ERROR] Response must use one of the five defined agreement-scale codes.
COMPUTE V_Q9_R07_INVALID_CODES = 0.
IF ((NOT MISSING(Q9_R07) AND NOT ANY(Q9_R07, 1, 2, 3, 4, 5))) V_Q9_R07_INVALID_CODES = 1.




* Question Q9_R08.


* [ERROR] Response must use one of the five defined agreement-scale codes.
COMPUTE V_Q9_R08_INVALID_CODES = 0.
IF ((NOT MISSING(Q9_R08) AND NOT ANY(Q9_R08, 1, 2, 3, 4, 5))) V_Q9_R08_INVALID_CODES = 1.





*===============================================================================.
* SECTION Classification: Classification.
*===============================================================================.

* Question 10.
* No validation generated: The question provides defined age codes, but no canonical variable is supplied for an executable invalid-code check.



* Question 11.
* No validation generated: A numeric range of 1–30 is documented, but no canonical variable is supplied for an executable numeric-range check.



* Question 12.
* No validation generated: The question provides defined gender codes, but no canonical variable is supplied for an executable invalid-code check.



* Question 13.
* No validation generated: No SPSS variable is supplied for this optional single-select classification question; an operational allowed-code check cannot be generated without inventing a variable.



* Question 14.
* No validation generated: No SPSS variable is supplied for this optional single-select classification question; an operational allowed-code check cannot be generated without inventing a variable.



* Question 15.
* No validation generated: No SPSS variable is supplied for this optional single-select classification question; an operational allowed-code check cannot be generated without inventing a variable.



* Question 16.
* No validation generated: No SPSS variable is supplied for this optional single-select classification question; an operational allowed-code check cannot be generated without inventing a variable.



* Question 17.
* No validation generated: No SPSS variable is supplied for this optional single-select classification question; an operational allowed-code check cannot be generated without inventing a variable.



* Question 18_R01.
* No validation generated: No SPSS variable is supplied for this percentage-allocation component; the documented 100% total cannot be operationalized without inventing target variables.



* Question 18_R02.
* No validation generated: No SPSS variable is supplied for this percentage-allocation component; the documented 100% total cannot be operationalized without inventing target variables.



* Question 18_R03.
* No validation generated: No SPSS variable is supplied for this percentage-allocation component; the documented 100% total cannot be operationalized without inventing target variables.



* Question 18_R04.
* No validation generated: No SPSS variable is supplied for this percentage-allocation component; the documented 100% total cannot be operationalized without inventing target variables.



* Question 18_R05.
* No validation generated: No SPSS variable is supplied for this percentage-allocation component; the documented 100% total cannot be operationalized without inventing target variables.



* Question 19.
* No validation generated: Although a numeric range and health-system routing condition are documented, no target SPSS variable or S3 variable is supplied, so the checks cannot be represented without inventing variables.




*===============================================================================.
* SECTION UNMAPPED: Unmapped validations.
*===============================================================================.

* Question 20.
* No validation generated: Although a numeric range and health-system routing condition are documented, no target SPSS variable or S3 variable is supplied, so the checks cannot be represented without inventing variables.



* Question 21.
* No validation generated: Although response codes and health-system routing are documented, no SPSS variable or S3 variable is supplied, so the checks cannot be represented without inventing variables.




*===============================================================================.
* FINAL VALIDATION SUMMARY.
*===============================================================================.
COMPUTE VALIDATION_OVERALL = MAX(V_S1_MANDATORY, V_S1_CODES, V_S1_SCREENOUT, V_S2_MANDATORY, V_S2_CODES, V_S2_SCREENOUT, V_S3_MANDATORY, V_S3_CODES, V_S3_SCREENOUT, V_S4_MANDATORY, V_S4_RANGE, V_S4_SCREENOUT_LOW, V_S4_SCREENOUT_HIGH, V_S5_MANDATORY, V_S5_CODES, V_S5_SCREENOUT, V_S6_MANDATORY, V_S6_CODES, V_S6_SCREENOUT, V_S7_MANDATORY, V_S7_CODES, V_S7_PANEL_SIZE_RANGE, V_S7_PANEL_SIZE_ROUTING, V_S8_1_MANDATORY, V_S8_1_RANGE, V_S8_2_MANDATORY, V_S8_2_RANGE, V_S8_3_MANDATORY, V_S8_3_RANGE, V_S8_4_MANDATORY, V_S8_4_RANGE, V_S8_TOTAL, V_S9_MANDATORY, V_S9_CODES, V_S10_MANDATORY, V_S10_CODES, V_Q1_R01_MANDATORY, V_Q1_R01_RANGE, V_Q1_R02_MANDATORY, V_Q1_R02_RANGE, V_Q1_R03_MANDATORY, V_Q1_R03_RANGE, V_Q1_R04_MANDATORY, V_Q1_R04_RANGE, V_Q1_R05_MANDATORY, V_Q1_R05_RANGE, V_Q1_R06_MANDATORY, V_Q1_R06_RANGE, V_Q1_R07_MANDATORY, V_Q1_R07_RANGE, V_Q1_R08_MANDATORY, V_Q1_R08_RANGE, V_Q1_R09_MANDATORY, V_Q1_R09_RANGE, V_Q1_R10_MANDATORY, V_Q1_R10_RANGE, V_Q1_R11_RANGE, V_Q1_R12_RANGE, V_Q2_R01_RANGE, V_Q2_R02_RANGE, V_Q2_R03_RANGE, V_Q2_R04_RANGE, V_Q2_R05_RANGE, V_Q2_R06_RANGE, V_Q2_R07_RANGE, V_Q2_R08_RANGE, V_Q2_R09_RANGE, V_Q2_R10_RANGE, V_Q2_R11_RANGE, V_Q2_R12_RANGE, V_Q4_R01_INVALID_CODES, V_Q4_R02_INVALID_CODES, V_Q4_R03_INVALID_CODES, V_Q4_R04_INVALID_CODES, V_Q4_R05_INVALID_CODES, V_Q4_R06_INVALID_CODES, V_Q4_R07_INVALID_CODES, V_Q4_R08_INVALID_CODES, V_Q4_R09_INVALID_CODES, V_Q4_R10_INVALID_CODES, V_Q4_R11_INVALID_CODES, V_Q4_R12_INVALID_CODES, V_Q5_R01_INVALID_CODES, V_Q5_R02_INVALID_CODES, V_Q5_R03_INVALID_CODES, V_Q5_R04_INVALID_CODES, V_Q5_R05_INVALID_CODES, V_Q5_R06_INVALID_CODES, V_Q5_R07_INVALID_CODES, V_Q5_R08_INVALID_CODES, V_Q5_R09_INVALID_CODES, V_Q5_R10_INVALID_CODES, V_Q5_R11_INVALID_CODES, V_Q5_R12_INVALID_CODES, V_Q6_R01_INVALID_CODES, V_Q6_R02_INVALID_CODES, V_Q6_R03_INVALID_CODES, V_Q6_R04_INVALID_CODES, V_Q6_R05_INVALID_CODES, V_Q6_R06_INVALID_CODES, V_Q6_R07_INVALID_CODES, V_Q6_R08_INVALID_CODES, V_Q6_R09_INVALID_CODES, V_Q6_R10_INVALID_CODES, V_Q6_R11_INVALID_CODES, V_Q6_R12_INVALID_CODES, V_Q7_R01_A_INVALID_CODES, V_Q7_R01_B_INVALID_CODES, V_Q7_R02_A_INVALID_CODES, V_Q7_R02_B_INVALID_CODES, V_Q7_R03_A_INVALID_CODES, V_Q7_R03_B_INVALID_CODES, V_Q7_R04_A_INVALID_CODES, V_Q7_R04_B_INVALID_CODES, V_Q7_R05_A_INVALID_CODES, V_Q7_R05_B_INVALID_CODES, V_Q7_R06_A_INVALID_CODES, V_Q7_R06_B_INVALID_CODES, V_Q7_R07_A_INVALID_CODES, V_Q7_R07_B_INVALID_CODES, V_Q7_R08_A_INVALID_CODES, V_Q7_R08_B_INVALID_CODES, V_Q7_R09_A_INVALID_CODES, V_Q7_R09_B_INVALID_CODES, V_Q7_R10_A_INVALID_CODES, V_Q7_R10_B_INVALID_CODES, V_Q7_R11_A_INVALID_CODES, V_Q7_R11_B_INVALID_CODES, V_Q7_R12_A_INVALID_CODES, V_Q7_R12_B_INVALID_CODES, V_Q7_R13_A_INVALID_CODES, V_Q7_R13_B_INVALID_CODES, V_Q7_R14_A_INVALID_CODES, V_Q7_R14_B_INVALID_CODES, V_Q7_R15_A_INVALID_CODES, V_Q7_R15_B_INVALID_CODES, V_Q7_R16_A_INVALID_CODES, V_Q7_R16_B_INVALID_CODES, V_Q7_R17_A_INVALID_CODES, V_Q7_R17_B_INVALID_CODES, V_Q7_R18_A_INVALID_CODES, V_Q7_R18_B_INVALID_CODES, V_Q7_R19_A_INVALID_CODES, V_Q7_R19_B_INVALID_CODES, V_Q7_R20_A_INVALID_CODES, V_Q7_R20_B_INVALID_CODES, V_Q8_R01_INVALID_CODES, V_Q8_R01_RANKING, V_Q8_DUPLICATE_RANKINGS, V_Q8_R02_INVALID_CODES, V_Q8_R02_RANKING, V_Q8_R03_INVALID_CODES, V_Q8_R03_RANKING, V_Q8_R04_INVALID_CODES, V_Q8_R04_RANKING, V_Q8_R05_INVALID_CODES, V_Q8_R05_RANKING, V_Q8_R06_INVALID_CODES, V_Q8_R06_RANKING, V_Q8_R07_INVALID_CODES, V_Q8_R07_RANKING, V_Q8_R08_INVALID_CODES, V_Q8_R08_RANKING, V_Q8_R09_INVALID_CODES, V_Q8_R09_RANKING, V_Q8_R10_INVALID_CODES, V_Q8_R10_RANKING, V_Q8_R11_INVALID_CODES, V_Q8_R11_RANKING, V_Q8_R12_INVALID_CODES, V_Q8_R12_RANKING, V_Q9_R01_INVALID_CODES, V_Q9_R02_INVALID_CODES, V_Q9_R03_INVALID_CODES, V_Q9_R04_INVALID_CODES, V_Q9_R05_INVALID_CODES, V_Q9_R06_INVALID_CODES, V_Q9_R07_INVALID_CODES, V_Q9_R08_INVALID_CODES).
FREQUENCIES VARIABLES=V_S1_MANDATORY V_S1_CODES V_S1_SCREENOUT V_S2_MANDATORY V_S2_CODES V_S2_SCREENOUT V_S3_MANDATORY V_S3_CODES V_S3_SCREENOUT V_S4_MANDATORY V_S4_RANGE V_S4_SCREENOUT_LOW V_S4_SCREENOUT_HIGH V_S5_MANDATORY V_S5_CODES V_S5_SCREENOUT V_S6_MANDATORY V_S6_CODES V_S6_SCREENOUT V_S7_MANDATORY V_S7_CODES V_S7_PANEL_SIZE_RANGE V_S7_PANEL_SIZE_ROUTING V_S8_1_MANDATORY V_S8_1_RANGE V_S8_2_MANDATORY V_S8_2_RANGE V_S8_3_MANDATORY V_S8_3_RANGE V_S8_4_MANDATORY V_S8_4_RANGE V_S8_TOTAL V_S9_MANDATORY V_S9_CODES V_S10_MANDATORY V_S10_CODES V_Q1_R01_MANDATORY V_Q1_R01_RANGE V_Q1_R02_MANDATORY V_Q1_R02_RANGE V_Q1_R03_MANDATORY V_Q1_R03_RANGE V_Q1_R04_MANDATORY V_Q1_R04_RANGE V_Q1_R05_MANDATORY V_Q1_R05_RANGE V_Q1_R06_MANDATORY V_Q1_R06_RANGE V_Q1_R07_MANDATORY V_Q1_R07_RANGE V_Q1_R08_MANDATORY V_Q1_R08_RANGE V_Q1_R09_MANDATORY V_Q1_R09_RANGE V_Q1_R10_MANDATORY V_Q1_R10_RANGE V_Q1_R11_RANGE V_Q1_R12_RANGE V_Q2_R01_RANGE V_Q2_R02_RANGE V_Q2_R03_RANGE V_Q2_R04_RANGE V_Q2_R05_RANGE V_Q2_R06_RANGE V_Q2_R07_RANGE V_Q2_R08_RANGE V_Q2_R09_RANGE V_Q2_R10_RANGE V_Q2_R11_RANGE V_Q2_R12_RANGE V_Q4_R01_INVALID_CODES V_Q4_R02_INVALID_CODES V_Q4_R03_INVALID_CODES V_Q4_R04_INVALID_CODES V_Q4_R05_INVALID_CODES V_Q4_R06_INVALID_CODES V_Q4_R07_INVALID_CODES V_Q4_R08_INVALID_CODES V_Q4_R09_INVALID_CODES V_Q4_R10_INVALID_CODES V_Q4_R11_INVALID_CODES V_Q4_R12_INVALID_CODES V_Q5_R01_INVALID_CODES V_Q5_R02_INVALID_CODES V_Q5_R03_INVALID_CODES V_Q5_R04_INVALID_CODES V_Q5_R05_INVALID_CODES V_Q5_R06_INVALID_CODES V_Q5_R07_INVALID_CODES V_Q5_R08_INVALID_CODES V_Q5_R09_INVALID_CODES V_Q5_R10_INVALID_CODES V_Q5_R11_INVALID_CODES V_Q5_R12_INVALID_CODES V_Q6_R01_INVALID_CODES V_Q6_R02_INVALID_CODES V_Q6_R03_INVALID_CODES V_Q6_R04_INVALID_CODES V_Q6_R05_INVALID_CODES V_Q6_R06_INVALID_CODES V_Q6_R07_INVALID_CODES V_Q6_R08_INVALID_CODES V_Q6_R09_INVALID_CODES V_Q6_R10_INVALID_CODES V_Q6_R11_INVALID_CODES V_Q6_R12_INVALID_CODES V_Q7_R01_A_INVALID_CODES V_Q7_R01_B_INVALID_CODES V_Q7_R02_A_INVALID_CODES V_Q7_R02_B_INVALID_CODES V_Q7_R03_A_INVALID_CODES V_Q7_R03_B_INVALID_CODES V_Q7_R04_A_INVALID_CODES V_Q7_R04_B_INVALID_CODES V_Q7_R05_A_INVALID_CODES V_Q7_R05_B_INVALID_CODES V_Q7_R06_A_INVALID_CODES V_Q7_R06_B_INVALID_CODES V_Q7_R07_A_INVALID_CODES V_Q7_R07_B_INVALID_CODES V_Q7_R08_A_INVALID_CODES V_Q7_R08_B_INVALID_CODES V_Q7_R09_A_INVALID_CODES V_Q7_R09_B_INVALID_CODES V_Q7_R10_A_INVALID_CODES V_Q7_R10_B_INVALID_CODES V_Q7_R11_A_INVALID_CODES V_Q7_R11_B_INVALID_CODES V_Q7_R12_A_INVALID_CODES V_Q7_R12_B_INVALID_CODES V_Q7_R13_A_INVALID_CODES V_Q7_R13_B_INVALID_CODES V_Q7_R14_A_INVALID_CODES V_Q7_R14_B_INVALID_CODES V_Q7_R15_A_INVALID_CODES V_Q7_R15_B_INVALID_CODES V_Q7_R16_A_INVALID_CODES V_Q7_R16_B_INVALID_CODES V_Q7_R17_A_INVALID_CODES V_Q7_R17_B_INVALID_CODES V_Q7_R18_A_INVALID_CODES V_Q7_R18_B_INVALID_CODES V_Q7_R19_A_INVALID_CODES V_Q7_R19_B_INVALID_CODES V_Q7_R20_A_INVALID_CODES V_Q7_R20_B_INVALID_CODES V_Q8_R01_INVALID_CODES V_Q8_R01_RANKING V_Q8_DUPLICATE_RANKINGS V_Q8_R02_INVALID_CODES V_Q8_R02_RANKING V_Q8_R03_INVALID_CODES V_Q8_R03_RANKING V_Q8_R04_INVALID_CODES V_Q8_R04_RANKING V_Q8_R05_INVALID_CODES V_Q8_R05_RANKING V_Q8_R06_INVALID_CODES V_Q8_R06_RANKING V_Q8_R07_INVALID_CODES V_Q8_R07_RANKING V_Q8_R08_INVALID_CODES V_Q8_R08_RANKING V_Q8_R09_INVALID_CODES V_Q8_R09_RANKING V_Q8_R10_INVALID_CODES V_Q8_R10_RANKING V_Q8_R11_INVALID_CODES V_Q8_R11_RANKING V_Q8_R12_INVALID_CODES V_Q8_R12_RANKING V_Q9_R01_INVALID_CODES V_Q9_R02_INVALID_CODES V_Q9_R03_INVALID_CODES V_Q9_R04_INVALID_CODES V_Q9_R05_INVALID_CODES V_Q9_R06_INVALID_CODES V_Q9_R07_INVALID_CODES V_Q9_R08_INVALID_CODES VALIDATION_OVERALL.

* MODEL WARNINGS.
* The S8 routing condition requiring termination when the sum of Commercial Insurance, Medicare, and Medicaid coverage is below 70% is explicit, but cannot be represented safely with the available structured predicate fields without inventing an expression.
* Q2 range notes contain conflicting lower bounds (1–99 and 0–99); only the consistently supported maximum of 99 was used.
* Q3 range notes contain conflicting ranges (1–99 and 0–199); numeric range validation was omitted.
* Q3_R12 has conflicting numeric range evidence in the supplied source; its range validation was omitted.
* Questions 10, 11, and 12 have no canonical variables; their documented code and range checks were omitted rather than assigned invented variables.
* No question-level SPSS variables were supplied in this batch. Evidence-supported checks requiring target variables or structured routing predicates were therefore omitted rather than inferred.


EXECUTE.
