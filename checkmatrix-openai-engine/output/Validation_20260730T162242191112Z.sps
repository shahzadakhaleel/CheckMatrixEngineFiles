* Encoding: UTF-8.
* Generated deterministically by Survey Programming AI.
* Source: High.docx.
TITLE 'REMINDER: NO TRACKED CHANGES. ONLY MARK-UP'.



*===============================================================================.
* SECTION MAIN: Questionnaire.
*===============================================================================.

* Question V2.
* No validation generated: Internal monitor-list and programming-notes content; not a respondent-facing question.



* Question JF9.


* [ERROR] Response must use a defined participation code.
COMPUTE V_JF9_INVALID_CODES = 0.
IF ((NOT MISSING(JF9) AND NOT ANY(JF9, 1, 2))) V_JF9_INVALID_CODES = 1.



* [ERROR] Terminate respondents who answer Yes to recent related market research participation.
COMPUTE V_JF9_SCREEN_OUT = 0.
IF (JF9 = 1) V_JF9_SCREEN_OUT = 1.




* Question S0A.


* [ERROR] A country selection is required.
COMPUTE V_S0A_MANDATORY = 0.
IF (MISSING(S0A)) V_S0A_MANDATORY = 1.



* [ERROR] Response must use a listed country code.
COMPUTE V_S0A_INVALID_CODES = 0.
IF ((NOT MISSING(S0A) AND NOT ANY(S0A, 1, 2, 3, 4, 5, 6, 7))) V_S0A_INVALID_CODES = 1.




* Question S0B.


* [ERROR] At least one country must be selected.
COMPUTE V_S0B_MANDATORY = 0.
IF (MISSING(S0B)) V_S0B_MANDATORY = 1.



* [ERROR] Selections must use the listed country response codes.
COMPUTE V_S0B_MULTIPLE_RESPONSE = 0.
IF ((NOT MISSING(S0B_1) AND NOT ANY(S0B_1, 0, 1)) OR (NOT MISSING(S0B_2) AND NOT ANY(S0B_2, 0, 1)) OR (NOT MISSING(S0B_3) AND NOT ANY(S0B_3, 0, 1)) OR (NOT MISSING(S0B_4) AND NOT ANY(S0B_4, 0, 1)) OR (NOT MISSING(S0B_5) AND NOT ANY(S0B_5, 0, 1)) OR (NOT MISSING(S0B_6) AND NOT ANY(S0B_6, 0, 1)) OR (NOT MISSING(S0B_7) AND NOT ANY(S0B_7, 0, 1))) V_S0B_MULTIPLE_RESPONSE = 1.




* Question S1.


* [ERROR] A primary specialty or department must be selected.
COMPUTE V_S1_MANDATORY = 0.
IF (MISSING(S1)) V_S1_MANDATORY = 1.



* [ERROR] Response must use a defined specialty or department code.
COMPUTE V_S1_INVALID_CODES = 0.
IF ((NOT MISSING(S1) AND NOT ANY(S1, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 31, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 98))) V_S1_INVALID_CODES = 1.




* Question S1.1.


* [ERROR] A certification status must be selected when this Japan-only question is shown.
COMPUTE V_S1_1_MANDATORY = 0.
IF (MISSING(S1.1)) V_S1_1_MANDATORY = 1.



* [ERROR] Response must use a defined certification-status code.
COMPUTE V_S1_1_INVALID_CODES = 0.
IF ((NOT MISSING(S1.1) AND NOT ANY(S1.1, 1, 2, 3))) V_S1_1_INVALID_CODES = 1.




* Question S2.


* [ERROR] Years in practice must be a whole number from 0 through 75.
!Numeric svar=S2 min=0 max=75.
COMPUTE V_S2_NUMERIC_RANGE = 0.
IF ((NOT MISSING(S2) AND (S2 < 0.0 OR S2 > 75.0))) V_S2_NUMERIC_RANGE = 1.




* Question S3.


* [ERROR] A primary practice setting must be selected when shown.
COMPUTE V_S3_MANDATORY = 0.
IF (MISSING(S3)) V_S3_MANDATORY = 1.



* [ERROR] Response must use a listed practice-setting code.
COMPUTE V_S3_INVALID_CODES = 0.
IF ((NOT MISSING(S3) AND NOT ANY(S3, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11))) V_S3_INVALID_CODES = 1.




* Question S4.


* [ERROR] The monthly patient count is required.
COMPUTE V_S4_MANDATORY = 0.
IF (MISSING(S4)) V_S4_MANDATORY = 1.



* [ERROR] Monthly patient count must be a whole number from 0 through 9999.
!Numeric svar=S4 min=0 max=9999.
COMPUTE V_S4_NUMERIC_RANGE = 0.
IF ((NOT MISSING(S4) AND (S4 < 0.0 OR S4 > 9999.0))) V_S4_NUMERIC_RANGE = 1.




* Question H1A.


* [ERROR] The patient count must be a whole number from 1 through 9999 when the question is shown.
!Numeric svar=H1A min=1 max=9999.
COMPUTE V_H1A_NUMERIC_RANGE = 0.
IF ((NOT MISSING(H1A) AND (H1A < 1.0 OR H1A > 9999.0))) V_H1A_NUMERIC_RANGE = 1.




* Question H1B.


* [ERROR] The H1B allocation must total the H1A patient count.
!Sum_to_var svar=H1B evar=H1A.
COMPUTE V_H1B_SUM_TO_H1A = 0.
IF ((1 = 1) AND NOT MISSING(H1B) AND NOT MISSING(H1A) AND NOT (H1B = H1A)) V_H1B_SUM_TO_H1A = 1.




* Question A1A.


* [ERROR] The patient count must be a whole number from 1 through 9999 when the question is shown.
!Numeric svar=A1A min=1 max=9999.
COMPUTE V_A1A_NUMERIC_RANGE = 0.
IF ((NOT MISSING(A1A) AND (A1A < 1.0 OR A1A > 9999.0))) V_A1A_NUMERIC_RANGE = 1.




* Question A1B.


* [ERROR] The A1B allocation must total the A1A patient count.
!Sum_to_var svar=A1B evar=A1A.
COMPUTE V_A1B_SUM_TO_A1A = 0.
IF ((1 = 1) AND NOT MISSING(A1B) AND NOT MISSING(A1A) AND NOT (A1B = A1A)) V_A1B_SUM_TO_A1A = 1.




* Question S4.1.


* [ERROR] Treatment of pediatric ALL patients must be answered when shown.
COMPUTE V_S4_1_MANDATORY = 0.
IF (MISSING(S4.1)) V_S4_1_MANDATORY = 1.



* [ERROR] Response must be Yes or No.
COMPUTE V_S4_1_INVALID_CODES = 0.
IF ((NOT MISSING(S4.1) AND NOT ANY(S4.1, 1, 2))) V_S4_1_INVALID_CODES = 1.




* Question S4.2.


* [ERROR] The pediatric patient-load category must be selected when shown.
COMPUTE V_S4_2_MANDATORY = 0.
IF (MISSING(S4.2)) V_S4_2_MANDATORY = 1.



* [ERROR] Response must use one of the four defined patient-load categories.
COMPUTE V_S4_2_INVALID_CODES = 0.
IF ((NOT MISSING(S4.2) AND NOT ANY(S4.2, 1, 2, 3, 4))) V_S4_2_INVALID_CODES = 1.




* Question S6.


* [ERROR] Conference selections must use the listed response codes.
!MULTI_B svar=S6 ctr=99.
COMPUTE V_S6_MULTIPLE_RESPONSE = 0.
IF ((NOT MISSING(S6_1) AND NOT ANY(S6_1, 0, 1)) OR (NOT MISSING(S6_2) AND NOT ANY(S6_2, 0, 1)) OR (NOT MISSING(S6_3) AND NOT ANY(S6_3, 0, 1)) OR (NOT MISSING(S6_4) AND NOT ANY(S6_4, 0, 1)) OR (NOT MISSING(S6_5) AND NOT ANY(S6_5, 0, 1)) OR (NOT MISSING(S6_6) AND NOT ANY(S6_6, 0, 1)) OR (NOT MISSING(S6_7) AND NOT ANY(S6_7, 0, 1)) OR (NOT MISSING(S6_8) AND NOT ANY(S6_8, 0, 1)) OR (NOT MISSING(S6_9) AND NOT ANY(S6_9, 0, 1)) OR (NOT MISSING(S6_10) AND NOT ANY(S6_10, 0, 1)) OR (NOT MISSING(S6_11) AND NOT ANY(S6_11, 0, 1)) OR (NOT MISSING(S6_98) AND NOT ANY(S6_98, 0, 1)) OR (NOT MISSING(S6_99) AND NOT ANY(S6_99, 0, 1))) V_S6_MULTIPLE_RESPONSE = 1.



* [ERROR] The no-attendance response must not be selected with any conference response.
COMPUTE V_S6_EXCLUSIVE_99 = 0.
IF (SUM(S6_99) > 0 AND SUM(S6_1, S6_2, S6_3, S6_4, S6_5, S6_6, S6_7, S6_8, S6_9, S6_10, S6_11, S6_98, S6_99) > 1) V_S6_EXCLUSIVE_99 = 1.




* Question S7.


* [ERROR] Each inpatient or outpatient percentage must be from 0 through 100.
!Numeric svar=S7 min=0 max=100.
COMPUTE V_S7_NUMERIC_RANGE = 0.
IF ((NOT MISSING(S7) AND (S7 < 0.0 OR S7 > 100.0))) V_S7_NUMERIC_RANGE = 1.



* [ERROR] Inpatient and outpatient percentages must total 100.
!Sum_to_var svar=S7 ctr=100 opr==.
COMPUTE V_S7_PERCENTAGE_TOTAL = 0.
IF (SUM(S7_1, S7_2) <> 100.0) V_S7_PERCENTAGE_TOTAL = 1.




* Question S7.1.


* [ERROR] Each inpatient or outpatient percentage must be from 0 through 100.
!Numeric svar=S7.1 min=0 max=100.
COMPUTE V_S7_1_NUMERIC_RANGE = 0.
IF ((NOT MISSING(S7.1) AND (S7.1 < 0.0 OR S7.1 > 100.0))) V_S7_1_NUMERIC_RANGE = 1.



* [ERROR] Inpatient and outpatient percentages must total 100.
!Sum_to_var svar=S7.1 ctr=100 opr==.
COMPUTE V_S7_1_PERCENTAGE_TOTAL = 0.
IF (SUM(S7.1_1, S7.1_2) <> 100.0) V_S7_1_PERCENTAGE_TOTAL = 1.




* Question CS1.


* [ERROR] A hospital ranking level must be selected when shown.
COMPUTE V_CS1_MANDATORY = 0.
IF (MISSING(CS1)) V_CS1_MANDATORY = 1.



* [ERROR] Response must use a defined hospital-ranking code.
COMPUTE V_CS1_INVALID_CODES = 0.
IF ((NOT MISSING(CS1) AND NOT ANY(CS1, 1, 2, 3, 4))) V_CS1_INVALID_CODES = 1.




* Question CS2.
* No validation generated: The canonical option data is incomplete and does not provide a reliable complete allowed-code list for this select-one question.



* Question HX1.


* [ERROR] Each NGS testing percentage must be a whole number from 0 through 100.
!Numeric svar=HX1 min=0 max=100.
COMPUTE V_HX1_NUMERIC_RANGE = 0.
IF ((NOT MISSING(HX1) AND (HX1 < 0.0 OR HX1 > 100.0))) V_HX1_NUMERIC_RANGE = 1.




* Question H1.


* [ERROR] Each disease-stage percentage must be from 0 through 100.
!Numeric svar=H1 min=0 max=100.
COMPUTE V_H1_NUMERIC_RANGE = 0.
IF ((NOT MISSING(H1) AND (H1 < 0.0 OR H1 > 100.0))) V_H1_NUMERIC_RANGE = 1.



* [ERROR] Each staging-distribution column must total 100.
!Sum_to_var svar=H1 ctr=100 opr==.
COMPUTE V_H1_PERCENTAGE_TOTAL = 0.
IF (SUM(H1_1, H1_2, H1_3, H1_4) <> 100.0) V_H1_PERCENTAGE_TOTAL = 1.




* Question H2.


* [ERROR] Each treatment-modality percentage must be from 0 through 100.
!Numeric svar=H2 min=0 max=100.
COMPUTE V_H2_NUMERIC_RANGE = 0.
IF ((NOT MISSING(H2) AND (H2 < 0.0 OR H2 > 100.0))) V_H2_NUMERIC_RANGE = 1.



* [ERROR] Each displayed stage-group column must total 100.
!Sum_to_var svar=H2 ctr=100 opr==.
COMPUTE V_H2_PERCENTAGE_TOTAL = 0.
IF (SUM(H2_1, H2_2, H2_3, H2_4, H2_5, H2_6, H2_99) <> 100.0) V_H2_PERCENTAGE_TOTAL = 1.




* Question H3.


* [ERROR] Each HSCT percentage must be from 0 through 100.
!Numeric svar=H3 min=0 max=100.
COMPUTE V_H3_NUMERIC_RANGE = 0.
IF ((NOT MISSING(H3) AND (H3 < 0.0 OR H3 > 100.0))) V_H3_NUMERIC_RANGE = 1.



* [ERROR] Each displayed stage-group column must total 100.
!Sum_to_var svar=H3 ctr=100 opr==.
COMPUTE V_H3_PERCENTAGE_TOTAL = 0.
IF (SUM(H3_1, H3_2) <> 100.0) V_H3_PERCENTAGE_TOTAL = 1.




* Question H5.


* [ERROR] Each eventual-treatment percentage must be from 0 through 100 when the question is shown.
!Numeric svar=H5 min=0 max=100.
COMPUTE V_H5_NUMERIC_RANGE = 0.
IF ((NOT MISSING(H5) AND (H5 < 0.0 OR H5 > 100.0))) V_H5_NUMERIC_RANGE = 1.




* Question H6.


* [ERROR] Duration must be a whole number from 0 to 99 months.
COMPUTE V_H6_NUM_001 = 0.
IF ((NOT MISSING(H6) AND (H6 < 0.0 OR H6 > 99.0))) V_H6_NUM_001 = 1.



* [ERROR] Validate H6 only for stages with patients receiving therapy after No Therapy/Observation.
COMPUTE V_H6_ROUTE_002 = 0.
IF (((H5_1 > 0) AND (MISSING(H6))) OR ((NOT (H5_1 > 0)) AND (NOT MISSING(H6)))) V_H6_ROUTE_002 = 1.




* Question H6.1.


* [ERROR] Response percentages must be whole numbers from 0 to 100.
COMPUTE V_H61_NUM_001 = 0.
IF ((NOT MISSING(H6.1) AND (H6.1 < 0.0 OR H6.1 > 100.0))) V_H61_NUM_001 = 1.



* [ERROR] The timeframe percentages must total 100.
!Sum_to_var svar=H6.1.
COMPUTE V_H61_SUM_002 = 0.
IF (SUM(H6.1_1, H6.1_2, H6.1_3, H6.1_4, H6.1_5, H6.1_6) <> 100.0) V_H61_SUM_002 = 1.




* Question H7.1.


* [ERROR] Treatment percentages must be whole numbers from 0 to 100.
COMPUTE V_H71_NUM_001 = 0.
IF ((NOT MISSING(H7.1) AND (H7.1 < 0.0 OR H7.1 > 100.0))) V_H71_NUM_001 = 1.



* [ERROR] Actual treatment duration must be a whole number from 1 to 99 months when entered.
COMPUTE V_H71_MONTH_002 = 0.
IF ((NOT MISSING(H7.1) AND (H7.1 < 1.0 OR H7.1 > 99.0))) V_H71_MONTH_002 = 1.



* [ERROR] Regimen treatment percentages must total 100.
!Sum_to_var svar=H7.1.
COMPUTE V_H71_SUM_003 = 0.
IF (SUM(H7.1_1, H7.1_2, H7.1_11, H7.1_5, H7.1_6, H7.1_7, H7.1_9, H7.1_12, H7.1_96, H7.1_97, H7.1_98, H7.1_99) <> 100.0) V_H71_SUM_003 = 1.




* Question H7.2.


* [ERROR] Treatment percentages must be whole numbers from 0 to 100.
COMPUTE V_H72_NUM_001 = 0.
IF ((NOT MISSING(H7.2) AND (H7.2 < 0.0 OR H7.2 > 100.0))) V_H72_NUM_001 = 1.



* [ERROR] Actual treatment duration must be a whole number from 1 to 99 months when entered.
COMPUTE V_H72_MONTH_002 = 0.
IF ((NOT MISSING(H7.2) AND (H7.2 < 1.0 OR H7.2 > 99.0))) V_H72_MONTH_002 = 1.



* [ERROR] Regimen treatment percentages must total 100.
!Sum_to_var svar=H7.2.
COMPUTE V_H72_SUM_003 = 0.
IF (SUM(H7.2_1, H7.2_2, H7.2_10, H7.2_4, H7.2_5, H7.2_6, H7.2_96, H7.2_97, H7.2_98, H7.2_99) <> 100.0) V_H72_SUM_003 = 1.




* Question H7.3.


* [ERROR] Treatment percentages must be whole numbers from 0 to 100.
COMPUTE V_H73_NUM_001 = 0.
IF ((NOT MISSING(H7.3) AND (H7.3 < 0.0 OR H7.3 > 100.0))) V_H73_NUM_001 = 1.



* [ERROR] Actual treatment duration must be a whole number from 1 to 99 months when entered.
COMPUTE V_H73_MONTH_002 = 0.
IF ((NOT MISSING(H7.3) AND (H7.3 < 1.0 OR H7.3 > 99.0))) V_H73_MONTH_002 = 1.



* [ERROR] Regimen treatment percentages must total 100.
!Sum_to_var svar=H7.3.
COMPUTE V_H73_SUM_003 = 0.
IF (SUM(H7.3_1, H7.3_2, H7.3_3, H7.3_96, H7.3_97, H7.3_98, H7.3_99) <> 100.0) V_H73_SUM_003 = 1.




* Question H7.4.


* [ERROR] Treatment percentages must be whole numbers from 0 to 100.
COMPUTE V_H74_NUM_001 = 0.
IF ((NOT MISSING(H7.4) AND (H7.4 < 0.0 OR H7.4 > 100.0))) V_H74_NUM_001 = 1.



* [ERROR] Actual treatment duration must be a whole number from 1 to 99 months when entered.
COMPUTE V_H74_MONTH_002 = 0.
IF ((NOT MISSING(H7.4) AND (H7.4 < 1.0 OR H7.4 > 99.0))) V_H74_MONTH_002 = 1.



* [ERROR] Regimen treatment percentages must total 100.
!Sum_to_var svar=H7.4.
COMPUTE V_H74_SUM_003 = 0.
IF (SUM(H7.4_1, H7.4_2, H7.4_5, H7.4_3, H7.4_4, H7.4_96, H7.4_97, H7.4_98, H7.4_99) <> 100.0) V_H74_SUM_003 = 1.




* Question H8.1.


* [ERROR] Treatment percentages must be whole numbers from 0 to 100.
COMPUTE V_H81_NUM_001 = 0.
IF ((NOT MISSING(H8.1) AND (H8.1 < 0.0 OR H8.1 > 100.0))) V_H81_NUM_001 = 1.



* [ERROR] Actual treatment duration must be a whole number from 1 to 99 months when entered.
COMPUTE V_H81_MONTH_002 = 0.
IF ((NOT MISSING(H8.1) AND (H8.1 < 1.0 OR H8.1 > 99.0))) V_H81_MONTH_002 = 1.



* [ERROR] Regimen treatment percentages must total 100.
!Sum_to_var svar=H8.1.
COMPUTE V_H81_SUM_003 = 0.
IF (SUM(H8.1_1, H8.1_2, H8.1_9, H8.1_4, H8.1_5, H8.1_6, H8.1_10, H8.1_96, H8.1_97, H8.1_98, H8.1_99) <> 100.0) V_H81_SUM_003 = 1.




* Question H8.2.


* [ERROR] Treatment percentages must be whole numbers from 0 to 100.
COMPUTE V_H82_NUM_001 = 0.
IF ((NOT MISSING(H8.2) AND (H8.2 < 0.0 OR H8.2 > 100.0))) V_H82_NUM_001 = 1.



* [ERROR] Actual treatment duration must be a whole number from 1 to 99 months when entered.
COMPUTE V_H82_MONTH_002 = 0.
IF ((NOT MISSING(H8.2) AND (H8.2 < 1.0 OR H8.2 > 99.0))) V_H82_MONTH_002 = 1.



* [ERROR] Regimen treatment percentages must total 100.
!Sum_to_var svar=H8.2.
COMPUTE V_H82_SUM_003 = 0.
IF (SUM(H8.2_1, H8.2_2, H8.2_3, H8.2_9, H8.2_5, H8.2_6, H8.2_7, H8.2_96, H8.2_97, H8.2_98, H8.2_99) <> 100.0) V_H82_SUM_003 = 1.




* Question H8.3.


* [ERROR] Treatment percentages must be whole numbers from 0 to 100.
COMPUTE V_H83_NUM_001 = 0.
IF ((NOT MISSING(H8.3) AND (H8.3 < 0.0 OR H8.3 > 100.0))) V_H83_NUM_001 = 1.



* [ERROR] Actual treatment duration must be a whole number from 1 to 99 months when entered.
COMPUTE V_H83_MONTH_002 = 0.
IF ((NOT MISSING(H8.3) AND (H8.3 < 1.0 OR H8.3 > 99.0))) V_H83_MONTH_002 = 1.



* [ERROR] Regimen treatment percentages must total 100.
!Sum_to_var svar=H8.3.
COMPUTE V_H83_SUM_003 = 0.
IF (SUM(H8.3_1, H8.3_2, H8.3_3, H8.3_96, H8.3_97, H8.3_98, H8.3_99) <> 100.0) V_H83_SUM_003 = 1.




* Question H8.4.


* [ERROR] Treatment percentages must be whole numbers from 0 to 100.
COMPUTE V_H84_NUM_001 = 0.
IF ((NOT MISSING(H8.4) AND (H8.4 < 0.0 OR H8.4 > 100.0))) V_H84_NUM_001 = 1.



* [ERROR] Actual treatment duration must be a whole number from 1 to 99 months when entered.
COMPUTE V_H84_MONTH_002 = 0.
IF ((NOT MISSING(H8.4) AND (H8.4 < 1.0 OR H8.4 > 99.0))) V_H84_MONTH_002 = 1.



* [ERROR] Regimen treatment percentages must total 100.
!Sum_to_var svar=H8.4.
COMPUTE V_H84_SUM_003 = 0.
IF (SUM(H8.4_1, H8.4_2, H8.4_5, H8.4_6, H8.4_3, H8.4_4, H8.4_96, H8.4_97, H8.4_98, H8.4_99) <> 100.0) V_H84_SUM_003 = 1.




* Question H8.AX.


* [ERROR] Assessment percentages must be whole numbers from 0 to 100.
COMPUTE V_H8AX_NUM_001 = 0.
IF ((NOT MISSING(H8.AX) AND (H8.AX < 0.0 OR H8.AX > 100.0))) V_H8AX_NUM_001 = 1.



* [ERROR] ABVD assessment and non-assessment percentages must total 100.
!Sum_to_var svar=H8.AX.
COMPUTE V_H8AX_SUM_002 = 0.
IF (SUM(H8.AX) <> 100.0) V_H8AX_SUM_002 = 1.




* Question H8.A.


* [ERROR] Complete the regimen utilization information when the question is displayed.
COMPUTE V_H8A_MAND_001 = 0.
IF (MISSING(H8.A)) V_H8A_MAND_001 = 1.




* Question H9.


* [ERROR] Outcome percentages must be whole numbers from 0 to 100.
COMPUTE V_H9_NUM_001 = 0.
IF ((NOT MISSING(H9) AND (H9 < 0.0 OR H9 > 100.0))) V_H9_NUM_001 = 1.



* [ERROR] The treatment outcome percentages must total 100.
!Sum_to_var svar=H9.
COMPUTE V_H9_SUM_002 = 0.
IF (SUM(H9_4, H9_2, H9_3, H9_1) <> 100.0) V_H9_SUM_002 = 1.




* Question H10.


* [ERROR] Timing percentages must be whole numbers from 0 to 100.
COMPUTE V_H10_NUM_001 = 0.
IF ((NOT MISSING(H10) AND (H10 < 0.0 OR H10 > 100.0))) V_H10_NUM_001 = 1.



* [ERROR] Second-line initiation timing percentages must total 100.
!Sum_to_var svar=H10.
COMPUTE V_H10_SUM_002 = 0.
IF (SUM(H10_1, H10_2, H10_3) <> 100.0) V_H10_SUM_002 = 1.




* Question H11.


* [ERROR] Second-line modality percentages must be whole numbers from 0 to 100.
COMPUTE V_H11_NUM_001 = 0.
IF ((NOT MISSING(H11) AND (H11 < 0.0 OR H11 > 100.0))) V_H11_NUM_001 = 1.



* [ERROR] Second-line modality percentages must total 100.
!Sum_to_var svar=H11.
COMPUTE V_H11_SUM_002 = 0.
IF (SUM(H11_2, H11_3, H11_4, H11_5, H11_6, H11_99) <> 100.0) V_H11_SUM_002 = 1.




* Question H12.


* [ERROR] HSCT type percentages must be whole numbers from 0 to 100.
COMPUTE V_H12_NUM_001 = 0.
IF ((NOT MISSING(H12) AND (H12 < 0.0 OR H12 > 100.0))) V_H12_NUM_001 = 1.



* [ERROR] HSCT type percentages must total 100.
!Sum_to_var svar=H12.
COMPUTE V_H12_SUM_002 = 0.
IF (SUM(H12_1, H12_2) <> 100.0) V_H12_SUM_002 = 1.




* Question H20.1.


* [ERROR] Regimen percentages must be whole numbers from 0 to 100.
COMPUTE V_H201_NUM_001 = 0.
IF ((NOT MISSING(H20.1) AND (H20.1 < 0.0 OR H20.1 > 100.0))) V_H201_NUM_001 = 1.



* [ERROR] Actual regimen duration must be a whole number from 1 to 99 months when entered.
COMPUTE V_H201_MONTH_002 = 0.
IF ((NOT MISSING(H20.1) AND (H20.1 < 1.0 OR H20.1 > 99.0))) V_H201_MONTH_002 = 1.



* [ERROR] Second-line regimen percentages must total 100.
!Sum_to_var svar=H20.1.
COMPUTE V_H201_SUM_003 = 0.
IF (SUM(H20.1_1, H20.1_2, H20.1_3, H20.1_4, H20.1_17, H20.1_5, H20.1_8, H20.1_9, H20.1_11, H20.1_12, H20.1_13, H20.1_18, H20.1_19, H20.1_20, H20.1_21, H20.1_14, H20.1_15, H20.1_96, H20.1_97, H20.1_98, H20.1_99) <> 100.0) V_H201_SUM_003 = 1.




* Question H20.2.


* [ERROR] Regimen percentages must be whole numbers from 0 to 100.
COMPUTE V_H202_NUM_001 = 0.
IF ((NOT MISSING(H20.2) AND (H20.2 < 0.0 OR H20.2 > 100.0))) V_H202_NUM_001 = 1.



* [ERROR] Actual regimen duration must be a whole number from 1 to 99 months when entered.
COMPUTE V_H202_MONTH_002 = 0.
IF ((NOT MISSING(H20.2) AND (H20.2 < 1.0 OR H20.2 > 99.0))) V_H202_MONTH_002 = 1.



* [ERROR] Second-line regimen percentages must total 100.
!Sum_to_var svar=H20.2.
COMPUTE V_H202_SUM_003 = 0.
IF (SUM(H20.2_1, H20.2_2, H20.2_3, H20.2_4, H20.2_25, H20.2_5, H20.2_6, H20.2_7, H20.2_10, H20.2_11, H20.2_13, H20.2_14, H20.2_15, H20.2_21, H20.2_16, H20.2_17, H20.2_22, H20.2_23, H20.2_24, H20.2_18, H20.2_19, H20.2_96, H20.2_97, H20.2_98, H20.2_99) <> 100.0) V_H202_SUM_003 = 1.




* Question H20.3.


* [ERROR] Regimen percentages must be whole numbers from 0 to 100.
COMPUTE V_H203_NUM_001 = 0.
IF ((NOT MISSING(H20.3) AND (H20.3 < 0.0 OR H20.3 > 100.0))) V_H203_NUM_001 = 1.



* [ERROR] Actual regimen duration must be a whole number from 1 to 99 months when entered.
COMPUTE V_H203_MONTH_002 = 0.
IF ((NOT MISSING(H20.3) AND (H20.3 < 1.0 OR H20.3 > 99.0))) V_H203_MONTH_002 = 1.



* [ERROR] Second-line regimen percentages must total 100.
!Sum_to_var svar=H20.3.
COMPUTE V_H203_SUM_003 = 0.
IF (SUM(H20.3_1, H20.3_2, H20.3_3, H20.3_4, H20.3_17, H20.3_5, H20.3_6, H20.3_8, H20.3_9, H20.3_10, H20.3_12, H20.3_14, H20.3_15, H20.3_16, H20.3_96, H20.3_97, H20.3_98, H20.3_99) <> 100.0) V_H203_SUM_003 = 1.




* Question H20.4.


* [ERROR] Regimen percentages must be whole numbers from 0 to 100.
COMPUTE V_H204_NUM_001 = 0.
IF ((NOT MISSING(H20.4) AND (H20.4 < 0.0 OR H20.4 > 100.0))) V_H204_NUM_001 = 1.



* [ERROR] Actual regimen duration must be a whole number from 1 to 99 months when entered.
COMPUTE V_H204_MONTH_002 = 0.
IF ((NOT MISSING(H20.4) AND (H20.4 < 1.0 OR H20.4 > 99.0))) V_H204_MONTH_002 = 1.



* [ERROR] Second-line regimen percentages must total 100.
!Sum_to_var svar=H20.4.
COMPUTE V_H204_SUM_003 = 0.
IF (SUM(H20.4_1, H20.4_2, H20.4_3, H20.4_25, H20.4_5, H20.4_6, H20.4_8, H20.4_9, H20.4_10, H20.4_12, H20.4_13, H20.4_15, H20.4_16, H20.4_23, H20.4_17, H20.4_18, H20.4_19, H20.4_20, H20.4_21, H20.4_26, H20.4_22, H20.4_24, H20.4_28, H20.4_95, H20.4_96, H20.4_97, H20.4_98, H20.4_99) <> 100.0) V_H204_SUM_003 = 1.




* Question H20.4A.


* [ERROR] Regimen percentages must be whole numbers from 0 to 100.
COMPUTE V_H204A_NUM_001 = 0.
IF ((NOT MISSING(H20.4A) AND (H20.4A < 0.0 OR H20.4A > 100.0))) V_H204A_NUM_001 = 1.



* [ERROR] Actual regimen duration must be a whole number from 1 to 99 months when entered.
COMPUTE V_H204A_MONTH_002 = 0.
IF ((NOT MISSING(H20.4A) AND (H20.4A < 1.0 OR H20.4A > 99.0))) V_H204A_MONTH_002 = 1.



* [ERROR] Other domestic PD-1 regimen percentages must total 100.
!Sum_to_var svar=H20.4A.
COMPUTE V_H204A_SUM_003 = 0.
IF (SUM(H20.4A_1, H20.4A_2, H20.4A_3) <> 100.0) V_H204A_SUM_003 = 1.




* Question H21.


* [ERROR] Treatment outcome percentages must be whole numbers from 0 to 100.
COMPUTE V_H21_NUM_001 = 0.
IF ((NOT MISSING(H21) AND (H21 < 0.0 OR H21 > 100.0))) V_H21_NUM_001 = 1.



* [ERROR] First-relapsed or refractory treatment outcome percentages must total 100.
!Sum_to_var svar=H21.
COMPUTE V_H21_SUM_002 = 0.
IF (SUM(H21_1, H21_2, H21_3, H21_4) <> 100.0) V_H21_SUM_002 = 1.




* Question H22.


* [ERROR] Third-line initiation timing percentages must be whole numbers from 0 to 100.
COMPUTE V_H22_NUM_001 = 0.
IF ((NOT MISSING(H22) AND (H22 < 0.0 OR H22 > 100.0))) V_H22_NUM_001 = 1.



* [ERROR] Third-line initiation timing percentages must total 100.
!Sum_to_var svar=H22.
COMPUTE V_H22_SUM_002 = 0.
IF (SUM(H22_1, H22_2, H22_3) <> 100.0) V_H22_SUM_002 = 1.




* Question H23.


* [ERROR] Third-line modality percentages must be whole numbers from 0 to 100.
COMPUTE V_H23_NUM_001 = 0.
IF ((NOT MISSING(H23) AND (H23 < 0.0 OR H23 > 100.0))) V_H23_NUM_001 = 1.



* [ERROR] Third-line modality percentages must total 100.
!Sum_to_var svar=H23.
COMPUTE V_H23_SUM_002 = 0.
IF (SUM(H23_2, H23_3, H23_4, H23_5, H23_6, H23_99) <> 100.0) V_H23_SUM_002 = 1.




* Question H24.


* [ERROR] HSCT type percentages must be whole numbers from 0 to 100.
COMPUTE V_H24_NUM_001 = 0.
IF ((NOT MISSING(H24) AND (H24 < 0.0 OR H24 > 100.0))) V_H24_NUM_001 = 1.



* [ERROR] Third-line HSCT type percentages must total 100.
!Sum_to_var svar=H24.
COMPUTE V_H24_SUM_002 = 0.
IF (SUM(H24_1, H24_2) <> 100.0) V_H24_SUM_002 = 1.




* Question H25.1.


* [ERROR] Require the routed third-line regimen allocation response.
COMPUTE V_H25_1_MANDATORY = 0.
IF (MISSING(H25.1)) V_H25_1_MANDATORY = 1.



* [ERROR] Keep regimen percentages between 0 and 100 and treatment months between 1 and 99.
COMPUTE V_H25_1_RANGE = 0.
IF ((NOT MISSING(H25.1) AND (H25.1 < 0.0 OR H25.1 > 100.0))) V_H25_1_RANGE = 1.



* [ERROR] Require the regimen percentage allocation to total 100 percent.
!Sum_to_var svar=H25.1.
COMPUTE V_H25_1_TOTAL = 0.
IF (SUM(H25.1_1, H25.1_2, H25.1_3, H25.1_4, H25.1_17, H25.1_22, H25.1_5, H25.1_6, H25.1_8, H25.1_9, H25.1_11, H25.1_12, H25.1_13, H25.1_18, H25.1_19, H25.1_20, H25.1_21, H25.1_14, H25.1_15, H25.1_96, H25.1_97, H25.1_98, H25.1_99) <> 100.0) V_H25_1_TOTAL = 1.




* Question H25.2.


* [ERROR] Require the routed third-line regimen allocation response.
COMPUTE V_H25_2_MANDATORY = 0.
IF (MISSING(H25.2)) V_H25_2_MANDATORY = 1.



* [ERROR] Keep regimen percentages between 0 and 100 and treatment months between 1 and 99.
COMPUTE V_H25_2_RANGE = 0.
IF ((NOT MISSING(H25.2) AND (H25.2 < 0.0 OR H25.2 > 100.0))) V_H25_2_RANGE = 1.



* [ERROR] Require the regimen percentage allocation to total 100 percent.
!Sum_to_var svar=H25.2.
COMPUTE V_H25_2_TOTAL = 0.
IF (SUM(H25.2_1, H25.2_2, H25.2_3, H25.2_23, H25.2_22, H25.2_4, H25.2_5, H25.2_8, H25.2_9, H25.2_11, H25.2_12, H25.2_13, H25.2_18, H25.2_19, H25.2_20, H25.2_21, H25.2_16, H25.2_17, H25.2_96, H25.2_97, H25.2_98, H25.2_99) <> 100.0) V_H25_2_TOTAL = 1.




* Question H25.3.


* [ERROR] Require the routed third-line regimen allocation response.
COMPUTE V_H25_3_MANDATORY = 0.
IF (MISSING(H25.3)) V_H25_3_MANDATORY = 1.



* [ERROR] Keep regimen percentages between 0 and 100 and treatment months between 1 and 99.
COMPUTE V_H25_3_RANGE = 0.
IF ((NOT MISSING(H25.3) AND (H25.3 < 0.0 OR H25.3 > 100.0))) V_H25_3_RANGE = 1.



* [ERROR] Require the regimen percentage allocation to total 100 percent.
!Sum_to_var svar=H25.3.
COMPUTE V_H25_3_TOTAL = 0.
IF (SUM(H25.3_1, H25.3_2, H25.3_13, H25.3_3, H25.3_4, H25.3_5, H25.3_6, H25.3_7, H25.3_8, H25.3_9, H25.3_10, H25.3_11, H25.3_12, H25.3_96, H25.3_97, H25.3_98, H25.3_99) <> 100.0) V_H25_3_TOTAL = 1.




* Question H25.4.


* [ERROR] Require the routed third-line regimen allocation response.
COMPUTE V_H25_4_MANDATORY = 0.
IF (MISSING(H25.4)) V_H25_4_MANDATORY = 1.



* [ERROR] Keep regimen percentages between 0 and 100 and treatment months between 1 and 99.
COMPUTE V_H25_4_RANGE = 0.
IF ((NOT MISSING(H25.4) AND (H25.4 < 0.0 OR H25.4 > 100.0))) V_H25_4_RANGE = 1.



* [ERROR] Require the regimen percentage allocation to total 100 percent.
!Sum_to_var svar=H25.4.
COMPUTE V_H25_4_TOTAL = 0.
IF (SUM(H25.4_1, H25.4_2, H25.4_3, H25.4_25, H25.4_5, H25.4_6, H25.4_8, H25.4_9, H25.4_10, H25.4_11, H25.4_12, H25.4_13, H25.4_14, H25.4_15, H25.4_16, H25.4_23, H25.4_17, H25.4_18, H25.4_19, H25.4_20, H25.4_21, H25.4_26, H25.4_22, H25.4_24, H25.4_28, H25.4_95, H25.4_96, H25.4_97, H25.4_98, H25.4_99) <> 100.0) V_H25_4_TOTAL = 1.




* Question H25.4A.


* [ERROR] Require the follow-up regimen response when an other domestic PD-1 inhibitor was reported.
COMPUTE V_H25_4A_MANDATORY = 0.
IF (MISSING(H25.4A)) V_H25_4A_MANDATORY = 1.



* [ERROR] Keep follow-up regimen percentages between 0 and 100 and months between 1 and 99.
COMPUTE V_H25_4A_RANGE = 0.
IF ((NOT MISSING(H25.4A) AND (H25.4A < 0.0 OR H25.4A > 100.0))) V_H25_4A_RANGE = 1.



* [ERROR] Require the follow-up regimen percentage allocation to total 100 percent.
!Sum_to_var svar=H25.4A.
COMPUTE V_H25_4A_TOTAL = 0.
IF (SUM(H25.4A_1, H25.4A_2, H25.4A_3) <> 100.0) V_H25_4A_TOTAL = 1.




* Question H26.


* [ERROR] Keep each treatment-outcome percentage between 0 and 100.
COMPUTE V_H26_RANGE = 0.
IF ((NOT MISSING(H26) AND (H26 < 0.0 OR H26 > 100.0))) V_H26_RANGE = 1.



* [ERROR] Require treatment outcomes to total 100 percent.
!Sum_to_var svar=H26.
COMPUTE V_H26_TOTAL = 0.
IF (SUM(H26_1, H26_2, H26_3, H26_4) <> 100.0) V_H26_TOTAL = 1.




* Question H27.


* [ERROR] Keep each response-timing percentage between 0 and 100.
COMPUTE V_H27_RANGE = 0.
IF ((NOT MISSING(H27) AND (H27 < 0.0 OR H27 > 100.0))) V_H27_RANGE = 1.



* [ERROR] Require each applicable therapy-line distribution to total 100 percent.
!Sum_to_var svar=H27.
COMPUTE V_H27_TOTAL = 0.
IF (SUM(H27_1, H27_2, H27_3, H27_4, H27_5) <> 100.0) V_H27_TOTAL = 1.




* Question H13.


* [ERROR] Keep the maintenance-therapy percentage between 0 and 100.
COMPUTE V_H13_RANGE = 0.
IF ((NOT MISSING(H13) AND (H13 < 0.0 OR H13 > 100.0))) V_H13_RANGE = 1.




* Question H14.1.


* [ERROR] Keep maintenance percentages between 0 and 100 and durations between 1 and 99 months.
COMPUTE V_H14_1_RANGE = 0.
IF ((NOT MISSING(H14.1) AND (H14.1 < 0.0 OR H14.1 > 100.0))) V_H14_1_RANGE = 1.



* [ERROR] Require maintenance regimen percentages to total 100 percent.
!Sum_to_var svar=H14.1.
COMPUTE V_H14_1_TOTAL = 0.
IF (SUM(H14.1_1, H14.1_2, H14.1_3, H14.1_4, H14.1_5, H14.1_6, H14.1_7, H14.1_8, H14.1_9, H14.1_10, H14.1_96, H14.1_97, H14.1_98, H14.1_99) <> 100.0) V_H14_1_TOTAL = 1.




* Question H14.2.


* [ERROR] Keep maintenance percentages between 0 and 100 and durations between 1 and 99 months.
COMPUTE V_H14_2_RANGE = 0.
IF ((NOT MISSING(H14.2) AND (H14.2 < 0.0 OR H14.2 > 100.0))) V_H14_2_RANGE = 1.



* [ERROR] Require maintenance regimen percentages to total 100 percent.
!Sum_to_var svar=H14.2.
COMPUTE V_H14_2_TOTAL = 0.
IF (SUM(H14.2_1, H14.2_2, H14.2_3, H14.2_4, H14.2_5, H14.2_6, H14.2_7, H14.2_8, H14.2_9, H14.2_96, H14.2_97, H14.2_98, H14.2_99) <> 100.0) V_H14_2_TOTAL = 1.




* Question H14.3.


* [ERROR] Keep maintenance percentages between 0 and 100 and durations between 1 and 99 months.
COMPUTE V_H14_3_RANGE = 0.
IF ((NOT MISSING(H14.3) AND (H14.3 < 0.0 OR H14.3 > 100.0))) V_H14_3_RANGE = 1.



* [ERROR] Require maintenance regimen percentages to total 100 percent.
!Sum_to_var svar=H14.3.
COMPUTE V_H14_3_TOTAL = 0.
IF (SUM(H14.3_1, H14.3_2, H14.3_3, H14.3_4, H14.3_96, H14.3_97, H14.3_98, H14.3_99) <> 100.0) V_H14_3_TOTAL = 1.




* Question H14.4.


* [ERROR] Keep maintenance percentages between 0 and 100 and durations between 1 and 99 months.
COMPUTE V_H14_4_RANGE = 0.
IF ((NOT MISSING(H14.4) AND (H14.4 < 0.0 OR H14.4 > 100.0))) V_H14_4_RANGE = 1.



* [ERROR] Require maintenance regimen percentages to total 100 percent.
!Sum_to_var svar=H14.4.
COMPUTE V_H14_4_TOTAL = 0.
IF (SUM(H14.4_5, H14.4_2, H14.4_3, H14.4_4, H14.4_96, H14.4_97, H14.4_98, H14.4_99) <> 100.0) V_H14_4_TOTAL = 1.




* Question H28.


* [ERROR] Keep each response percentage between 0 and 100.
COMPUTE V_H28_RANGE = 0.
IF ((NOT MISSING(H28) AND (H28 < 0.0 OR H28 > 100.0))) V_H28_RANGE = 1.



* [ERROR] Require each applicable stage-group response distribution to total 100 percent.
!Sum_to_var svar=H28.
COMPUTE V_H28_TOTAL = 0.
IF (SUM(H28_1, H28_2, H28_3, H28_4) <> 100.0) V_H28_TOTAL = 1.




* Question H29.


* [ERROR] Keep progression-free survival estimates between 0 and 99 months.
COMPUTE V_H29_RANGE = 0.
IF ((NOT MISSING(H29) AND (H29 < 0.0 OR H29 > 99.0))) V_H29_RANGE = 1.




* Question H30.


* [ERROR] Keep each later-line response percentage between 0 and 100.
COMPUTE V_H30_RANGE = 0.
IF ((NOT MISSING(H30) AND (H30 < 0.0 OR H30 > 100.0))) V_H30_RANGE = 1.



* [ERROR] Require each applicable later-line response distribution to total 100 percent.
!Sum_to_var svar=H30.
COMPUTE V_H30_TOTAL = 0.
IF (SUM(H30_1, H30_2, H30_3, H30_4) <> 100.0) V_H30_TOTAL = 1.




* Question H31.


* [ERROR] Keep later-line progression-free survival estimates between 0 and 99 months.
COMPUTE V_H31_RANGE = 0.
IF ((NOT MISSING(H31) AND (H31 < 0.0 OR H31 > 99.0))) V_H31_RANGE = 1.




* Question A1.


* [ERROR] Require the ALL patient age-distribution response.
COMPUTE V_A1_MANDATORY = 0.
IF (MISSING(A1)) V_A1_MANDATORY = 1.



* [ERROR] Keep each age-group percentage between 0 and 100.
COMPUTE V_A1_RANGE = 0.
IF ((NOT MISSING(A1) AND (A1 < 0.0 OR A1 > 100.0))) V_A1_RANGE = 1.



* [ERROR] Require the applicable age distribution to total 100 percent.
!Sum_to_var svar=A1.
COMPUTE V_A1_TOTAL = 0.
IF (SUM(A1_1, A1_3, A1_2, A1_4) <> 100.0) V_A1_TOTAL = 1.




* Question A2.
* No validation generated: Informational parent question; the supplied questionnaire provides no answer fields or validation evidence.



* Question A2_1.
* No validation generated: Placeholder question with no substantive text, response fields, or validation evidence.



* Question A2_2.


* [ERROR] Keep each Philadelphia Chromosome percentage between 0 and 100.
COMPUTE V_A2_2_RANGE = 0.
IF ((NOT MISSING(A2_2) AND (A2_2 < 0.0 OR A2_2 > 100.0))) V_A2_2_RANGE = 1.



* [ERROR] Require each applicable Ph-negative/Ph-positive distribution to total 100 percent.
!Sum_to_var svar=A2_2.
COMPUTE V_A2_2_TOTAL = 0.
IF (SUM(A2_2_1, A2_2_2) <> 100.0) V_A2_2_TOTAL = 1.




* Question A2.1.


* [ERROR] Keep each CD20-testing percentage between 0 and 100.
COMPUTE V_A2_1_RANGE = 0.
IF ((NOT MISSING(A2.1) AND (A2.1 < 0.0 OR A2.1 > 100.0))) V_A2_1_RANGE = 1.



* [ERROR] Require each applicable CD20-testing distribution to total 100 percent.
!Sum_to_var svar=A2.1.
COMPUTE V_A2_1_TOTAL = 0.
IF (SUM(A2.1_1, A2.1_2) <> 100.0) V_A2_1_TOTAL = 1.




* Question X1.1.


* [ERROR] Keep each NGS-testing percentage between 0 and 100.
COMPUTE V_X1_1_RANGE = 0.
IF ((NOT MISSING(X1.1) AND (X1.1 < 0.0 OR X1.1 > 100.0))) V_X1_1_RANGE = 1.




* Question A3.


* [ERROR] Require the Ph-negative ALL initial-therapy allocation response.
COMPUTE V_A3_MANDATORY = 0.
IF (MISSING(A3)) V_A3_MANDATORY = 1.



* [ERROR] Keep each initial-therapy percentage between 0 and 100.
COMPUTE V_A3_RANGE = 0.
IF ((NOT MISSING(A3) AND (A3 < 0.0 OR A3 > 100.0))) V_A3_RANGE = 1.



* [ERROR] Require each applicable initial-therapy distribution to total 100 percent.
!Sum_to_var svar=A3.
COMPUTE V_A3_TOTAL = 0.
IF (SUM(A3_1, A3_2, A3_3, A3_4, A3_5, A3_6, A3_99) <> 100.0) V_A3_TOTAL = 1.




* Question A4.


* [ERROR] Require the HCT-type allocation when applicable.
COMPUTE V_A4_MANDATORY = 0.
IF (MISSING(A4)) V_A4_MANDATORY = 1.



* [ERROR] Keep each HCT-type percentage between 0 and 100.
COMPUTE V_A4_RANGE = 0.
IF ((NOT MISSING(A4) AND (A4 < 0.0 OR A4 > 100.0))) V_A4_RANGE = 1.



* [ERROR] Require each applicable HCT-type distribution to total 100 percent.
!Sum_to_var svar=A4.
COMPUTE V_A4_TOTAL = 0.
IF (SUM(A4_1, A4_2) <> 100.0) V_A4_TOTAL = 1.




* Question A5.


* [ERROR] Keep the eventual-treatment percentage between 0 and 100.
COMPUTE V_A5_RANGE = 0.
IF ((NOT MISSING(A5) AND (A5 < 0.0 OR A5 > 100.0))) V_A5_RANGE = 1.




* Question A6.


* [ERROR] Duration must be a whole number from 0 to 99 months.
COMPUTE V_A6_R1 = 0.
IF ((NOT MISSING(A6) AND (A6 < 0.0 OR A6 > 99.0))) V_A6_R1 = 1.




* Question A7.


* [ERROR] Displayed response cells must be completed when the corresponding patient group is shown.
COMPUTE V_A7_R1 = 0.
IF (MISSING(A7)) V_A7_R1 = 1.



* [ERROR] Each percentage must be a whole number from 0 to 100.
COMPUTE V_A7_R2 = 0.
IF ((NOT MISSING(A7) AND (A7 < 0.0 OR A7 > 100.0))) V_A7_R2 = 1.



* [ERROR] The response percentages in each displayed patient-group column must total 100%.
!Sum_to_var svar=A7.
COMPUTE V_A7_R3 = 0.
IF (SUM(A7_1, A7_2, A7_3, A7_4, A7_5) <> 100.0) V_A7_R3 = 1.




* Question A10.


* [ERROR] Each percentage must be a whole number from 0 to 100.
COMPUTE V_A10_R1 = 0.
IF ((NOT MISSING(A10) AND (A10 < 0.0 OR A10 > 100.0))) V_A10_R1 = 1.




* Question A11.1.


* [ERROR] The displayed percentage-of-patients column must total 100%.
!Sum_to_var svar=A11.1.
COMPUTE V_A11_1_R1 = 0.
IF (SUM(A11.1) <> 100.0) V_A11_1_R1 = 1.




* Question A11.1_1.
* No validation generated: This is an unlabeled structural placeholder with no response scale, range, or validation instruction.



* Question A11.1_2.


* [ERROR] Each displayed percentage-of-patients column must total 100%.
!Sum_to_var svar=A11.1_2.
COMPUTE V_A11_1_2_R2 = 0.
IF (SUM(A11.1_2_26, A11.1_2_27, A11.1_2_28, A11.1_2_29, A11.1_2_30, A11.1_2_31, A11.1_2_32, A11.1_2_33, A11.1_2_34, A11.1_2_35, A11.1_2_36, A11.1_2_37, A11.1_2_38, A11.1_2_96, A11.1_2_97, A11.1_2_98, A11.1_2_99) <> 100.0) V_A11_1_2_R2 = 1.




* Question A11.2.


* [ERROR] The displayed percentage-of-patients column must total 100%.
!Sum_to_var svar=A11.2.
COMPUTE V_A11_2_R1 = 0.
IF (SUM(A11.2) <> 100.0) V_A11_2_R1 = 1.




* Question A11.2_1.
* No validation generated: This is an unlabeled structural placeholder with no response scale, range, or validation instruction.



* Question A11.2_2.


* [ERROR] Each displayed percentage-of-patients column must total 100%.
!Sum_to_var svar=A11.2_2.
COMPUTE V_A11_2_2_R2 = 0.
IF (SUM(A11.2_2_2, A11.2_2_19, A11.2_2_15, A11.2_2_3, A11.2_2_4, A11.2_2_16, A11.2_2_7, A11.2_2_20, A11.2_2_11, A11.2_2_17, A11.2_2_12, A11.2_2_14, A11.2_2_18, A11.2_2_96, A11.2_2_97, A11.2_2_98, A11.2_2_99) <> 100.0) V_A11_2_2_R2 = 1.




* Question A11.3.


* [ERROR] The displayed percentage-of-patients column must total 100%.
!Sum_to_var svar=A11.3.
COMPUTE V_A11_3_R1 = 0.
IF (SUM(A11.3) <> 100.0) V_A11_3_R1 = 1.




* Question A11.3_1.
* No validation generated: This is an unlabeled structural placeholder with no response scale, range, or validation instruction.



* Question A11.3_2.


* [ERROR] Each displayed percentage-of-patients column must total 100%.
!Sum_to_var svar=A11.3_2.
COMPUTE V_A11_3_2_R2 = 0.
IF (SUM(A11.3_2_1, A11.3_2_2, A11.3_2_16, A11.3_2_5, A11.3_2_6, A11.3_2_8, A11.3_2_9, A11.3_2_10, A11.3_2_17, A11.3_2_12, A11.3_2_13, A11.3_2_96, A11.3_2_97, A11.3_2_98, A11.3_2_99) <> 100.0) V_A11_3_2_R2 = 1.




* Question A11.4.


* [ERROR] The displayed percentage-of-patients column must total 100%.
!Sum_to_var svar=A11.4.
COMPUTE V_A11_4_R1 = 0.
IF (SUM(A11.4) <> 100.0) V_A11_4_R1 = 1.




* Question A11.4_1.
* No validation generated: This is an unlabeled structural placeholder with no response scale, range, or validation instruction.



* Question A11.4_2.


* [ERROR] Each displayed percentage-of-patients column must total 100%.
!Sum_to_var svar=A11.4_2.
COMPUTE V_A11_4_2_R2 = 0.
IF (SUM(A11.4_2_1, A11.4_2_2, A11.4_2_5, A11.4_2_17, A11.4_2_18, A11.4_2_19, A11.4_2_6, A11.4_2_8, A11.4_2_9, A11.4_2_10, A11.4_2_11, A11.4_2_25, A11.4_2_12, A11.4_2_20, A11.4_2_13, A11.4_2_21, A11.4_2_22, A11.4_2_23, A11.4_2_14, A11.4_2_24, A11.4_2_96, A11.4_2_97, A11.4_2_98, A11.4_2_99) <> 100.0) V_A11_4_2_R2 = 1.




* Question A11A.


* [ERROR] Each outcome percentage must be a whole number from 0 to 100.
COMPUTE V_A11A_R2 = 0.
IF ((NOT MISSING(A11A) AND (A11A < 0.0 OR A11A > 100.0))) V_A11A_R2 = 1.



* [ERROR] The two outcome percentages in each displayed column must total 100%.
!Sum_to_var svar=A11A.
COMPUTE V_A11A_R3 = 0.
IF (SUM(A11A_1, A11A_2) <> 100.0) V_A11A_R3 = 1.




* Question A12A.


* [ERROR] Percent tested for MRD must be a whole number from 0 to 100.
COMPUTE V_A12A_R1 = 0.
IF ((NOT MISSING(A12A) AND (A12A < 0.0 OR A12A > 100.0))) V_A12A_R1 = 1.




* Question A12.


* [ERROR] The MRD-negative percentage must be a whole number from 0 to 100.
COMPUTE V_A12_R1 = 0.
IF ((NOT MISSING(A12) AND (A12 < 0.0 OR A12 > 100.0))) V_A12_R1 = 1.




* Question A12.1.


* [ERROR] The displayed percentage-of-patients column must total 100%.
!Sum_to_var svar=A12.1.
COMPUTE V_A12_1_R1 = 0.
IF (SUM(A12.1) <> 100.0) V_A12_1_R1 = 1.




* Question A12.1_1.
* No validation generated: This is an unlabeled structural placeholder with no response scale, range, or validation instruction.



* Question A12.1_2.


* [ERROR] Displayed consolidation regimen entries are required when the relevant patient group is shown.
COMPUTE V_A12_1_2_R1 = 0.
IF (MISSING(A12.1_2)) V_A12_1_2_R1 = 1.



* [ERROR] Each displayed percentage-of-patients column must total 100%.
!Sum_to_var svar=A12.1_2.
COMPUTE V_A12_1_2_R2 = 0.
IF (SUM(A12.1_2_38, A12.1_2_39, A12.1_2_40, A12.1_2_41, A12.1_2_42, A12.1_2_43, A12.1_2_44, A12.1_2_45, A12.1_2_46, A12.1_2_47, A12.1_2_48, A12.1_2_49, A12.1_2_50, A12.1_2_51, A12.1_2_52, A12.1_2_53, A12.1_2_54, A12.1_2_55, A12.1_2_56, A12.1_2_57, A12.1_2_58, A12.1_2_59, A12.1_2_60, A12.1_2_96, A12.1_2_97, A12.1_2_98, A12.1_2_99) <> 100.0) V_A12_1_2_R2 = 1.




* Question A12.2.


* [ERROR] The displayed percentage-of-patients column must total 100%.
!Sum_to_var svar=A12.2.
COMPUTE V_A12_2_R1 = 0.
IF (SUM(A12.2) <> 100.0) V_A12_2_R1 = 1.




* Question A12.2_1.
* No validation generated: This is an unlabeled structural placeholder with no response scale, range, or validation instruction.



* Question A12.2_2.


* [ERROR] Displayed consolidation regimen entries are required when the relevant patient group is shown.
COMPUTE V_A12_2_2_R1 = 0.
IF (MISSING(A12.2_2)) V_A12_2_2_R1 = 1.



* [ERROR] Each displayed percentage-of-patients column must total 100%.
!Sum_to_var svar=A12.2_2.
COMPUTE V_A12_2_2_R2 = 0.
IF (SUM(A12.2_2_2, A12.2_2_22, A12.2_2_23, A12.2_2_24, A12.2_2_25, A12.2_2_26, A12.2_2_27, A12.2_2_28, A12.2_2_29, A12.2_2_3, A12.2_2_4, A12.2_2_6, A12.2_2_7, A12.2_2_8, A12.2_2_10, A12.2_2_13, A12.2_2_14, A12.2_2_21, A12.2_2_16, A12.2_2_19, A12.2_2_20, A12.2_2_96, A12.2_2_97, A12.2_2_98, A12.2_2_99) <> 100.0) V_A12_2_2_R2 = 1.




* Question A12.3.


* [ERROR] The displayed percentage-of-patients column must total 100%.
!Sum_to_var svar=A12.3.
COMPUTE V_A12_3_R1 = 0.
IF (SUM(A12.3) <> 100.0) V_A12_3_R1 = 1.




* Question A12.3_1.
* No validation generated: Canonical item contains no response definition, options, range, or other validation evidence.



* Question A12.3_2.


* [ERROR] Require the regimen allocation grid response when displayed.
COMPUTE V_A12_3_2_MANDATORY = 0.
IF (MISSING(A12.3_2)) V_A12_3_2_MANDATORY = 1.



* [ERROR] Require the regimen percentage allocation to total 100 percent.
!Sum_to_var myvars=A12.3_2.
COMPUTE V_A12_3_2_TOTAL = 0.
IF (SUM(A12.3_2_1, A12.3_2_2, A12.3_2_21, A12.3_2_22, A12.3_2_23, A12.3_2_24, A12.3_2_25, A12.3_2_26, A12.3_2_3, A12.3_2_4, A12.3_2_5, A12.3_2_6, A12.3_2_7, A12.3_2_10, A12.3_2_14, A12.3_2_27, A12.3_2_17, A12.3_2_28, A12.3_2_29, A12.3_2_19, A12.3_2_20, A12.3_2_96, A12.3_2_97, A12.3_2_98, A12.3_2_99) <> 100.0) V_A12_3_2_TOTAL = 1.




* Question A12.4.
* No validation generated: This is a question-level grid description; the response cells and their canonical variables are supplied under A12.4_1 and A12.4_2.



* Question A12.4_1.
* No validation generated: Canonical item contains no response definition, options, range, or other validation evidence.



* Question A12.4_2.


* [ERROR] Require the consolidation regimen grid response when displayed.
COMPUTE V_A12_4_2_MANDATORY = 0.
IF (MISSING(A12.4_2)) V_A12_4_2_MANDATORY = 1.



* [ERROR] Require the consolidation regimen percentage allocation to total 100 percent.
!Sum_to_var myvars=A12.4_2.
COMPUTE V_A12_4_2_TOTAL = 0.
IF (SUM(A12.4_2_1, A12.4_2_2, A12.4_2_23, A12.4_2_24, A12.4_2_3, A12.4_2_4, A12.4_2_5, A12.4_2_6, A12.4_2_25, A12.4_2_26, A12.4_2_27, A12.4_2_28, A12.4_2_29, A12.4_2_30, A12.4_2_31, A12.4_2_32, A12.4_2_33, A12.4_2_7, A12.4_2_10, A12.4_2_11, A12.4_2_12, A12.4_2_13, A12.4_2_14, A12.4_2_15, A12.4_2_34, A12.4_2_16, A12.4_2_21, A12.4_2_17, A12.4_2_22, A12.4_2_35, A12.4_2_19, A12.4_2_36, A12.4_2_20, A12.4_2_37, A12.4_2_96, A12.4_2_97, A12.4_2_98, A12.4_2_99) <> 100.0) V_A12_4_2_TOTAL = 1.




* Question A12.1A.
* No validation generated: The numeric range applies to two conditionally displayed embedded cells, but the canonical item does not identify separate target variables for those cells.



* Question A13.1.
* No validation generated: This is a question-level grid description; the response cells and their canonical variables are supplied under A13.1_1 and A13.1_2.



* Question A13.1_1.
* No validation generated: Canonical item contains no response definition, options, range, or other validation evidence.



* Question A13.1_2.


* [ERROR] Require the CNS prophylaxis regimen grid response when displayed.
COMPUTE V_A13_1_2_MANDATORY = 0.
IF (MISSING(A13.1_2)) V_A13_1_2_MANDATORY = 1.



* [ERROR] Require the CNS prophylaxis percentage allocation to total 100 percent.
!Sum_to_var myvars=A13.1_2.
COMPUTE V_A13_1_2_TOTAL = 0.
IF (SUM(A13.1_2_8, A13.1_2_21, A13.1_2_19, A13.1_2_20, A13.1_2_10, A13.1_2_22, A13.1_2_23, A13.1_2_24, A13.1_2_25, A13.1_2_96, A13.1_2_97, A13.1_2_98, A13.1_2_99) <> 100.0) V_A13_1_2_TOTAL = 1.




* Question A13.2.
* No validation generated: This is a question-level grid description; the response cells and their canonical variables are supplied under A13.2_1 and A13.2_2.



* Question A13.2_1.
* No validation generated: Canonical item contains no response definition, options, range, or other validation evidence.



* Question A13.2_2.


* [ERROR] Require the CNS prophylaxis regimen grid response when displayed.
COMPUTE V_A13_2_2_MANDATORY = 0.
IF (MISSING(A13.2_2)) V_A13_2_2_MANDATORY = 1.



* [ERROR] Require the CNS prophylaxis percentage allocation to total 100 percent.
!Sum_to_var myvars=A13.2_2.
COMPUTE V_A13_2_2_TOTAL = 0.
IF (SUM(A13.2_2_8, A13.2_2_22, A13.2_2_20, A13.2_2_21, A13.2_2_10, A13.2_2_23, A13.2_2_24, A13.2_2_25, A13.2_2_26, A13.2_2_96, A13.2_2_97, A13.2_2_98, A13.2_2_99) <> 100.0) V_A13_2_2_TOTAL = 1.




* Question A13.3.
* No validation generated: This is a question-level grid description; the response cells and their canonical variables are supplied under A13.3_1 and A13.3_2.



* Question A13.3_1.
* No validation generated: Canonical item contains no response definition, options, range, or other validation evidence.



* Question A13.3_2.


* [ERROR] Require the CNS prophylaxis regimen grid response when displayed.
COMPUTE V_A13_3_2_MANDATORY = 0.
IF (MISSING(A13.3_2)) V_A13_3_2_MANDATORY = 1.



* [ERROR] Require the CNS prophylaxis percentage allocation to total 100 percent.
!Sum_to_var myvars=A13.3_2.
COMPUTE V_A13_3_2_TOTAL = 0.
IF (SUM(A13.3_2_9, A13.3_2_10, A13.3_2_7, A13.3_2_8, A13.3_2_3, A13.3_2_4, A13.3_2_11, A13.3_2_12, A13.3_2_13, A13.3_2_96, A13.3_2_97, A13.3_2_98, A13.3_2_99) <> 100.0) V_A13_3_2_TOTAL = 1.




* Question A13.4.
* No validation generated: This is a question-level grid description; the response cells and their canonical variables are supplied under A13.4_1 and A13.4_2.



* Question A13.4_1.
* No validation generated: Canonical item contains no response definition, options, range, or other validation evidence.



* Question A13.4_2.


* [ERROR] Require the CNS prophylaxis regimen grid response when displayed.
COMPUTE V_A13_4_2_MANDATORY = 0.
IF (MISSING(A13.4_2)) V_A13_4_2_MANDATORY = 1.



* [ERROR] Require the CNS prophylaxis percentage allocation to total 100 percent.
!Sum_to_var myvars=A13.4_2.
COMPUTE V_A13_4_2_TOTAL = 0.
IF (SUM(A13.4_2_9, A13.4_2_10, A13.4_2_7, A13.4_2_8, A13.4_2_3, A13.4_2_4, A13.4_2_11, A13.4_2_12, A13.4_2_13, A13.4_2_96, A13.4_2_97, A13.4_2_98, A13.4_2_99) <> 100.0) V_A13_4_2_TOTAL = 1.




* Question A14.1.
* No validation generated: This is a question-level grid description; the response cells and their canonical variables are supplied under A14.1_1 and A14.1_2.



* Question A14.1_1.
* No validation generated: Canonical item contains no response definition, options, range, or other validation evidence.



* Question A14.1_2.


* [ERROR] Require the maintenance regimen grid response when displayed.
COMPUTE V_A14_1_2_MANDATORY = 0.
IF (MISSING(A14.1_2)) V_A14_1_2_MANDATORY = 1.



* [ERROR] Require the maintenance regimen percentage allocation to total 100 percent.
!Sum_to_var myvars=A14.1_2.
COMPUTE V_A14_1_2_TOTAL = 0.
IF (SUM(A14.1_2_25, A14.1_2_26, A14.1_2_27, A14.1_2_28, A14.1_2_29, A14.1_2_30, A14.1_2_31, A14.1_2_32, A14.1_2_33, A14.1_2_34, A14.1_2_96, A14.1_2_97, A14.1_2_98, A14.1_2_99) <> 100.0) V_A14_1_2_TOTAL = 1.




* Question A14.2.
* No validation generated: This is a question-level grid description; the response cells and their canonical variables are supplied under A14.2_1 and A14.2_2.



* Question A14.2_1.
* No validation generated: Canonical item contains no response definition, options, range, or other validation evidence.



* Question A14.2_2.


* [ERROR] Require the maintenance regimen grid response when displayed.
COMPUTE V_A14_2_2_MANDATORY = 0.
IF (MISSING(A14.2_2)) V_A14_2_2_MANDATORY = 1.



* [ERROR] Require the maintenance regimen percentage allocation to total 100 percent.
!Sum_to_var myvars=A14.2_2.
COMPUTE V_A14_2_2_TOTAL = 0.
IF (SUM(A14.2_2_13, A14.2_2_22, A14.2_2_18, A14.2_2_23, A14.2_2_19, A14.2_2_24, A14.2_2_96, A14.2_2_97, A14.2_2_98, A14.2_2_99) <> 100.0) V_A14_2_2_TOTAL = 1.




* Question A14.3.
* No validation generated: This is a question-level grid description without a separate canonical response-cell variable supplied in this batch.



* Question A14.3_1.
* No validation generated: Placeholder field with no question text, options, or validation evidence.



* Question A14.3_2.


* [ERROR] Require the regimen grid response when this required question is applicable.
COMPUTE V_A14_3_2_R1 = 0.
IF (MISSING(A14.3_2)) V_A14_3_2_R1 = 1.



* [ERROR] Require the displayed percentage allocations to total 100 percent.
COMPUTE V_A14_3_2_R2 = 0.
IF (SUM(A14.3_2_1, A14.3_2_2, A14.3_2_3, A14.3_2_4, A14.3_2_5, A14.3_2_6, A14.3_2_9, A14.3_2_10, A14.3_2_96, A14.3_2_97, A14.3_2_98, A14.3_2_99) <> 100.0) V_A14_3_2_R2 = 1.




* Question A14.4.


* [ERROR] Require the percentage allocations in the maintenance regimen grid to total 100 percent.
COMPUTE V_A14_4_R1 = 0.
IF (SUM(A14.4) <> 100.0) V_A14_4_R1 = 1.




* Question A14.4_1.
* No validation generated: Placeholder field with no question text, options, or validation evidence.



* Question A14.4_2.


* [ERROR] Require the maintenance regimen grid response when this required question is applicable.
COMPUTE V_A14_4_2_R1 = 0.
IF (MISSING(A14.4_2)) V_A14_4_2_R1 = 1.



* [ERROR] Require the displayed percentage allocations to total 100 percent.
COMPUTE V_A14_4_2_R2 = 0.
IF (SUM(A14.4_2_1, A14.4_2_2, A14.4_2_3, A14.4_2_4, A14.4_2_5, A14.4_2_6, A14.4_2_9, A14.4_2_10, A14.4_2_11, A14.4_2_96, A14.4_2_97, A14.4_2_98, A14.4_2_99) <> 100.0) V_A14_4_2_R2 = 1.




* Question A15.


* [ERROR] Require the treatment-outcome percentages.
COMPUTE V_A15_R1 = 0.
IF (MISSING(A15)) V_A15_R1 = 1.



* [ERROR] Require each treatment-outcome column to total 100 percent.
COMPUTE V_A15_R2 = 0.
IF (SUM(A15_4, A15_2, A15_3, A15_1) <> 100.0) V_A15_R2 = 1.




* Question A16.


* [ERROR] Require the timing-distribution percentages when the respondent has patients receiving second-line therapy.
COMPUTE V_A16_R1 = 0.
IF (MISSING(A16)) V_A16_R1 = 1.



* [ERROR] Require each timing-distribution column to total 100 percent.
COMPUTE V_A16_R2 = 0.
IF (SUM(A16_1, A16_2, A16_3) <> 100.0) V_A16_R2 = 1.




* Question A17.


* [ERROR] Require the second-line modality percentages when applicable.
COMPUTE V_A17_R1 = 0.
IF (MISSING(A17)) V_A17_R1 = 1.



* [ERROR] Require each modality-distribution column to total 100 percent.
COMPUTE V_A17_R2 = 0.
IF (SUM(A17_2, A17_3, A17_4, A17_5, A17_6, A17_99, A17_18) <> 100.0) V_A17_R2 = 1.




* Question A18.


* [ERROR] Require the HCT-type percentages when applicable.
COMPUTE V_A18_R1 = 0.
IF (MISSING(A18)) V_A18_R1 = 1.



* [ERROR] Require each HCT-type column to total 100 percent.
COMPUTE V_A18_R2 = 0.
IF (SUM(A18_1, A18_2) <> 100.0) V_A18_R2 = 1.




* Question A18A.


* [ERROR] Restrict the CAR-T eligibility percentage to whole values from 0 through 100.
COMPUTE V_A18A_R1 = 0.
IF ((NOT MISSING(A18A) AND NOT ANY(A18A, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100))) V_A18A_R1 = 1.




* Question A18B.


* [ERROR] Require both CAR-T outcome percentages.
COMPUTE V_A18B_R1 = 0.
IF (MISSING(A18B)) V_A18B_R1 = 1.



* [ERROR] Require CAR-T recipients and non-recipients to total 100 percent.
COMPUTE V_A18B_R2 = 0.
IF (SUM(A18B_1, A18B_2) <> 100.0) V_A18B_R2 = 1.




* Question A18.1.


* [ERROR] Require the response-outcome percentages when second-line therapy is reported.
COMPUTE V_A18_1_R1 = 0.
IF (MISSING(A18.1)) V_A18_1_R1 = 1.



* [ERROR] Require each response-outcome column to total 100 percent.
COMPUTE V_A18_1_R2 = 0.
IF (SUM(A18.1_1, A18.1_2, A18.1_3, A18.1_4, A18.1_5) <> 100.0) V_A18_1_R2 = 1.




* Question A19.1.


* [ERROR] Require the percentage allocations in the second-line targeted-regimen grid to total 100 percent.
COMPUTE V_A19_1_R1 = 0.
IF (SUM(A19.1) <> 100.0) V_A19_1_R1 = 1.




* Question A19.1_1.
* No validation generated: Placeholder field with no question text, options, or validation evidence.



* Question A19.1_2.


* [ERROR] Require the second-line targeted-regimen grid when applicable.
COMPUTE V_A19_1_2_R1 = 0.
IF (MISSING(A19.1_2)) V_A19_1_2_R1 = 1.



* [ERROR] Require the targeted-regimen percentage allocations to total 100 percent.
COMPUTE V_A19_1_2_R2 = 0.
IF (SUM(A19.1_2_33, A19.1_2_34, A19.1_2_51, A19.1_2_35, A19.1_2_36, A19.1_2_37, A19.1_2_38, A19.1_2_53, A19.1_2_39, A19.1_2_40, A19.1_2_41, A19.1_2_42, A19.1_2_43, A19.1_2_44, A19.1_2_45, A19.1_2_46, A19.1_2_47, A19.1_2_48, A19.1_2_49, A19.1_2_50, A19.1_2_96, A19.1_2_97, A19.1_2_98, A19.1_2_99) <> 100.0) V_A19_1_2_R2 = 1.




* Question A19.2.


* [ERROR] Require the percentage allocations in the second-line regimen grid to total 100 percent.
COMPUTE V_A19_2_R1 = 0.
IF (SUM(A19.2) <> 100.0) V_A19_2_R1 = 1.




* Question A19.2_1.
* No validation generated: Placeholder field with no question text, options, or validation evidence.



* Question A19.2_2.


* [ERROR] Require the second-line regimen grid when applicable.
COMPUTE V_A19_2_2_R1 = 0.
IF (MISSING(A19.2_2)) V_A19_2_2_R1 = 1.



* [ERROR] Require the regimen percentage allocations to total 100 percent.
COMPUTE V_A19_2_2_R2 = 0.
IF (SUM(A19.2_2_1, A19.2_2_2, A19.2_2_4, A19.2_2_23, A19.2_2_24, A19.2_2_5, A19.2_2_25, A19.2_2_6, A19.2_2_8, A19.2_2_9, A19.2_2_10, A19.2_2_11, A19.2_2_12, A19.2_2_15, A19.2_2_26, A19.2_2_16, A19.2_2_17, A19.2_2_18, A19.2_2_27, A19.2_2_20, A19.2_2_21, A19.2_2_28, A19.2_2_22, A19.2_2_96, A19.2_2_97, A19.2_2_98, A19.2_2_99) <> 100.0) V_A19_2_2_R2 = 1.




* Question A19.3.


* [ERROR] Require the percentage allocations in the second-line regimen grid to total 100 percent.
COMPUTE V_A19_3_R1 = 0.
IF (SUM(A19.3) <> 100.0) V_A19_3_R1 = 1.




* Question A19.3_1.
* No validation generated: Placeholder field with no question text, options, or validation evidence.



* Question A19.3_2.


* [ERROR] Require the second-line regimen grid when applicable.
COMPUTE V_A19_3_2_R1 = 0.
IF (MISSING(A19.3_2)) V_A19_3_2_R1 = 1.



* [ERROR] Require the regimen percentage allocations to total 100 percent.
COMPUTE V_A19_3_2_R2 = 0.
IF (SUM(A19.3_2_1, A19.3_2_23, A19.3_2_2, A19.3_2_3, A19.3_2_4, A19.3_2_6, A19.3_2_7, A19.3_2_26, A19.3_2_11, A19.3_2_12, A19.3_2_13, A19.3_2_16, A19.3_2_17, A19.3_2_19, A19.3_2_24, A19.3_2_25, A19.3_2_22, A19.3_2_96, A19.3_2_97, A19.3_2_98, A19.3_2_99) <> 100.0) V_A19_3_2_R2 = 1.




* Question A19.4.


* [ERROR] Require the percentage allocations in the second-line regimen grid to total 100 percent.
COMPUTE V_A19_4_R1 = 0.
IF (SUM(A19.4) <> 100.0) V_A19_4_R1 = 1.




* Question A19.4_1.
* No validation generated: Placeholder field with no question text, options, or validation evidence.



* Question A19.4_2.


* [ERROR] Require the second-line regimen grid when applicable.
COMPUTE V_A19_4_2_R1 = 0.
IF (MISSING(A19.4_2)) V_A19_4_2_R1 = 1.



* [ERROR] Require the regimen percentage allocations to total 100 percent.
COMPUTE V_A19_4_2_R2 = 0.
IF (SUM(A19.4_2_1, A19.4_2_2, A19.4_2_28, A19.4_2_29, A19.4_2_30, A19.4_2_3, A19.4_2_4, A19.4_2_6, A19.4_2_7, A19.4_2_24, A19.4_2_9, A19.4_2_11, A19.4_2_12, A19.4_2_13, A19.4_2_15, A19.4_2_31, A19.4_2_26, A19.4_2_32, A19.4_2_16, A19.4_2_33, A19.4_2_17, A19.4_2_34, A19.4_2_18, A19.4_2_19, A19.4_2_35, A19.4_2_27, A19.4_2_36, A19.4_2_37, A19.4_2_96, A19.4_2_97, A19.4_2_98, A19.4_2_99) <> 100.0) V_A19_4_2_R2 = 1.




* Question A19A.


* [ERROR] Restrict the MRD-based blinatumomab percentages to whole values from 0 through 100.
COMPUTE V_A19A_R1 = 0.
IF ((NOT MISSING(A19A) AND NOT ANY(A19A, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100))) V_A19A_R1 = 1.




* Question A20.


* [ERROR] A20 is required when displayed.
COMPUTE V_A20_R1 = 0.
IF (MISSING(A20)) V_A20_R1 = 1.



* [ERROR] Each entered percentage must be a whole number from 0 through 100.
COMPUTE V_A20_R2 = 0.
IF ((NOT MISSING(A20) AND NOT ANY(A20, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100))) V_A20_R2 = 1.



* [ERROR] Each displayed treatment-outcome breakdown must total 100 percent.
!Sum_to_var svar=A20.
COMPUTE V_A20_R3 = 0.
IF (SUM(A20_4, A20_2, A20_3, A20_1) <> 100.0) V_A20_R3 = 1.




* Question A21.


* [ERROR] A21 is required when displayed.
COMPUTE V_A21_R1 = 0.
IF (MISSING(A21)) V_A21_R1 = 1.



* [ERROR] Each timing percentage must be a whole number from 0 through 100.
COMPUTE V_A21_R2 = 0.
IF ((NOT MISSING(A21) AND NOT ANY(A21, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100))) V_A21_R2 = 1.



* [ERROR] The three timing percentages must total 100 percent.
!Sum_to_var svar=A21.
COMPUTE V_A21_R3 = 0.
IF (SUM(A21_1, A21_2, A21_3) <> 100.0) V_A21_R3 = 1.




* Question A22.


* [ERROR] A22 is required when displayed.
COMPUTE V_A22_R1 = 0.
IF (MISSING(A22)) V_A22_R1 = 1.



* [ERROR] Each modality percentage must be a whole number from 0 through 100.
COMPUTE V_A22_R2 = 0.
IF ((NOT MISSING(A22) AND NOT ANY(A22, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100))) V_A22_R2 = 1.



* [ERROR] Each modality distribution must total 100 percent.
!Sum_to_var svar=A22.
COMPUTE V_A22_R3 = 0.
IF (SUM(A22_2, A22_3, A22_4, A22_5, A22_6, A22_99) <> 100.0) V_A22_R3 = 1.




* Question A23.


* [ERROR] A23 is required when displayed.
COMPUTE V_A23_R1 = 0.
IF (MISSING(A23)) V_A23_R1 = 1.



* [ERROR] Each HCT percentage must be a whole number from 0 through 100.
COMPUTE V_A23_R2 = 0.
IF ((NOT MISSING(A23) AND NOT ANY(A23, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100))) V_A23_R2 = 1.



* [ERROR] Autologous and allogeneic HCT percentages must total 100 percent.
!Sum_to_var svar=A23.
COMPUTE V_A23_R3 = 0.
IF (SUM(A23_1, A23_2) <> 100.0) V_A23_R3 = 1.




* Question A23A.


* [ERROR] The eligibility percentage must be a whole number from 0 through 100.
COMPUTE V_A23A_R1 = 0.
IF ((NOT MISSING(A23A) AND NOT ANY(A23A, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100))) V_A23A_R1 = 1.




* Question A23B.


* [ERROR] A23B is required when displayed.
COMPUTE V_A23B_R1 = 0.
IF (MISSING(A23B)) V_A23B_R1 = 1.



* [ERROR] Each CAR-T percentage must be a whole number from 0 through 100.
COMPUTE V_A23B_R2 = 0.
IF ((NOT MISSING(A23B) AND NOT ANY(A23B, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100))) V_A23B_R2 = 1.



* [ERROR] The receive-CAR-T and do-not-receive-CAR-T percentages must total 100 percent.
!Sum_to_var svar=A23B.
COMPUTE V_A23B_R3 = 0.
IF (SUM(A23B_1, A23B_2) <> 100.0) V_A23B_R3 = 1.




* Question A23.1.


* [ERROR] A23.1 is required when displayed.
COMPUTE V_A23_1_R1 = 0.
IF (MISSING(A23.1)) V_A23_1_R1 = 1.



* [ERROR] Each response percentage must be a whole number from 0 through 100.
COMPUTE V_A23_1_R2 = 0.
IF ((NOT MISSING(A23.1) AND NOT ANY(A23.1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100))) V_A23_1_R2 = 1.



* [ERROR] The five treatment-outcome percentages must total 100 percent.
!Sum_to_var svar=A23.1.
COMPUTE V_A23_1_R3 = 0.
IF (SUM(A23.1_1, A23.1_2, A23.1_3, A23.1_4, A23.1_5) <> 100.0) V_A23_1_R3 = 1.




* Question A24.1.
* No validation generated: Container question; the response grid and its supported checks are represented by A24.1_2.



* Question A24.1_1.
* No validation generated: The supplied question contains no response definition or validation evidence.



* Question A24.1_2.


* [ERROR] The regimen grid is required when displayed.
COMPUTE V_A24_1_2_R1 = 0.
IF (MISSING(A24.1_2)) V_A24_1_2_R1 = 1.



* [ERROR] Percentage entries in the regimen grid must be whole numbers from 0 through 100.
COMPUTE V_A24_1_2_R2 = 0.
IF ((NOT MISSING(A24.1_2) AND NOT ANY(A24.1_2, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100))) V_A24_1_2_R2 = 1.



* [ERROR] Each displayed percentage-treatment column must total 100 percent.
!Sum_to_var svar=A24.1_2.
COMPUTE V_A24_1_2_R3 = 0.
IF (SUM(A24.1_2_35, A24.1_2_36, A24.1_2_53, A24.1_2_37, A24.1_2_38, A24.1_2_39, A24.1_2_40, A24.1_2_54, A24.1_2_41, A24.1_2_42, A24.1_2_43, A24.1_2_44, A24.1_2_45, A24.1_2_46, A24.1_2_47, A24.1_2_48, A24.1_2_49, A24.1_2_50, A24.1_2_51, A24.1_2_52, A24.1_2_96, A24.1_2_97, A24.1_2_98, A24.1_2_99) <> 100.0) V_A24_1_2_R3 = 1.




* Question A24.2.
* No validation generated: Container question; the response grid and its supported checks are represented by A24.2_2.



* Question A24.2_1.
* No validation generated: The supplied question contains no response definition or validation evidence.



* Question A24.2_2.


* [ERROR] The regimen grid is required when displayed.
COMPUTE V_A24_2_2_R1 = 0.
IF (MISSING(A24.2_2)) V_A24_2_2_R1 = 1.



* [ERROR] Percentage entries in the regimen grid must be whole numbers from 0 through 100.
COMPUTE V_A24_2_2_R2 = 0.
IF ((NOT MISSING(A24.2_2) AND NOT ANY(A24.2_2, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100))) V_A24_2_2_R2 = 1.



* [ERROR] Each displayed percentage-treatment column must total 100 percent.
!Sum_to_var svar=A24.2_2.
COMPUTE V_A24_2_2_R3 = 0.
IF (SUM(A24.2_2_1, A24.2_2_2, A24.2_2_4, A24.2_2_26, A24.2_2_27, A24.2_2_5, A24.2_2_6, A24.2_2_28, A24.2_2_8, A24.2_2_9, A24.2_2_10, A24.2_2_12, A24.2_2_13, A24.2_2_15, A24.2_2_29, A24.2_2_16, A24.2_2_17, A24.2_2_18, A24.2_2_19, A24.2_2_30, A24.2_2_22, A24.2_2_31, A24.2_2_25, A24.2_2_96, A24.2_2_97, A24.2_2_98, A24.2_2_99) <> 100.0) V_A24_2_2_R3 = 1.




* Question A24.3.
* No validation generated: Container question; the response grid and its supported checks are represented by A24.3_2.



* Question A24.3_1.
* No validation generated: The supplied question contains no response definition or validation evidence.



* Question A24.3_2.


* [ERROR] The regimen grid is required when displayed.
COMPUTE V_A24_3_2_R1 = 0.
IF (MISSING(A24.3_2)) V_A24_3_2_R1 = 1.



* [ERROR] Percentage entries in the regimen grid must be whole numbers from 0 through 100.
COMPUTE V_A24_3_2_R2 = 0.
IF ((NOT MISSING(A24.3_2) AND NOT ANY(A24.3_2, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100))) V_A24_3_2_R2 = 1.



* [ERROR] Each displayed percentage-treatment column must total 100 percent.
!Sum_to_var svar=A24.3_2.
COMPUTE V_A24_3_2_R3 = 0.
IF (SUM(A24.3_2_1, A24.3_2_27, A24.3_2_2, A24.3_2_3, A24.3_2_4, A24.3_2_6, A24.3_2_7, A24.3_2_28, A24.3_2_8, A24.3_2_9, A24.3_2_12, A24.3_2_13, A24.3_2_14, A24.3_2_15, A24.3_2_16, A24.3_2_17, A24.3_2_18, A24.3_2_24, A24.3_2_25, A24.3_2_23, A24.3_2_26, A24.3_2_96, A24.3_2_97, A24.3_2_98, A24.3_2_99) <> 100.0) V_A24_3_2_R3 = 1.




* Question A24.4.
* No validation generated: Container question; the response grid and its supported checks are represented by A24.4_2.



* Question A24.4_1.
* No validation generated: The supplied question contains no response definition or validation evidence.



* Question A24.4_2.


* [ERROR] The regimen grid is required when displayed.
COMPUTE V_A24_4_2_R1 = 0.
IF (MISSING(A24.4_2)) V_A24_4_2_R1 = 1.



* [ERROR] Percentage entries in the regimen grid must be whole numbers from 0 through 100.
COMPUTE V_A24_4_2_R2 = 0.
IF ((NOT MISSING(A24.4_2) AND NOT ANY(A24.4_2, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100))) V_A24_4_2_R2 = 1.



* [ERROR] Each displayed percentage-treatment column must total 100 percent.
!Sum_to_var svar=A24.4_2.
COMPUTE V_A24_4_2_R3 = 0.
IF (SUM(A24.4_2_2, A24.4_2_29, A24.4_2_30, A24.4_2_31, A24.4_2_3, A24.4_2_4, A24.4_2_6, A24.4_2_32, A24.4_2_8, A24.4_2_24, A24.4_2_9, A24.4_2_12, A24.4_2_13, A24.4_2_14, A24.4_2_16, A24.4_2_25, A24.4_2_33, A24.4_2_26, A24.4_2_34, A24.4_2_35, A24.4_2_18, A24.4_2_36, A24.4_2_21, A24.4_2_28, A24.4_2_37, A24.4_2_38, A24.4_2_96, A24.4_2_97, A24.4_2_98, A24.4_2_99) <> 100.0) V_A24_4_2_R3 = 1.




* Question A25.


* [ERROR] A25 is required when displayed.
COMPUTE V_A25_R1 = 0.
IF (MISSING(A25)) V_A25_R1 = 1.



* [ERROR] Each treatment-outcome percentage must be a whole number from 0 through 100.
COMPUTE V_A25_R2 = 0.
IF ((NOT MISSING(A25) AND NOT ANY(A25, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100))) V_A25_R2 = 1.



* [ERROR] Each treatment-outcome breakdown must total 100 percent.
!Sum_to_var svar=A25.
COMPUTE V_A25_R3 = 0.
IF (SUM(A25_4, A25_2, A25_3, A25_1) <> 100.0) V_A25_R3 = 1.




* Question A28A.
* No validation generated: Routing placeholder with no respondent-entered response or validation evidence.



* Question A28B.
* No validation generated: Routing placeholder with no respondent-entered response or validation evidence.



* Question A29.


* [ERROR] Each entered progression-free-survival value must be a whole number from 0 through 100.
COMPUTE V_A29_R1 = 0.
IF ((NOT MISSING(A29) AND NOT ANY(A29, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100))) V_A29_R1 = 1.




* Question A40.


* [ERROR] A40 is required when displayed.
COMPUTE V_A40_R1 = 0.
IF (MISSING(A40)) V_A40_R1 = 1.



* [ERROR] Each modality percentage must be a whole number from 0 through 100.
COMPUTE V_A40_R2 = 0.
IF ((NOT MISSING(A40) AND NOT ANY(A40, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100))) V_A40_R2 = 1.



* [ERROR] Each modality distribution must total 100 percent.
!Sum_to_var svar=A40.
COMPUTE V_A40_R3 = 0.
IF (SUM(A40_1, A40_2, A40_3, A40_4, A40_5, A40_6, A40_99) <> 100.0) V_A40_R3 = 1.




* Question A41.


* [ERROR] A41 is required when displayed.
COMPUTE V_A41_R1 = 0.
IF (MISSING(A41)) V_A41_R1 = 1.



* [ERROR] Each HCT percentage must be a whole number from 0 through 100.
COMPUTE V_A41_R2 = 0.
IF ((NOT MISSING(A41) AND NOT ANY(A41, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100))) V_A41_R2 = 1.



* [ERROR] Autologous and allogeneic HCT percentages must total 100 percent.
!Sum_to_var svar=A41.
COMPUTE V_A41_R3 = 0.
IF (SUM(A41_1, A41_2) <> 100.0) V_A41_R3 = 1.




* Question A41.1.


* [ERROR] Responses must be whole-number percentages from 0 through 100.
COMPUTE V_A41_1_R1 = 0.
IF ((NOT MISSING(A41.1) AND (A41.1 < 0.0 OR A41.1 > 100.0))) V_A41_1_R1 = 1.




* Question A41.2.


* [ERROR] Responses must be whole numbers representing months from 0 through 99.
COMPUTE V_A41_2_R1 = 0.
IF ((NOT MISSING(A41.2) AND (A41.2 < 0.0 OR A41.2 > 99.0))) V_A41_2_R1 = 1.




* Question A42.


* [ERROR] Each response must be a whole-number percentage from 0 through 100.
COMPUTE V_A42_R1 = 0.
IF ((NOT MISSING(A42) AND (A42 < 0.0 OR A42 > 100.0))) V_A42_R1 = 1.



* [ERROR] The response percentages must total 100 for each displayed age group.
COMPUTE V_A42_R2 = 0.
IF (SUM(A42_1, A42_2, A42_3, A42_4, A42_5) <> 100.0) V_A42_R2 = 1.




* Question A45.


* [ERROR] Each response must be a whole-number percentage from 0 through 100.
COMPUTE V_A45_R1 = 0.
IF ((NOT MISSING(A45) AND (A45 < 0.0 OR A45 > 100.0))) V_A45_R1 = 1.




* Question A46.1.


* [ERROR] Percentage cells must contain whole-number values from 0 through 100.
COMPUTE V_A46_1_R1 = 0.
IF ((NOT MISSING(A46.1) AND (A46.1 < 0.0 OR A46.1 > 100.0))) V_A46_1_R1 = 1.



* [ERROR] Percentage allocations must total 100 for each displayed age group.
COMPUTE V_A46_1_R2 = 0.
IF (SUM(A46.1) <> 100.0) V_A46_1_R2 = 1.




* Question A46.1_1.
* No validation generated: The supplied canonical record contains no response definition, range, option structure, or routing evidence for this placeholder variable.



* Question A46.1_2.


* [ERROR] Percentage cells must contain whole-number values from 0 through 100.
COMPUTE V_A46_1_2_R1 = 0.
IF ((NOT MISSING(A46.1_2) AND (A46.1_2 < 0.0 OR A46.1_2 > 100.0))) V_A46_1_2_R1 = 1.



* [ERROR] Percentage allocations must total 100 for each displayed age group.
COMPUTE V_A46_1_2_R2 = 0.
IF (SUM(A46.1_2_46, A46.1_2_47, A46.1_2_48, A46.1_2_49, A46.1_2_50, A46.1_2_51, A46.1_2_52, A46.1_2_53, A46.1_2_54, A46.1_2_55, A46.1_2_56, A46.1_2_57, A46.1_2_58, A46.1_2_59, A46.1_2_60, A46.1_2_61, A46.1_2_62, A46.1_2_63, A46.1_2_64, A46.1_2_65, A46.1_2_66, A46.1_2_67, A46.1_2_68, A46.1_2_69, A46.1_2_70, A46.1_2_71, A46.1_2_72, A46.1_2_73, A46.1_2_74, A46.1_2_75, A46.1_2_76, A46.1_2_77, A46.1_2_78, A46.1_2_79, A46.1_2_80, A46.1_2_81, A46.1_2_82, A46.1_2_83, A46.1_2_84, A46.1_2_85, A46.1_2_86, A46.1_2_96, A46.1_2_97, A46.1_2_98, A46.1_2_99) <> 100.0) V_A46_1_2_R2 = 1.




* Question A46.2.


* [ERROR] Percentage cells must contain whole-number values from 0 through 100.
COMPUTE V_A46_2_R1 = 0.
IF ((NOT MISSING(A46.2) AND (A46.2 < 0.0 OR A46.2 > 100.0))) V_A46_2_R1 = 1.



* [ERROR] Percentage allocations must total 100 for each displayed age group.
COMPUTE V_A46_2_R2 = 0.
IF (SUM(A46.2) <> 100.0) V_A46_2_R2 = 1.




* Question A46.2_1.
* No validation generated: The supplied canonical record contains no response definition, range, option structure, or routing evidence for this placeholder variable.



* Question A46.2_2.


* [ERROR] Percentage cells must contain whole-number values from 0 through 100.
COMPUTE V_A46_2_2_R1 = 0.
IF ((NOT MISSING(A46.2_2) AND (A46.2_2 < 0.0 OR A46.2_2 > 100.0))) V_A46_2_2_R1 = 1.



* [ERROR] Percentage allocations must total 100 for each displayed age group.
COMPUTE V_A46_2_2_R2 = 0.
IF (SUM(A46.2_2_25, A46.2_2_26, A46.2_2_27, A46.2_2_28, A46.2_2_35, A46.2_2_5, A46.2_2_29, A46.2_2_11, A46.2_2_16, A46.2_2_17, A46.2_2_23, A46.2_2_30, A46.2_2_31, A46.2_2_32, A46.2_2_36, A46.2_2_33, A46.2_2_34, A46.2_2_21, A46.2_2_24, A46.2_2_10, A46.2_2_37, A46.2_2_38, A46.2_2_18, A46.2_2_39, A46.2_2_40, A46.2_2_19, A46.2_2_41, A46.2_2_42, A46.2_2_43, A46.2_2_2, A46.2_2_3, A46.2_2_4, A46.2_2_15, A46.2_2_96, A46.2_2_97, A46.2_2_98, A46.2_2_99) <> 100.0) V_A46_2_2_R2 = 1.




* Question A46.3.


* [ERROR] Percentage cells must contain whole-number values from 0 through 100.
COMPUTE V_A46_3_R1 = 0.
IF ((NOT MISSING(A46.3) AND (A46.3 < 0.0 OR A46.3 > 100.0))) V_A46_3_R1 = 1.



* [ERROR] Percentage allocations must total 100 for each displayed age group.
COMPUTE V_A46_3_R2 = 0.
IF (SUM(A46.3) <> 100.0) V_A46_3_R2 = 1.




* Question A46.3_1.
* No validation generated: The supplied canonical record contains no response definition, range, option structure, or routing evidence for this placeholder variable.



* Question A46.3_2.


* [ERROR] Percentage cells must contain whole-number values from 0 through 100.
COMPUTE V_A46_3_2_R1 = 0.
IF ((NOT MISSING(A46.3_2) AND (A46.3_2 < 0.0 OR A46.3_2 > 100.0))) V_A46_3_2_R1 = 1.



* [ERROR] Percentage allocations must total 100 for each displayed age group.
COMPUTE V_A46_3_2_R2 = 0.
IF (SUM(A46.3_2_20, A46.3_2_21, A46.3_2_4, A46.3_2_22, A46.3_2_7, A46.3_2_23, A46.3_2_24, A46.3_2_15, A46.3_2_16, A46.3_2_25, A46.3_2_26, A46.3_2_27, A46.3_2_3, A46.3_2_28, A46.3_2_29, A46.3_2_30, A46.3_2_12, A46.3_2_11, A46.3_2_31, A46.3_2_32, A46.3_2_33, A46.3_2_34, A46.3_2_35, A46.3_2_36, A46.3_2_37, A46.3_2_38, A46.3_2_39, A46.3_2_1, A46.3_2_2, A46.3_2_5, A46.3_2_6, A46.3_2_96, A46.3_2_97, A46.3_2_98, A46.3_2_99) <> 100.0) V_A46_3_2_R2 = 1.




* Question A46.4.


* [ERROR] Percentage cells must contain whole-number values from 0 through 100.
COMPUTE V_A46_4_R1 = 0.
IF ((NOT MISSING(A46.4) AND (A46.4 < 0.0 OR A46.4 > 100.0))) V_A46_4_R1 = 1.



* [ERROR] Percentage allocations must total 100 for each displayed age group.
COMPUTE V_A46_4_R2 = 0.
IF (SUM(A46.4) <> 100.0) V_A46_4_R2 = 1.




* Question A46.4_1.
* No validation generated: The supplied canonical record contains no response definition, range, option structure, or routing evidence for this placeholder variable.



* Question A46.4_2.


* [ERROR] Percentage cells must contain whole-number values from 0 through 100.
COMPUTE V_A46_4_2_R1 = 0.
IF ((NOT MISSING(A46.4_2) AND (A46.4_2 < 0.0 OR A46.4_2 > 100.0))) V_A46_4_2_R1 = 1.



* [ERROR] Percentage allocations must total 100 for each displayed age group.
COMPUTE V_A46_4_2_R2 = 0.
IF (SUM(A46.4_2_23, A46.4_2_24, A46.4_2_4, A46.4_2_7, A46.4_2_25, A46.4_2_26, A46.4_2_27, A46.4_2_15, A46.4_2_28, A46.4_2_16, A46.4_2_3, A46.4_2_29, A46.4_2_30, A46.4_2_31, A46.4_2_32, A46.4_2_33, A46.4_2_34, A46.4_2_12, A46.4_2_35, A46.4_2_11, A46.4_2_36, A46.4_2_40, A46.4_2_37, A46.4_2_42, A46.4_2_43, A46.4_2_44, A46.4_2_38, A46.4_2_41, A46.4_2_39, A46.4_2_1, A46.4_2_2, A46.4_2_5, A46.4_2_6, A46.4_2_96, A46.4_2_97, A46.4_2_98, A46.4_2_99) <> 100.0) V_A46_4_2_R2 = 1.




* Question A46A.


* [ERROR] The response must be a whole-number percentage from 0 through 100.
COMPUTE V_A46A_R1 = 0.
IF ((NOT MISSING(A46A) AND (A46A < 0.0 OR A46A > 100.0))) V_A46A_R1 = 1.




* Question A46C.


* [ERROR] Each response must be a whole-number percentage from 0 through 100.
COMPUTE V_A46C_R1 = 0.
IF ((NOT MISSING(A46C) AND (A46C < 0.0 OR A46C > 100.0))) V_A46C_R1 = 1.



* [ERROR] Complete remission and failure percentages must total 100 for each displayed age group.
COMPUTE V_A46C_R2 = 0.
IF (SUM(A46C_1, A46C_2) <> 100.0) V_A46C_R2 = 1.




* Question A46D.
* No validation generated: The question requests percentages but supplies no explicit numeric range, total, required-response, or code validation constraint.



* Question A46B.


* [ERROR] MRD-negative status responses must be whole-number percentages from 0 through 100.
COMPUTE V_A46B_R1 = 0.
IF ((NOT MISSING(A46B) AND (A46B < 0.0 OR A46B > 100.0))) V_A46B_R1 = 1.




* Question A47.1.


* [ERROR] Percentage cells must contain whole-number values from 0 through 100.
COMPUTE V_A47_1_R1 = 0.
IF ((NOT MISSING(A47.1) AND (A47.1 < 0.0 OR A47.1 > 100.0))) V_A47_1_R1 = 1.



* [ERROR] Percentage allocations must total 100 for each displayed age group.
COMPUTE V_A47_1_R2 = 0.
IF (SUM(A47.1) <> 100.0) V_A47_1_R2 = 1.




* Question A47.1_1.
* No validation generated: The supplied canonical record contains no response definition, range, option structure, or routing evidence for this placeholder variable.



* Question A47.1_2.


* [ERROR] Percentage cells must contain whole-number values from 0 through 100.
COMPUTE V_A47_1_2_R1 = 0.
IF ((NOT MISSING(A47.1_2) AND (A47.1_2 < 0.0 OR A47.1_2 > 100.0))) V_A47_1_2_R1 = 1.



* [ERROR] Percentage allocations must total 100 for each displayed age group.
COMPUTE V_A47_1_2_R2 = 0.
IF (SUM(A47.1_2_50, A47.1_2_51, A47.1_2_52, A47.1_2_53, A47.1_2_54, A47.1_2_55, A47.1_2_56, A47.1_2_57, A47.1_2_58, A47.1_2_59, A47.1_2_60, A47.1_2_61, A47.1_2_62, A47.1_2_63, A47.1_2_64, A47.1_2_65, A47.1_2_66, A47.1_2_67, A47.1_2_68, A47.1_2_69, A47.1_2_70, A47.1_2_71, A47.1_2_72, A47.1_2_73, A47.1_2_74, A47.1_2_75, A47.1_2_76, A47.1_2_77, A47.1_2_78, A47.1_2_79, A47.1_2_80, A47.1_2_81, A47.1_2_82, A47.1_2_83, A47.1_2_84, A47.1_2_85, A47.1_2_86, A47.1_2_87, A47.1_2_88, A47.1_2_96, A47.1_2_97, A47.1_2_98, A47.1_2_99) <> 100.0) V_A47_1_2_R2 = 1.




* Question A47.2.


* [ERROR] Percentage cells must contain whole-number values from 0 through 100.
COMPUTE V_A47_2_R1 = 0.
IF ((NOT MISSING(A47.2) AND (A47.2 < 0.0 OR A47.2 > 100.0))) V_A47_2_R1 = 1.



* [ERROR] Percentage allocations must total 100 for each displayed age group.
COMPUTE V_A47_2_R2 = 0.
IF (SUM(A47.2) <> 100.0) V_A47_2_R2 = 1.




* Question A47.2_1.
* No validation generated: The supplied canonical record contains no response definition, range, option structure, or routing evidence for this placeholder variable.



* Question A47.2_2.


* [ERROR] Percentage allocations must total 100%.
COMPUTE V_A47_2_2_TOTAL = 0.
IF (SUM(A47.2_2_1, A47.2_2_5, A47.2_2_31, A47.2_2_32, A47.2_2_33, A47.2_2_34, A47.2_2_13, A47.2_2_19, A47.2_2_27, A47.2_2_28, A47.2_2_29, A47.2_2_30, A47.2_2_35, A47.2_2_36, A47.2_2_37, A47.2_2_38, A47.2_2_12, A47.2_2_39, A47.2_2_40, A47.2_2_23, A47.2_2_41, A47.2_2_42, A47.2_2_24, A47.2_2_43, A47.2_2_44, A47.2_2_45, A47.2_2_2, A47.2_2_3, A47.2_2_4, A47.2_2_10, A47.2_2_96, A47.2_2_97, A47.2_2_98, A47.2_2_99) <> 100.0) V_A47_2_2_TOTAL = 1.




* Question A47.3.
* No validation generated: Container question; its response cells are represented by the associated A47.3_1 and A47.3_2 grid variables.



* Question A47.3_1.
* No validation generated: Parser-created placeholder with no response definition or validation evidence.



* Question A47.3_2.


* [ERROR] Percentage allocations must total 100%.
COMPUTE V_A47_3_2_TOTAL = 0.
IF (SUM(A47.3_2_25, A47.3_2_26, A47.3_2_8, A47.3_2_9, A47.3_2_27, A47.3_2_28, A47.3_2_29, A47.3_2_30, A47.3_2_31, A47.3_2_21, A47.3_2_37, A47.3_2_32, A47.3_2_33, A47.3_2_34, A47.3_2_35, A47.3_2_36, A47.3_2_19, A47.3_2_18, A47.3_2_38, A47.3_2_39, A47.3_2_40, A47.3_2_41, A47.3_2_42, A47.3_2_43, A47.3_2_44, A47.3_2_45, A47.3_2_46, A47.3_2_1, A47.3_2_2, A47.3_2_3, A47.3_2_4, A47.3_2_5, A47.3_2_7, A47.3_2_10, A47.3_2_11, A47.3_2_17, A47.3_2_20, A47.3_2_96, A47.3_2_97, A47.3_2_98, A47.3_2_99) <> 100.0) V_A47_3_2_TOTAL = 1.




* Question A47.4.
* No validation generated: Container question; its response cells are represented by the associated A47.4_1 and A47.4_2 grid variables.



* Question A47.4_1.
* No validation generated: Parser-created placeholder with no response definition or validation evidence.



* Question A47.4_2.


* [ERROR] Percentage allocations must total 100%.
COMPUTE V_A47_4_2_TOTAL = 0.
IF (SUM(A47.4_2_25, A47.4_2_8, A47.4_2_9, A47.4_2_26, A47.4_2_27, A47.4_2_28, A47.4_2_29, A47.4_2_34, A47.4_2_24, A47.4_2_30, A47.4_2_31, A47.4_2_32, A47.4_2_33, A47.4_2_19, A47.4_2_35, A47.4_2_18, A47.4_2_36, A47.4_2_37, A47.4_2_40, A47.4_2_42, A47.4_2_43, A47.4_2_44, A47.4_2_38, A47.4_2_39, A47.4_2_41, A47.4_2_1, A47.4_2_2, A47.4_2_3, A47.4_2_5, A47.4_2_7, A47.4_2_10, A47.4_2_17, A47.4_2_22, A47.4_2_20, A47.4_2_96, A47.4_2_97, A47.4_2_98, A47.4_2_99) <> 100.0) V_A47_4_2_TOTAL = 1.




* Question A48.1.
* No validation generated: Container question; its response cells are represented by the associated A48.1_1 and A48.1_2 grid variables.



* Question A48.1_1.
* No validation generated: Parser-created placeholder with no response definition or validation evidence.



* Question A48.1_2.


* [ERROR] Percentage allocations must total 100%.
COMPUTE V_A48_1_2_TOTAL = 0.
IF (SUM(A48.1_2_8, A48.1_2_24, A48.1_2_21, A48.1_2_25, A48.1_2_10, A48.1_2_26, A48.1_2_27, A48.1_2_28, A48.1_2_29, A48.1_2_96, A48.1_2_97, A48.1_2_98, A48.1_2_99) <> 100.0) V_A48_1_2_TOTAL = 1.




* Question A48.2.
* No validation generated: Container question; its response cells are represented by the associated A48.2_1 and A48.2_2 grid variables.



* Question A48.2_1.
* No validation generated: Parser-created placeholder with no response definition or validation evidence.



* Question A48.2_2.


* [ERROR] Percentage allocations must total 100%.
COMPUTE V_A48_2_2_TOTAL = 0.
IF (SUM(A48.2_2_8, A48.2_2_25, A48.2_2_22, A48.2_2_26, A48.2_2_10, A48.2_2_27, A48.2_2_28, A48.2_2_29, A48.2_2_30, A48.2_2_96, A48.2_2_97, A48.2_2_98, A48.2_2_99) <> 100.0) V_A48_2_2_TOTAL = 1.




* Question A48.3.
* No validation generated: Container question; its response cells are represented by the associated A48.3_1 and A48.3_2 grid variables.



* Question A48.3_1.
* No validation generated: Parser-created placeholder with no response definition or validation evidence.



* Question A48.3_2.


* [ERROR] Percentage allocations must total 100%.
COMPUTE V_A48_3_2_TOTAL = 0.
IF (SUM(A48.3_2_13, A48.3_2_14, A48.3_2_9, A48.3_2_10, A48.3_2_3, A48.3_2_4, A48.3_2_15, A48.3_2_16, A48.3_2_17, A48.3_2_96, A48.3_2_97, A48.3_2_98, A48.3_2_99) <> 100.0) V_A48_3_2_TOTAL = 1.




* Question A48.4.
* No validation generated: Container question; its response cells are represented by the associated A48.4_1 and A48.4_2 grid variables.



* Question A48.4_1.
* No validation generated: Parser-created placeholder with no response definition or validation evidence.



* Question A48.4_2.


* [ERROR] Percentage allocations must total 100%.
COMPUTE V_A48_4_2_TOTAL = 0.
IF (SUM(A48.4_2_12, A48.4_2_13, A48.4_2_9, A48.4_2_10, A48.4_2_3, A48.4_2_4, A48.4_2_14, A48.4_2_15, A48.4_2_16, A48.4_2_96, A48.4_2_97, A48.4_2_98, A48.4_2_99) <> 100.0) V_A48_4_2_TOTAL = 1.




* Question A49.1.
* No validation generated: Container question; its response cells are represented by the associated A49.1_1 and A49.1_2 grid variables.



* Question A49.1_1.
* No validation generated: Parser-created placeholder with no response definition or validation evidence.



* Question A49.1_2.


* [ERROR] Percentage allocations must total 100%.
COMPUTE V_A49_1_2_TOTAL = 0.
IF (SUM(A49.1_2_40, A49.1_2_41, A49.1_2_42, A49.1_2_43, A49.1_2_44, A49.1_2_45, A49.1_2_46, A49.1_2_47, A49.1_2_48, A49.1_2_49, A49.1_2_50, A49.1_2_51, A49.1_2_52, A49.1_2_53, A49.1_2_54, A49.1_2_55, A49.1_2_56, A49.1_2_57, A49.1_2_58, A49.1_2_59, A49.1_2_60, A49.1_2_96, A49.1_2_97, A49.1_2_98, A49.1_2_99) <> 100.0) V_A49_1_2_TOTAL = 1.




* Question A49.2.
* No validation generated: Container question; its response cells are represented by the associated A49.2_1 and A49.2_2 grid variables.



* Question A49.2_1.
* No validation generated: Parser-created placeholder with no response definition or validation evidence.



* Question A49.2_2.


* [ERROR] Percentage allocations must total 100%.
COMPUTE V_A49_2_2_TOTAL = 0.
IF (SUM(A49.2_2_28, A49.2_2_29, A49.2_2_30, A49.2_2_18, A49.2_2_26, A49.2_2_25, A49.2_2_27, A49.2_2_11, A49.2_2_31, A49.2_2_32, A49.2_2_23, A49.2_2_33, A49.2_2_34, A49.2_2_24, A49.2_2_35, A49.2_2_36, A49.2_2_37, A49.2_2_14, A49.2_2_20, A49.2_2_21, A49.2_2_22, A49.2_2_96, A49.2_2_97, A49.2_2_98, A49.2_2_99) <> 100.0) V_A49_2_2_TOTAL = 1.




* Question A49.3.
* No validation generated: Informational parent heading; response fields and numeric targets are defined in A49.3_2.



* Question A49.3_1.
* No validation generated: Parser-generated placeholder with no response specification.



* Question A49.3_2.


* [ERROR] Validate percentage and month-entry cells against the documented numeric response bounds.
COMPUTE V_A49_3_2_R1 = 0.
IF ((NOT MISSING(A49.3_2) AND (A49.3_2 < 0.0 OR A49.3_2 > 100.0)) OR (NOT MISSING(A49.3_2) AND (A49.3_2 < 0.0 OR A49.3_2 > 100.0)) OR (NOT MISSING(TO) AND (TO < 0.0 OR TO > 100.0)) OR (NOT MISSING(A49.3_2) AND (A49.3_2 < 0.0 OR A49.3_2 > 100.0))) V_A49_3_2_R1 = 1.



* [ERROR] Validate that each displayed population's percentage allocation totals 100%.
COMPUTE V_A49_3_2_R2 = 0.
IF (SUM(A49.3_2_8, A49.3_2_15, A49.3_2_16, A49.3_2_10, A49.3_2_9, A49.3_2_17, A49.3_2_18, A49.3_2_19, A49.3_2_5, A49.3_2_20, A49.3_2_21, A49.3_2_22, A49.3_2_23, A49.3_2_24, A49.3_2_25, A49.3_2_26, A49.3_2_27, A49.3_2_28, A49.3_2_1, A49.3_2_2, A49.3_2_3, A49.3_2_4, A49.3_2_6, A49.3_2_7, A49.3_2_11, A49.3_2_12, A49.3_2_96, A49.3_2_97, A49.3_2_98, A49.3_2_99) <> 100.0) V_A49_3_2_R2 = 1.




* Question A49.4.
* No validation generated: Informational parent heading; response fields and numeric targets are defined in A49.4_2.



* Question A49.4_1.
* No validation generated: Parser-generated placeholder with no response specification.



* Question A49.4_2.


* [ERROR] Validate percentage and month-entry cells against the documented numeric response bounds.
COMPUTE V_A49_4_2_R1 = 0.
IF ((NOT MISSING(A49.4_2) AND (A49.4_2 < 0.0 OR A49.4_2 > 100.0)) OR (NOT MISSING(A49.4_2) AND (A49.4_2 < 0.0 OR A49.4_2 > 100.0)) OR (NOT MISSING(TO) AND (TO < 0.0 OR TO > 100.0)) OR (NOT MISSING(A49.4_2) AND (A49.4_2 < 0.0 OR A49.4_2 > 100.0))) V_A49_4_2_R1 = 1.



* [ERROR] Validate that each displayed population's percentage allocation totals 100%.
COMPUTE V_A49_4_2_R2 = 0.
IF (SUM(A49.4_2_8, A49.4_2_16, A49.4_2_17, A49.4_2_10, A49.4_2_9, A49.4_2_18, A49.4_2_19, A49.4_2_20, A49.4_2_5, A49.4_2_21, A49.4_2_22, A49.4_2_25, A49.4_2_27, A49.4_2_28, A49.4_2_29, A49.4_2_23, A49.4_2_24, A49.4_2_26, A49.4_2_1, A49.4_2_2, A49.4_2_3, A49.4_2_4, A49.4_2_6, A49.4_2_7, A49.4_2_11, A49.4_2_12, A49.4_2_15, A49.4_2_96, A49.4_2_97, A49.4_2_98, A49.4_2_99) <> 100.0) V_A49_4_2_R2 = 1.




* Question A50.


* [ERROR] Validate all treatment-outcome percentage cells are whole percentages from 0 through 100.
COMPUTE V_A50_R1 = 0.
IF ((NOT MISSING(A50) AND (A50 < 0.0 OR A50 > 100.0)) OR (NOT MISSING(A50) AND (A50 < 0.0 OR A50 > 100.0)) OR (NOT MISSING(TO) AND (TO < 0.0 OR TO > 100.0)) OR (NOT MISSING(A50) AND (A50 < 0.0 OR A50 > 100.0))) V_A50_R1 = 1.



* [ERROR] Validate that each population's treatment-outcome percentages total 100%.
COMPUTE V_A50_R2 = 0.
IF (SUM(A50_4, A50_2, A50_3, A50_1) <> 100.0) V_A50_R2 = 1.




* Question A51.


* [ERROR] Validate timing-distribution entries are whole percentages from 0 through 100.
COMPUTE V_A51_R1 = 0.
IF ((NOT MISSING(A51) AND (A51 < 0.0 OR A51 > 100.0)) OR (NOT MISSING(A51) AND (A51 < 0.0 OR A51 > 100.0)) OR (NOT MISSING(TO) AND (TO < 0.0 OR TO > 100.0)) OR (NOT MISSING(A51) AND (A51 < 0.0 OR A51 > 100.0))) V_A51_R1 = 1.



* [ERROR] Validate that each population's timing percentages total 100%.
COMPUTE V_A51_R2 = 0.
IF (SUM(A51_1, A51_2, A51_3) <> 100.0) V_A51_R2 = 1.




* Question A52.


* [ERROR] Validate modality percentages are whole percentages from 0 through 100.
COMPUTE V_A52_R1 = 0.
IF ((NOT MISSING(A52) AND (A52 < 0.0 OR A52 > 100.0)) OR (NOT MISSING(A52) AND (A52 < 0.0 OR A52 > 100.0)) OR (NOT MISSING(TO) AND (TO < 0.0 OR TO > 100.0)) OR (NOT MISSING(A52) AND (A52 < 0.0 OR A52 > 100.0))) V_A52_R1 = 1.



* [ERROR] Validate that each population's modality percentages total 100%.
COMPUTE V_A52_R2 = 0.
IF (SUM(A52_2, A52_3, A52_4, A52_5, A52_6, A52_99) <> 100.0) V_A52_R2 = 1.




* Question A53.


* [ERROR] Validate HCT-type percentages are whole percentages from 0 through 100.
COMPUTE V_A53_R1 = 0.
IF ((NOT MISSING(A53) AND (A53 < 0.0 OR A53 > 100.0)) OR (NOT MISSING(A53) AND (A53 < 0.0 OR A53 > 100.0)) OR (NOT MISSING(TO) AND (TO < 0.0 OR TO > 100.0)) OR (NOT MISSING(A53) AND (A53 < 0.0 OR A53 > 100.0))) V_A53_R1 = 1.



* [ERROR] Validate that HCT-type percentages total 100% for each population.
COMPUTE V_A53_R2 = 0.
IF (SUM(A53_1, A53_2) <> 100.0) V_A53_R2 = 1.




* Question A53A.


* [ERROR] Validate the CAR-T eligibility percentage is a whole percentage from 0 through 100.
COMPUTE V_A53A_R1 = 0.
IF ((NOT MISSING(A53A) AND (A53A < 0.0 OR A53A > 100.0)) OR (NOT MISSING(A53A) AND (A53A < 0.0 OR A53A > 100.0)) OR (NOT MISSING(TO) AND (TO < 0.0 OR TO > 100.0)) OR (NOT MISSING(A53A) AND (A53A < 0.0 OR A53A > 100.0))) V_A53A_R1 = 1.




* Question A53B.


* [ERROR] Validate CAR-T outcome percentages are whole percentages from 0 through 100.
COMPUTE V_A53B_R1 = 0.
IF ((NOT MISSING(A53B) AND (A53B < 0.0 OR A53B > 100.0)) OR (NOT MISSING(A53B) AND (A53B < 0.0 OR A53B > 100.0)) OR (NOT MISSING(TO) AND (TO < 0.0 OR TO > 100.0)) OR (NOT MISSING(A53B) AND (A53B < 0.0 OR A53B > 100.0))) V_A53B_R1 = 1.



* [ERROR] Validate that CAR-T outcome percentages total 100%.
COMPUTE V_A53B_R2 = 0.
IF (SUM(A53B_1, A53B_2) <> 100.0) V_A53B_R2 = 1.




* Question A53.1.


* [ERROR] Validate response-outcome entries are whole percentages from 0 through 100.
COMPUTE V_A53_1_R1 = 0.
IF ((NOT MISSING(A53.1) AND (A53.1 < 0.0 OR A53.1 > 100.0)) OR (NOT MISSING(A53.1) AND (A53.1 < 0.0 OR A53.1 > 100.0)) OR (NOT MISSING(TO) AND (TO < 0.0 OR TO > 100.0)) OR (NOT MISSING(A53.1) AND (A53.1 < 0.0 OR A53.1 > 100.0))) V_A53_1_R1 = 1.



* [ERROR] Validate that each population's response-outcome percentages total 100%.
COMPUTE V_A53_1_R2 = 0.
IF (SUM(A53.1_1, A53.1_2, A53.1_3, A53.1_4, A53.1_5) <> 100.0) V_A53_1_R2 = 1.




* Question A54.1.
* No validation generated: Informational parent heading; response fields and numeric targets are defined in A54.1_2.



* Question A54.1_1.
* No validation generated: Parser-generated placeholder with no response specification.



* Question A54.1_2.


* [ERROR] Validate percentage and month-entry cells against the documented numeric response bounds.
COMPUTE V_A54_1_2_R1 = 0.
IF ((NOT MISSING(A54.1_2) AND (A54.1_2 < 0.0 OR A54.1_2 > 100.0)) OR (NOT MISSING(A54.1_2) AND (A54.1_2 < 0.0 OR A54.1_2 > 100.0)) OR (NOT MISSING(TO) AND (TO < 0.0 OR TO > 100.0)) OR (NOT MISSING(A54.1_2) AND (A54.1_2 < 0.0 OR A54.1_2 > 100.0))) V_A54_1_2_R1 = 1.



* [ERROR] Validate that each displayed population's percentage allocation totals 100%.
COMPUTE V_A54_1_2_R2 = 0.
IF (SUM(A54.1_2_45, A54.1_2_46, A54.1_2_47, A54.1_2_93, A54.1_2_48, A54.1_2_49, A54.1_2_94, A54.1_2_50, A54.1_2_51, A54.1_2_52, A54.1_2_53, A54.1_2_54, A54.1_2_55, A54.1_2_56, A54.1_2_57, A54.1_2_58, A54.1_2_59, A54.1_2_60, A54.1_2_61, A54.1_2_62, A54.1_2_63, A54.1_2_64, A54.1_2_65, A54.1_2_66, A54.1_2_67, A54.1_2_68, A54.1_2_69, A54.1_2_70, A54.1_2_71, A54.1_2_72, A54.1_2_73, A54.1_2_74, A54.1_2_75, A54.1_2_76, A54.1_2_77, A54.1_2_78, A54.1_2_79, A54.1_2_80, A54.1_2_81, A54.1_2_82, A54.1_2_83, A54.1_2_84, A54.1_2_85, A54.1_2_86, A54.1_2_87, A54.1_2_88, A54.1_2_89, A54.1_2_90, A54.1_2_91, A54.1_2_92, A54.1_2_96, A54.1_2_97, A54.1_2_98, A54.1_2_99) <> 100.0) V_A54_1_2_R2 = 1.




* Question A54.2.
* No validation generated: Informational parent heading; response fields and numeric targets are defined in A54.2_2.



* Question A54.2_1.
* No validation generated: Parser-generated placeholder with no response specification.



* Question A54.2_2.


* [ERROR] Validate percentage and month-entry cells against the documented numeric response bounds.
COMPUTE V_A54_2_2_R1 = 0.
IF ((NOT MISSING(A54.2_2) AND (A54.2_2 < 0.0 OR A54.2_2 > 100.0)) OR (NOT MISSING(A54.2_2) AND (A54.2_2 < 0.0 OR A54.2_2 > 100.0)) OR (NOT MISSING(TO) AND (TO < 0.0 OR TO > 100.0)) OR (NOT MISSING(A54.2_2) AND (A54.2_2 < 0.0 OR A54.2_2 > 100.0))) V_A54_2_2_R1 = 1.



* [ERROR] Validate that each displayed population's percentage allocation totals 100%.
COMPUTE V_A54_2_2_R2 = 0.
IF (SUM(A54.2_2_1, A54.2_2_2, A54.2_2_3, A54.2_2_4, A54.2_2_39, A54.2_2_5, A54.2_2_6, A54.2_2_7, A54.2_2_8, A54.2_2_9, A54.2_2_10, A54.2_2_11, A54.2_2_12, A54.2_2_13, A54.2_2_40, A54.2_2_14, A54.2_2_15, A54.2_2_16, A54.2_2_17, A54.2_2_18, A54.2_2_19, A54.2_2_20, A54.2_2_21, A54.2_2_22, A54.2_2_41, A54.2_2_23, A54.2_2_24, A54.2_2_25, A54.2_2_26, A54.2_2_27, A54.2_2_28, A54.2_2_29, A54.2_2_30, A54.2_2_31, A54.2_2_42, A54.2_2_32, A54.2_2_33, A54.2_2_34, A54.2_2_35, A54.2_2_36, A54.2_2_37, A54.2_2_38, A54.2_2_96, A54.2_2_97, A54.2_2_98, A54.2_2_99) <> 100.0) V_A54_2_2_R2 = 1.




* Question A54.3.
* No validation generated: Informational parent heading; response fields and numeric targets are defined in A54.3_2.



* Question A54.3_1.
* No validation generated: Parser-generated placeholder with no response specification.



* Question A54.3_2.


* [ERROR] Validate percentage and month-entry cells against the documented numeric response bounds.
COMPUTE V_A54_3_2_R1 = 0.
IF ((NOT MISSING(A54.3_2) AND (A54.3_2 < 0.0 OR A54.3_2 > 100.0)) OR (NOT MISSING(A54.3_2) AND (A54.3_2 < 0.0 OR A54.3_2 > 100.0)) OR (NOT MISSING(TO) AND (TO < 0.0 OR TO > 100.0)) OR (NOT MISSING(A54.3_2) AND (A54.3_2 < 0.0 OR A54.3_2 > 100.0))) V_A54_3_2_R1 = 1.



* [ERROR] Validate that each displayed population's percentage allocation totals 100%.
COMPUTE V_A54_3_2_R2 = 0.
IF (SUM(A54.3_2_1, A54.3_2_2, A54.3_2_3, A54.3_2_4, A54.3_2_5, A54.3_2_6, A54.3_2_7, A54.3_2_8, A54.3_2_9, A54.3_2_10, A54.3_2_11, A54.3_2_12, A54.3_2_13, A54.3_2_14, A54.3_2_15, A54.3_2_16, A54.3_2_17, A54.3_2_18, A54.3_2_19, A54.3_2_20, A54.3_2_21, A54.3_2_22, A54.3_2_23, A54.3_2_24, A54.3_2_25, A54.3_2_26, A54.3_2_27, A54.3_2_28, A54.3_2_29, A54.3_2_30, A54.3_2_31, A54.3_2_32, A54.3_2_33, A54.3_2_34, A54.3_2_35, A54.3_2_37, A54.3_2_38, A54.3_2_39, A54.3_2_40, A54.3_2_41, A54.3_2_42, A54.3_2_43, A54.3_2_96, A54.3_2_97, A54.3_2_98, A54.3_2_99) <> 100.0) V_A54_3_2_R2 = 1.




* Question A54.4.
* No validation generated: Informational parent heading; response fields and numeric targets are defined in A54.4_2.



* Question A54.4_1.
* No validation generated: Parser-generated placeholder with no response specification.



* Question A54.4_2.


* [ERROR] Validate percentage and month-entry cells against the documented numeric response bounds.
COMPUTE V_A54_4_2_R1 = 0.
IF ((NOT MISSING(A54.4_2) AND (A54.4_2 < 0.0 OR A54.4_2 > 100.0)) OR (NOT MISSING(A54.4_2) AND (A54.4_2 < 0.0 OR A54.4_2 > 100.0)) OR (NOT MISSING(TO) AND (TO < 0.0 OR TO > 100.0)) OR (NOT MISSING(A54.4_2) AND (A54.4_2 < 0.0 OR A54.4_2 > 100.0))) V_A54_4_2_R1 = 1.



* [ERROR] Validate that each displayed population's percentage allocation totals 100%.
COMPUTE V_A54_4_2_R2 = 0.
IF (SUM(A54.4_2_1, A54.4_2_2, A54.4_2_3, A54.4_2_4, A54.4_2_5, A54.4_2_6, A54.4_2_7, A54.4_2_8, A54.4_2_9, A54.4_2_10, A54.4_2_11, A54.4_2_12, A54.4_2_13, A54.4_2_14, A54.4_2_15, A54.4_2_16, A54.4_2_17, A54.4_2_18, A54.4_2_19, A54.4_2_20, A54.4_2_21, A54.4_2_22, A54.4_2_23, A54.4_2_24, A54.4_2_25, A54.4_2_26, A54.4_2_27, A54.4_2_36, A54.4_2_34, A54.4_2_35, A54.4_2_28, A54.4_2_29, A54.4_2_30, A54.4_2_31, A54.4_2_32, A54.4_2_33, A54.4_2_96, A54.4_2_97, A54.4_2_98, A54.4_2_99) <> 100.0) V_A54_4_2_R2 = 1.




* Question A54A.


* [ERROR] Responses must be whole-number percentages from 0 through 100.
COMPUTE V_A54A_R1 = 0.
IF ((NOT MISSING(A54A) AND NOT ANY(A54A, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100))) V_A54A_R1 = 1.




* Question A55.


* [ERROR] The required treatment-outcome grid must be completed.
COMPUTE V_A55_R1 = 0.
IF (MISSING(A55)) V_A55_R1 = 1.



* [ERROR] All treatment-outcome entries must be whole-number percentages from 0 through 100.
COMPUTE V_A55_R2 = 0.
IF ((NOT MISSING(A55) AND NOT ANY(A55, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100))) V_A55_R2 = 1.



* [ERROR] Each treatment-outcome column must total 100 percent.
COMPUTE V_A55_R3 = 0.
IF (SUM(A55_4, A55_2, A55_3, A55_1) <> 100.0) V_A55_R3 = 1.




* Question A56.


* [ERROR] The required timing-distribution grid must be completed.
COMPUTE V_A56_R1 = 0.
IF (MISSING(A56)) V_A56_R1 = 1.



* [ERROR] Timing entries must be whole-number percentages from 0 through 100.
COMPUTE V_A56_R2 = 0.
IF ((NOT MISSING(A56) AND NOT ANY(A56, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100))) V_A56_R2 = 1.



* [ERROR] Each age-group timing distribution must total 100 percent.
COMPUTE V_A56_R3 = 0.
IF (SUM(A56_1, A56_2, A56_3, A56_57) <> 100.0) V_A56_R3 = 1.




* Question A57.


* [ERROR] The required third-line modality distribution must be completed.
COMPUTE V_A57_R1 = 0.
IF (MISSING(A57)) V_A57_R1 = 1.



* [ERROR] Modality entries must be whole-number percentages from 0 through 100.
COMPUTE V_A57_R2 = 0.
IF ((NOT MISSING(A57) AND NOT ANY(A57, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100))) V_A57_R2 = 1.



* [ERROR] Each age-group modality distribution must total 100 percent.
COMPUTE V_A57_R3 = 0.
IF (SUM(A57_2, A57_3, A57_4, A57_5, A57_6, A57_99) <> 100.0) V_A57_R3 = 1.




* Question A58.


* [ERROR] The required HCT-type distribution must be completed.
COMPUTE V_A58_R1 = 0.
IF (MISSING(A58)) V_A58_R1 = 1.



* [ERROR] Each age-group HCT distribution must total 100 percent.
COMPUTE V_A58_R2 = 0.
IF (SUM(A58_1, A58_2) <> 100.0) V_A58_R2 = 1.




* Question A58A.


* [ERROR] The eligibility percentage must be a whole number from 0 through 100.
COMPUTE V_A58A_R1 = 0.
IF ((NOT MISSING(A58A) AND NOT ANY(A58A, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100))) V_A58A_R1 = 1.




* Question A58B.


* [ERROR] The required CAR-T disposition grid must be completed.
COMPUTE V_A58B_R1 = 0.
IF (MISSING(A58B)) V_A58B_R1 = 1.



* [ERROR] CAR-T receipt and non-receipt percentages must total 100 percent.
COMPUTE V_A58B_R2 = 0.
IF (SUM(A58B_1, A58B_2) <> 100.0) V_A58B_R2 = 1.




* Question A58.1.


* [ERROR] The required response-outcome grid must be completed.
COMPUTE V_A58_1_R1 = 0.
IF (MISSING(A58.1)) V_A58_1_R1 = 1.



* [ERROR] Each age-group response-outcome distribution must total 100 percent.
COMPUTE V_A58_1_R2 = 0.
IF (SUM(A58.1_1, A58.1_2, A58.1_3, A58.1_4, A58.1_5) <> 100.0) V_A58_1_R2 = 1.




* Question A59.1.
* No validation generated: The question describes a multi-column regimen grid, but the supplied canonical item does not identify the component variables needed to validate percentage, month, and cross-column consistency safely.



* Question A59.1_1.
* No validation generated: This is an unlabeled placeholder with no response content or validation evidence.



* Question A59.1_2.


* [ERROR] The required third-line regimen grid must be completed.
COMPUTE V_A59_1_2_R1 = 0.
IF (MISSING(A59.1_2)) V_A59_1_2_R1 = 1.



* [ERROR] Each age-group percentage-treated distribution must total 100 percent.
COMPUTE V_A59_1_2_R2 = 0.
IF (SUM(A59.1_2_50, A59.1_2_51, A59.1_2_52, A59.1_2_103, A59.1_2_53, A59.1_2_54, A59.1_2_104, A59.1_2_55, A59.1_2_56, A59.1_2_57, A59.1_2_58, A59.1_2_59, A59.1_2_60, A59.1_2_61, A59.1_2_62, A59.1_2_63, A59.1_2_64, A59.1_2_65, A59.1_2_66, A59.1_2_67, A59.1_2_68, A59.1_2_69, A59.1_2_70, A59.1_2_71, A59.1_2_72, A59.1_2_73, A59.1_2_74, A59.1_2_75, A59.1_2_76, A59.1_2_77, A59.1_2_78, A59.1_2_79, A59.1_2_80, A59.1_2_81, A59.1_2_82, A59.1_2_83, A59.1_2_84, A59.1_2_85, A59.1_2_86, A59.1_2_87, A59.1_2_88, A59.1_2_90, A59.1_2_91, A59.1_2_92, A59.1_2_93, A59.1_2_94, A59.1_2_95, A59.1_2_100, A59.1_2_101, A59.1_2_102, A59.1_2_96, A59.1_2_97, A59.1_2_98, A59.1_2_99) <> 100.0) V_A59_1_2_R2 = 1.




* Question A59.2.
* No validation generated: The question describes a multi-column regimen grid, but the supplied canonical item does not identify the component variables needed to validate percentage, month, and cross-column consistency safely.



* Question A59.2_1.
* No validation generated: This is an unlabeled placeholder with no response content or validation evidence.



* Question A59.2_2.


* [ERROR] The required regimen grid must be completed.
COMPUTE V_A59_2_2_R1 = 0.
IF (MISSING(A59.2_2)) V_A59_2_2_R1 = 1.



* [ERROR] Each age-group percentage-treated distribution must total 100 percent.
COMPUTE V_A59_2_2_R2 = 0.
IF (SUM(A59.2_2_1, A59.2_2_2, A59.2_2_3, A59.2_2_4, A59.2_2_40, A59.2_2_5, A59.2_2_6, A59.2_2_7, A59.2_2_8, A59.2_2_9, A59.2_2_10, A59.2_2_11, A59.2_2_12, A59.2_2_13, A59.2_2_41, A59.2_2_14, A59.2_2_15, A59.2_2_16, A59.2_2_17, A59.2_2_18, A59.2_2_19, A59.2_2_20, A59.2_2_21, A59.2_2_22, A59.2_2_42, A59.2_2_23, A59.2_2_24, A59.2_2_25, A59.2_2_26, A59.2_2_27, A59.2_2_28, A59.2_2_29, A59.2_2_30, A59.2_2_31, A59.2_2_32, A59.2_2_43, A59.2_2_33, A59.2_2_34, A59.2_2_35, A59.2_2_36, A59.2_2_37, A59.2_2_38, A59.2_2_39, A59.2_2_96, A59.2_2_97, A59.2_2_98, A59.2_2_99) <> 100.0) V_A59_2_2_R2 = 1.




* Question A59.3.
* No validation generated: The question describes a multi-column regimen grid, but the supplied canonical item does not identify the component variables needed to validate percentage, month, and cross-column consistency safely.



* Question A59.3_1.
* No validation generated: This is an unlabeled placeholder with no response content or validation evidence.



* Question A59.3_2.


* [ERROR] The required regimen grid must be completed.
COMPUTE V_A59_3_2_R1 = 0.
IF (MISSING(A59.3_2)) V_A59_3_2_R1 = 1.



* [ERROR] Each age-group percentage-treated distribution must total 100 percent.
COMPUTE V_A59_3_2_R2 = 0.
IF (SUM(A59.3_2_1, A59.3_2_2, A59.3_2_3, A59.3_2_4, A59.3_2_5, A59.3_2_6, A59.3_2_7, A59.3_2_8, A59.3_2_9, A59.3_2_10, A59.3_2_11, A59.3_2_12, A59.3_2_13, A59.3_2_14, A59.3_2_15, A59.3_2_16, A59.3_2_17, A59.3_2_18, A59.3_2_19, A59.3_2_20, A59.3_2_21, A59.3_2_22, A59.3_2_23, A59.3_2_24, A59.3_2_25, A59.3_2_26, A59.3_2_27, A59.3_2_28, A59.3_2_29, A59.3_2_30, A59.3_2_31, A59.3_2_32, A59.3_2_33, A59.3_2_34, A59.3_2_35, A59.3_2_36, A59.3_2_37, A59.3_2_38, A59.3_2_39, A59.3_2_40, A59.3_2_41, A59.3_2_42, A59.3_2_43, A59.3_2_44, A59.3_2_96, A59.3_2_97, A59.3_2_98, A59.3_2_99) <> 100.0) V_A59_3_2_R2 = 1.




* Question A59.4.
* No validation generated: The question describes a multi-column regimen grid, but the supplied canonical item does not identify the component variables needed to validate percentage, month, and cross-column consistency safely.



* Question A59.4_1.
* No validation generated: This is an unlabeled placeholder with no response content or validation evidence.



* Question A59.4_2.


* [ERROR] The required regimen grid must be completed.
COMPUTE V_A59_4_2_R1 = 0.
IF (MISSING(A59.4_2)) V_A59_4_2_R1 = 1.



* [ERROR] Each age-group percentage-treated distribution must total 100 percent.
COMPUTE V_A59_4_2_R2 = 0.
IF (SUM(A59.4_2_1, A59.4_2_2, A59.4_2_3, A59.4_2_4, A59.4_2_5, A59.4_2_6, A59.4_2_7, A59.4_2_8, A59.4_2_9, A59.4_2_10, A59.4_2_11, A59.4_2_12, A59.4_2_13, A59.4_2_14, A59.4_2_15, A59.4_2_16, A59.4_2_17, A59.4_2_18, A59.4_2_19, A59.4_2_20, A59.4_2_21, A59.4_2_22, A59.4_2_23, A59.4_2_24, A59.4_2_25, A59.4_2_26, A59.4_2_34, A59.4_2_35, A59.4_2_38, A59.4_2_36, A59.4_2_37, A59.4_2_27, A59.4_2_28, A59.4_2_29, A59.4_2_30, A59.4_2_31, A59.4_2_32, A59.4_2_33, A59.4_2_96, A59.4_2_97, A59.4_2_98, A59.4_2_99) <> 100.0) V_A59_4_2_R2 = 1.




* Question A60.


* [ERROR] The required treatment-outcome grid must be completed.
COMPUTE V_A60_R1 = 0.
IF (MISSING(A60)) V_A60_R1 = 1.



* [ERROR] Each treatment-outcome column must total 100 percent.
COMPUTE V_A60_R2 = 0.
IF (SUM(A60_4, A60_2, A60_3, A60_1) <> 100.0) V_A60_R2 = 1.




* Question A60.1.


* [ERROR] The required formulation-distribution grid must be completed.
COMPUTE V_A60_1_R1 = 0.
IF (MISSING(A60.1)) V_A60_1_R1 = 1.



* [ERROR] The formulation percentages must total 100 percent.
COMPUTE V_A60_1_R2 = 0.
IF (SUM(A60.1_1, A60.1_2, A60.1_3, A60.1_4, A60.1_5, A60.1_6, A60.1_7, A60.1_9, A60.1_8) <> 100.0) V_A60_1_R2 = 1.




* Question A60.2.
* No validation generated: The item contains both a percentage and a month-duration response, but the supplied canonical variable does not identify the two components separately; applying one numeric range would incorrectly constrain one of them.



* Question A61.


* [ERROR] The response must be a whole number from 0 through 100.
COMPUTE V_A61_R1 = 0.
IF ((NOT MISSING(A61) AND NOT ANY(A61, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100))) V_A61_R1 = 1.




* Question A62.
* No validation generated: The item contains only a display condition and no response content or supported answer validation.



* Question A63.


* [ERROR] Verify each entered progression-free-survival value is a whole number from 0 through 100.
COMPUTE V_A63_R1 = 0.
IF ((NOT MISSING(A63) AND NOT ANY(A63, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100))) V_A63_R1 = 1.




* Question A64.


* [ERROR] Verify that the response uses one of the documented A64 codes.
COMPUTE V_A64_R1 = 0.
IF ((NOT MISSING(A64) AND NOT ANY(A64, 1, 2, 3, 9))) V_A64_R1 = 1.




* Question A65.


* [ERROR] Verify that the response uses one of the documented A65 codes.
COMPUTE V_A65_R1 = 0.
IF ((NOT MISSING(A65) AND NOT ANY(A65, 1, 2, 3, 9))) V_A65_R1 = 1.




* Question A66.


* [WARNING] Validate the optional open-ended response field when text is provided.
COMPUTE V_A66_R1 = 0.
IF (MISSING(A66)) V_A66_R1 = 1.




* Question D1.
* No validation generated: A single-selection state response is specified, but the questionnaire does not provide the response codes or variables needed to validate the 50 states and Washington, DC.



* Question D2.


* [ERROR] Verify that the response is coded as 1 for agreement or 2 for non-agreement.
COMPUTE V_D2_R1 = 0.
IF ((NOT MISSING(D2) AND NOT ANY(D2, 1, 2))) V_D2_R1 = 1.




* Question JF1.


* [ERROR] Verify that the facility type uses one of the documented codes.
COMPUTE V_JF1_R1 = 0.
IF ((NOT MISSING(JF1) AND NOT ANY(JF1, 1, 2, 3, 4, 5, 6, 99))) V_JF1_R1 = 1.




* Question JF3.


* [ERROR] Verify that the facility-bed response uses one of the documented category or don't-know codes.
COMPUTE V_JF3_R1 = 0.
IF ((NOT MISSING(JF3) AND NOT ANY(JF3, 0, 1, 2, 3, 4, 5, 6, 7, 99))) V_JF3_R1 = 1.




* Question JF4.


* [ERROR] Verify that the age-group response uses one of the documented codes.
COMPUTE V_JF4_R1 = 0.
IF ((NOT MISSING(JF4) AND NOT ANY(JF4, 1, 2, 3, 4, 5, 9))) V_JF4_R1 = 1.




* Question JF5.


* [ERROR] Validate the multi-response association-membership selection against the documented options.
!MULTI_B qnt=JF5 ctr=12.
COMPUTE V_JF5_R1 = 0.
IF ((NOT MISSING(JF5_1) AND NOT ANY(JF5_1, 0, 1)) OR (NOT MISSING(JF5_3) AND NOT ANY(JF5_3, 0, 1)) OR (NOT MISSING(JF5_5) AND NOT ANY(JF5_5, 0, 1)) OR (NOT MISSING(JF5_6) AND NOT ANY(JF5_6, 0, 1)) OR (NOT MISSING(JF5_15) AND NOT ANY(JF5_15, 0, 1)) OR (NOT MISSING(JF5_16) AND NOT ANY(JF5_16, 0, 1)) OR (NOT MISSING(JF5_13) AND NOT ANY(JF5_13, 0, 1)) OR (NOT MISSING(JF5_8) AND NOT ANY(JF5_8, 0, 1)) OR (NOT MISSING(JF5_14) AND NOT ANY(JF5_14, 0, 1)) OR (NOT MISSING(JF5_9) AND NOT ANY(JF5_9, 0, 1)) OR (NOT MISSING(JF5_11) AND NOT ANY(JF5_11, 0, 1)) OR (NOT MISSING(JF5_12) AND NOT ANY(JF5_12, 0, 1))) V_JF5_R1 = 1.



* [ERROR] Verify that no association is selected together with the exclusive no-membership response.
COMPUTE V_JF5_R2 = 0.
IF (SUM(JF5_12) > 0 AND SUM(JF5_1, JF5_3, JF5_5, JF5_6, JF5_15, JF5_16, JF5_13, JF5_8, JF5_14, JF5_9, JF5_11, JF5_12) > 1) V_JF5_R2 = 1.




* Question JF6.


* [ERROR] Verify that the guideline/source response uses one of the documented codes for the applicable version.
COMPUTE V_JF6_R1 = 0.
IF ((NOT MISSING(JF6) AND NOT ANY(JF6, 1, 2, 3, 4, 5, 6, 9, 99))) V_JF6_R1 = 1.




* Question JF7.


* [ERROR] Verify that the practice-region response uses one of the eight documented regional codes.
COMPUTE V_JF7_R1 = 0.
IF ((NOT MISSING(JF7) AND NOT ANY(JF7, 1, 2, 3, 4, 5, 6, 7, 8))) V_JF7_R1 = 1.





*===============================================================================.
* FINAL VALIDATION SUMMARY.
*===============================================================================.
COMPUTE VALIDATION_OVERALL = MAX(V_JF9_INVALID_CODES, V_JF9_SCREEN_OUT, V_S0A_MANDATORY, V_S0A_INVALID_CODES, V_S0B_MANDATORY, V_S0B_MULTIPLE_RESPONSE, V_S1_MANDATORY, V_S1_INVALID_CODES, V_S1_1_MANDATORY, V_S1_1_INVALID_CODES, V_S2_NUMERIC_RANGE, V_S3_MANDATORY, V_S3_INVALID_CODES, V_S4_MANDATORY, V_S4_NUMERIC_RANGE, V_H1A_NUMERIC_RANGE, V_H1B_SUM_TO_H1A, V_A1A_NUMERIC_RANGE, V_A1B_SUM_TO_A1A, V_S4_1_MANDATORY, V_S4_1_INVALID_CODES, V_S4_2_MANDATORY, V_S4_2_INVALID_CODES, V_S6_MULTIPLE_RESPONSE, V_S6_EXCLUSIVE_99, V_S7_NUMERIC_RANGE, V_S7_PERCENTAGE_TOTAL, V_S7_1_NUMERIC_RANGE, V_S7_1_PERCENTAGE_TOTAL, V_CS1_MANDATORY, V_CS1_INVALID_CODES, V_HX1_NUMERIC_RANGE, V_H1_NUMERIC_RANGE, V_H1_PERCENTAGE_TOTAL, V_H2_NUMERIC_RANGE, V_H2_PERCENTAGE_TOTAL, V_H3_NUMERIC_RANGE, V_H3_PERCENTAGE_TOTAL, V_H5_NUMERIC_RANGE, V_H6_NUM_001, V_H6_ROUTE_002, V_H61_NUM_001, V_H61_SUM_002, V_H71_NUM_001, V_H71_MONTH_002, V_H71_SUM_003, V_H72_NUM_001, V_H72_MONTH_002, V_H72_SUM_003, V_H73_NUM_001, V_H73_MONTH_002, V_H73_SUM_003, V_H74_NUM_001, V_H74_MONTH_002, V_H74_SUM_003, V_H81_NUM_001, V_H81_MONTH_002, V_H81_SUM_003, V_H82_NUM_001, V_H82_MONTH_002, V_H82_SUM_003, V_H83_NUM_001, V_H83_MONTH_002, V_H83_SUM_003, V_H84_NUM_001, V_H84_MONTH_002, V_H84_SUM_003, V_H8AX_NUM_001, V_H8AX_SUM_002, V_H8A_MAND_001, V_H9_NUM_001, V_H9_SUM_002, V_H10_NUM_001, V_H10_SUM_002, V_H11_NUM_001, V_H11_SUM_002, V_H12_NUM_001, V_H12_SUM_002, V_H201_NUM_001, V_H201_MONTH_002, V_H201_SUM_003, V_H202_NUM_001, V_H202_MONTH_002, V_H202_SUM_003, V_H203_NUM_001, V_H203_MONTH_002, V_H203_SUM_003, V_H204_NUM_001, V_H204_MONTH_002, V_H204_SUM_003, V_H204A_NUM_001, V_H204A_MONTH_002, V_H204A_SUM_003, V_H21_NUM_001, V_H21_SUM_002, V_H22_NUM_001, V_H22_SUM_002, V_H23_NUM_001, V_H23_SUM_002, V_H24_NUM_001, V_H24_SUM_002, V_H25_1_MANDATORY, V_H25_1_RANGE, V_H25_1_TOTAL, V_H25_2_MANDATORY, V_H25_2_RANGE, V_H25_2_TOTAL, V_H25_3_MANDATORY, V_H25_3_RANGE, V_H25_3_TOTAL, V_H25_4_MANDATORY, V_H25_4_RANGE, V_H25_4_TOTAL, V_H25_4A_MANDATORY, V_H25_4A_RANGE, V_H25_4A_TOTAL, V_H26_RANGE, V_H26_TOTAL, V_H27_RANGE, V_H27_TOTAL, V_H13_RANGE, V_H14_1_RANGE, V_H14_1_TOTAL, V_H14_2_RANGE, V_H14_2_TOTAL, V_H14_3_RANGE, V_H14_3_TOTAL, V_H14_4_RANGE, V_H14_4_TOTAL, V_H28_RANGE, V_H28_TOTAL, V_H29_RANGE, V_H30_RANGE, V_H30_TOTAL, V_H31_RANGE, V_A1_MANDATORY, V_A1_RANGE, V_A1_TOTAL, V_A2_2_RANGE, V_A2_2_TOTAL, V_A2_1_RANGE, V_A2_1_TOTAL, V_X1_1_RANGE, V_A3_MANDATORY, V_A3_RANGE, V_A3_TOTAL, V_A4_MANDATORY, V_A4_RANGE, V_A4_TOTAL, V_A5_RANGE, V_A6_R1, V_A7_R1, V_A7_R2, V_A7_R3, V_A10_R1, V_A11_1_R1, V_A11_1_2_R2, V_A11_2_R1, V_A11_2_2_R2, V_A11_3_R1, V_A11_3_2_R2, V_A11_4_R1, V_A11_4_2_R2, V_A11A_R2, V_A11A_R3, V_A12A_R1, V_A12_R1, V_A12_1_R1, V_A12_1_2_R1, V_A12_1_2_R2, V_A12_2_R1, V_A12_2_2_R1, V_A12_2_2_R2, V_A12_3_R1, V_A12_3_2_MANDATORY, V_A12_3_2_TOTAL, V_A12_4_2_MANDATORY, V_A12_4_2_TOTAL, V_A13_1_2_MANDATORY, V_A13_1_2_TOTAL, V_A13_2_2_MANDATORY, V_A13_2_2_TOTAL, V_A13_3_2_MANDATORY, V_A13_3_2_TOTAL, V_A13_4_2_MANDATORY, V_A13_4_2_TOTAL, V_A14_1_2_MANDATORY, V_A14_1_2_TOTAL, V_A14_2_2_MANDATORY, V_A14_2_2_TOTAL, V_A14_3_2_R1, V_A14_3_2_R2, V_A14_4_R1, V_A14_4_2_R1, V_A14_4_2_R2, V_A15_R1, V_A15_R2, V_A16_R1, V_A16_R2, V_A17_R1, V_A17_R2, V_A18_R1, V_A18_R2, V_A18A_R1, V_A18B_R1, V_A18B_R2, V_A18_1_R1, V_A18_1_R2, V_A19_1_R1, V_A19_1_2_R1, V_A19_1_2_R2, V_A19_2_R1, V_A19_2_2_R1, V_A19_2_2_R2, V_A19_3_R1, V_A19_3_2_R1, V_A19_3_2_R2, V_A19_4_R1, V_A19_4_2_R1, V_A19_4_2_R2, V_A19A_R1, V_A20_R1, V_A20_R2, V_A20_R3, V_A21_R1, V_A21_R2, V_A21_R3, V_A22_R1, V_A22_R2, V_A22_R3, V_A23_R1, V_A23_R2, V_A23_R3, V_A23A_R1, V_A23B_R1, V_A23B_R2, V_A23B_R3, V_A23_1_R1, V_A23_1_R2, V_A23_1_R3, V_A24_1_2_R1, V_A24_1_2_R2, V_A24_1_2_R3, V_A24_2_2_R1, V_A24_2_2_R2, V_A24_2_2_R3, V_A24_3_2_R1, V_A24_3_2_R2, V_A24_3_2_R3, V_A24_4_2_R1, V_A24_4_2_R2, V_A24_4_2_R3, V_A25_R1, V_A25_R2, V_A25_R3, V_A29_R1, V_A40_R1, V_A40_R2, V_A40_R3, V_A41_R1, V_A41_R2, V_A41_R3, V_A41_1_R1, V_A41_2_R1, V_A42_R1, V_A42_R2, V_A45_R1, V_A46_1_R1, V_A46_1_R2, V_A46_1_2_R1, V_A46_1_2_R2, V_A46_2_R1, V_A46_2_R2, V_A46_2_2_R1, V_A46_2_2_R2, V_A46_3_R1, V_A46_3_R2, V_A46_3_2_R1, V_A46_3_2_R2, V_A46_4_R1, V_A46_4_R2, V_A46_4_2_R1, V_A46_4_2_R2, V_A46A_R1, V_A46C_R1, V_A46C_R2, V_A46B_R1, V_A47_1_R1, V_A47_1_R2, V_A47_1_2_R1, V_A47_1_2_R2, V_A47_2_R1, V_A47_2_R2, V_A47_2_2_TOTAL, V_A47_3_2_TOTAL, V_A47_4_2_TOTAL, V_A48_1_2_TOTAL, V_A48_2_2_TOTAL, V_A48_3_2_TOTAL, V_A48_4_2_TOTAL, V_A49_1_2_TOTAL, V_A49_2_2_TOTAL, V_A49_3_2_R1, V_A49_3_2_R2, V_A49_4_2_R1, V_A49_4_2_R2, V_A50_R1, V_A50_R2, V_A51_R1, V_A51_R2, V_A52_R1, V_A52_R2, V_A53_R1, V_A53_R2, V_A53A_R1, V_A53B_R1, V_A53B_R2, V_A53_1_R1, V_A53_1_R2, V_A54_1_2_R1, V_A54_1_2_R2, V_A54_2_2_R1, V_A54_2_2_R2, V_A54_3_2_R1, V_A54_3_2_R2, V_A54_4_2_R1, V_A54_4_2_R2, V_A54A_R1, V_A55_R1, V_A55_R2, V_A55_R3, V_A56_R1, V_A56_R2, V_A56_R3, V_A57_R1, V_A57_R2, V_A57_R3, V_A58_R1, V_A58_R2, V_A58A_R1, V_A58B_R1, V_A58B_R2, V_A58_1_R1, V_A58_1_R2, V_A59_1_2_R1, V_A59_1_2_R2, V_A59_2_2_R1, V_A59_2_2_R2, V_A59_3_2_R1, V_A59_3_2_R2, V_A59_4_2_R1, V_A59_4_2_R2, V_A60_R1, V_A60_R2, V_A60_1_R1, V_A60_1_R2, V_A61_R1, V_A63_R1, V_A64_R1, V_A65_R1, V_A66_R1, V_D2_R1, V_JF1_R1, V_JF3_R1, V_JF4_R1, V_JF5_R1, V_JF5_R2, V_JF6_R1, V_JF7_R1).
FREQUENCIES VARIABLES=V_JF9_INVALID_CODES V_JF9_SCREEN_OUT V_S0A_MANDATORY V_S0A_INVALID_CODES V_S0B_MANDATORY V_S0B_MULTIPLE_RESPONSE V_S1_MANDATORY V_S1_INVALID_CODES V_S1_1_MANDATORY V_S1_1_INVALID_CODES V_S2_NUMERIC_RANGE V_S3_MANDATORY V_S3_INVALID_CODES V_S4_MANDATORY V_S4_NUMERIC_RANGE V_H1A_NUMERIC_RANGE V_H1B_SUM_TO_H1A V_A1A_NUMERIC_RANGE V_A1B_SUM_TO_A1A V_S4_1_MANDATORY V_S4_1_INVALID_CODES V_S4_2_MANDATORY V_S4_2_INVALID_CODES V_S6_MULTIPLE_RESPONSE V_S6_EXCLUSIVE_99 V_S7_NUMERIC_RANGE V_S7_PERCENTAGE_TOTAL V_S7_1_NUMERIC_RANGE V_S7_1_PERCENTAGE_TOTAL V_CS1_MANDATORY V_CS1_INVALID_CODES V_HX1_NUMERIC_RANGE V_H1_NUMERIC_RANGE V_H1_PERCENTAGE_TOTAL V_H2_NUMERIC_RANGE V_H2_PERCENTAGE_TOTAL V_H3_NUMERIC_RANGE V_H3_PERCENTAGE_TOTAL V_H5_NUMERIC_RANGE V_H6_NUM_001 V_H6_ROUTE_002 V_H61_NUM_001 V_H61_SUM_002 V_H71_NUM_001 V_H71_MONTH_002 V_H71_SUM_003 V_H72_NUM_001 V_H72_MONTH_002 V_H72_SUM_003 V_H73_NUM_001 V_H73_MONTH_002 V_H73_SUM_003 V_H74_NUM_001 V_H74_MONTH_002 V_H74_SUM_003 V_H81_NUM_001 V_H81_MONTH_002 V_H81_SUM_003 V_H82_NUM_001 V_H82_MONTH_002 V_H82_SUM_003 V_H83_NUM_001 V_H83_MONTH_002 V_H83_SUM_003 V_H84_NUM_001 V_H84_MONTH_002 V_H84_SUM_003 V_H8AX_NUM_001 V_H8AX_SUM_002 V_H8A_MAND_001 V_H9_NUM_001 V_H9_SUM_002 V_H10_NUM_001 V_H10_SUM_002 V_H11_NUM_001 V_H11_SUM_002 V_H12_NUM_001 V_H12_SUM_002 V_H201_NUM_001 V_H201_MONTH_002 V_H201_SUM_003 V_H202_NUM_001 V_H202_MONTH_002 V_H202_SUM_003 V_H203_NUM_001 V_H203_MONTH_002 V_H203_SUM_003 V_H204_NUM_001 V_H204_MONTH_002 V_H204_SUM_003 V_H204A_NUM_001 V_H204A_MONTH_002 V_H204A_SUM_003 V_H21_NUM_001 V_H21_SUM_002 V_H22_NUM_001 V_H22_SUM_002 V_H23_NUM_001 V_H23_SUM_002 V_H24_NUM_001 V_H24_SUM_002 V_H25_1_MANDATORY V_H25_1_RANGE V_H25_1_TOTAL V_H25_2_MANDATORY V_H25_2_RANGE V_H25_2_TOTAL V_H25_3_MANDATORY V_H25_3_RANGE V_H25_3_TOTAL V_H25_4_MANDATORY V_H25_4_RANGE V_H25_4_TOTAL V_H25_4A_MANDATORY V_H25_4A_RANGE V_H25_4A_TOTAL V_H26_RANGE V_H26_TOTAL V_H27_RANGE V_H27_TOTAL V_H13_RANGE V_H14_1_RANGE V_H14_1_TOTAL V_H14_2_RANGE V_H14_2_TOTAL V_H14_3_RANGE V_H14_3_TOTAL V_H14_4_RANGE V_H14_4_TOTAL V_H28_RANGE V_H28_TOTAL V_H29_RANGE V_H30_RANGE V_H30_TOTAL V_H31_RANGE V_A1_MANDATORY V_A1_RANGE V_A1_TOTAL V_A2_2_RANGE V_A2_2_TOTAL V_A2_1_RANGE V_A2_1_TOTAL V_X1_1_RANGE V_A3_MANDATORY V_A3_RANGE V_A3_TOTAL V_A4_MANDATORY V_A4_RANGE V_A4_TOTAL V_A5_RANGE V_A6_R1 V_A7_R1 V_A7_R2 V_A7_R3 V_A10_R1 V_A11_1_R1 V_A11_1_2_R2 V_A11_2_R1 V_A11_2_2_R2 V_A11_3_R1 V_A11_3_2_R2 V_A11_4_R1 V_A11_4_2_R2 V_A11A_R2 V_A11A_R3 V_A12A_R1 V_A12_R1 V_A12_1_R1 V_A12_1_2_R1 V_A12_1_2_R2 V_A12_2_R1 V_A12_2_2_R1 V_A12_2_2_R2 V_A12_3_R1 V_A12_3_2_MANDATORY V_A12_3_2_TOTAL V_A12_4_2_MANDATORY V_A12_4_2_TOTAL V_A13_1_2_MANDATORY V_A13_1_2_TOTAL V_A13_2_2_MANDATORY V_A13_2_2_TOTAL V_A13_3_2_MANDATORY V_A13_3_2_TOTAL V_A13_4_2_MANDATORY V_A13_4_2_TOTAL V_A14_1_2_MANDATORY V_A14_1_2_TOTAL V_A14_2_2_MANDATORY V_A14_2_2_TOTAL V_A14_3_2_R1 V_A14_3_2_R2 V_A14_4_R1 V_A14_4_2_R1 V_A14_4_2_R2 V_A15_R1 V_A15_R2 V_A16_R1 V_A16_R2 V_A17_R1 V_A17_R2 V_A18_R1 V_A18_R2 V_A18A_R1 V_A18B_R1 V_A18B_R2 V_A18_1_R1 V_A18_1_R2 V_A19_1_R1 V_A19_1_2_R1 V_A19_1_2_R2 V_A19_2_R1 V_A19_2_2_R1 V_A19_2_2_R2 V_A19_3_R1 V_A19_3_2_R1 V_A19_3_2_R2 V_A19_4_R1 V_A19_4_2_R1 V_A19_4_2_R2 V_A19A_R1 V_A20_R1 V_A20_R2 V_A20_R3 V_A21_R1 V_A21_R2 V_A21_R3 V_A22_R1 V_A22_R2 V_A22_R3 V_A23_R1 V_A23_R2 V_A23_R3 V_A23A_R1 V_A23B_R1 V_A23B_R2 V_A23B_R3 V_A23_1_R1 V_A23_1_R2 V_A23_1_R3 V_A24_1_2_R1 V_A24_1_2_R2 V_A24_1_2_R3 V_A24_2_2_R1 V_A24_2_2_R2 V_A24_2_2_R3 V_A24_3_2_R1 V_A24_3_2_R2 V_A24_3_2_R3 V_A24_4_2_R1 V_A24_4_2_R2 V_A24_4_2_R3 V_A25_R1 V_A25_R2 V_A25_R3 V_A29_R1 V_A40_R1 V_A40_R2 V_A40_R3 V_A41_R1 V_A41_R2 V_A41_R3 V_A41_1_R1 V_A41_2_R1 V_A42_R1 V_A42_R2 V_A45_R1 V_A46_1_R1 V_A46_1_R2 V_A46_1_2_R1 V_A46_1_2_R2 V_A46_2_R1 V_A46_2_R2 V_A46_2_2_R1 V_A46_2_2_R2 V_A46_3_R1 V_A46_3_R2 V_A46_3_2_R1 V_A46_3_2_R2 V_A46_4_R1 V_A46_4_R2 V_A46_4_2_R1 V_A46_4_2_R2 V_A46A_R1 V_A46C_R1 V_A46C_R2 V_A46B_R1 V_A47_1_R1 V_A47_1_R2 V_A47_1_2_R1 V_A47_1_2_R2 V_A47_2_R1 V_A47_2_R2 V_A47_2_2_TOTAL V_A47_3_2_TOTAL V_A47_4_2_TOTAL V_A48_1_2_TOTAL V_A48_2_2_TOTAL V_A48_3_2_TOTAL V_A48_4_2_TOTAL V_A49_1_2_TOTAL V_A49_2_2_TOTAL V_A49_3_2_R1 V_A49_3_2_R2 V_A49_4_2_R1 V_A49_4_2_R2 V_A50_R1 V_A50_R2 V_A51_R1 V_A51_R2 V_A52_R1 V_A52_R2 V_A53_R1 V_A53_R2 V_A53A_R1 V_A53B_R1 V_A53B_R2 V_A53_1_R1 V_A53_1_R2 V_A54_1_2_R1 V_A54_1_2_R2 V_A54_2_2_R1 V_A54_2_2_R2 V_A54_3_2_R1 V_A54_3_2_R2 V_A54_4_2_R1 V_A54_4_2_R2 V_A54A_R1 V_A55_R1 V_A55_R2 V_A55_R3 V_A56_R1 V_A56_R2 V_A56_R3 V_A57_R1 V_A57_R2 V_A57_R3 V_A58_R1 V_A58_R2 V_A58A_R1 V_A58B_R1 V_A58B_R2 V_A58_1_R1 V_A58_1_R2 V_A59_1_2_R1 V_A59_1_2_R2 V_A59_2_2_R1 V_A59_2_2_R2 V_A59_3_2_R1 V_A59_3_2_R2 V_A59_4_2_R1 V_A59_4_2_R2 V_A60_R1 V_A60_R2 V_A60_1_R1 V_A60_1_R2 V_A61_R1 V_A63_R1 V_A64_R1 V_A65_R1 V_A66_R1 V_D2_R1 V_JF1_R1 V_JF3_R1 V_JF4_R1 V_JF5_R1 V_JF5_R2 V_JF6_R1 V_JF7_R1 VALIDATION_OVERALL.

* MODEL WARNINGS.
* The canonical question data contains inconsistent or incomplete option text for some questions, notably CS2; uncertain code validation was omitted there.
* Conditional routing involving geography and hidden quota variables was not converted into rules where the required existing filter variables were not supplied.
* Repaired numeric range rule S2_numeric_range from explicit questionnaire bounds.
* Repaired numeric range rule S4_numeric_range from explicit questionnaire bounds.
* Repaired numeric range rule H1A_numeric_range from explicit questionnaire bounds.
* Omitted incomplete model rule: Rule H1B_numeric_range requires variables and a range or allowed_values.
* Repaired numeric range rule A1A_numeric_range from explicit questionnaire bounds.
* Omitted incomplete model rule: Rule A1B_numeric_range requires variables and a range or allowed_values.
* Repaired numeric range rule S7_numeric_range from explicit questionnaire bounds.
* Repaired numeric range rule S7_1_numeric_range from explicit questionnaire bounds.
* Repaired numeric range rule HX1_numeric_range from explicit questionnaire bounds.
* Repaired numeric range rule H1_numeric_range from explicit questionnaire bounds.
* Repaired numeric range rule H2_numeric_range from explicit questionnaire bounds.
* Repaired numeric range rule H3_numeric_range from explicit questionnaire bounds.
* Repaired numeric range rule H5_numeric_range from explicit questionnaire bounds.
* The questionnaire describes paired percentage/month fields and row-level blank-or-zero dependencies for H25.1-H25.4A and H14.1-H14.4, but supplies only base variables; those column-level and row-level checks cannot be represented deterministically without the expanded variable names.
* The questionnaire includes conditional display logic using variables such as H2, H5, H9, H11, H21, H23, A2_1, and A2_2; checks are limited to totals and ranges on the supplied base variables.
* The supplied batch contains mixed percent and months columns under shared base variables; separate range rules for the two column types were omitted where their underlying child variable names were not supplied.
* Explicit row-level blank/zero-to-month consistency instructions were not converted into rules because the questionnaire does not provide separate underlying variable names for the paired cells.
* Omitted unsafe model rule: Rule A11.1_2-R1 references unknown variables: ['A3_1_3-6'].
* Omitted unsafe model rule: Rule A11.2_2-R1 references unknown variables: ['A3_1_3-6'].
* Omitted unsafe model rule: Rule A11.3_2-R1 references unknown variables: ['A3_1_3-6'].
* Omitted unsafe model rule: Rule A11.4_2-R1 references unknown variables: ['A3_1_3-6'].
* Omitted unsafe model rule: Rule A11A-R1 references unknown variables: ['A3_1_3-6'].
* The questionnaire specifies percentage and month ranges, blank-or-zero percentage versus month consistency, and identical-column quality checks. These checks were not emitted where the canonical batch does not expose separate target variables for the embedded grid cells.
* Country-specific display conditions are present but the questionnaire does not provide country variables in this batch; no country-based routing rules were created.
* The questionnaire supplies percentage and month ranges within shared grid questions, but the canonical base variables do not expose separate percentage and month variables; only supported total and mandatory checks were emitted for those grids.
* The questionnaire specifies separate percentage and month columns in the A24.1_2, A24.2_2, A24.3_2, and A24.4_2 grids, but supplies only one base variable for each grid. Percentage-range and total checks are represented; month-column and row-level percentage/month dependency checks are omitted because their target variables are not provided.
* Conditional display logic is described for several questions, but the supplied questionnaire does not identify corresponding SPSS filter variables; no macro filters were emitted.
* The supplied matrix questions combine percentage and months columns under a single canonical variable; month-specific validations were omitted because separate column variables were not supplied.
* A46D has no explicit numeric range or total constraint in the supplied questionnaire evidence.
* The supplied grid variables combine percentage and actual-month columns under a single base variable; separate column-level validation is therefore represented conservatively with two numeric-range rules on the base variable.
* The questionnaire specifies conditional display predicates for pediatric and adult columns, but the supplied canonical variables do not identify separate column variables; no structured routing rule was emitted.
* Omitted incomplete model rule: Rule A47.2_2_PCT_RANGE requires variables and a range or allowed_values.
* Omitted incomplete model rule: Rule A47.2_2_MONTH_RANGE requires variables and a range or allowed_values.
* Omitted incomplete model rule: Rule A47.3_2_PCT_RANGE requires variables and a range or allowed_values.
* Omitted incomplete model rule: Rule A47.3_2_MONTH_RANGE requires variables and a range or allowed_values.
* Omitted incomplete model rule: Rule A47.4_2_PCT_RANGE requires variables and a range or allowed_values.
* Omitted incomplete model rule: Rule A47.4_2_MONTH_RANGE requires variables and a range or allowed_values.
* Omitted incomplete model rule: Rule A48.1_2_PCT_RANGE requires variables and a range or allowed_values.
* Omitted incomplete model rule: Rule A48.1_2_MONTH_RANGE requires variables and a range or allowed_values.
* Omitted incomplete model rule: Rule A48.2_2_PCT_RANGE requires variables and a range or allowed_values.
* Omitted incomplete model rule: Rule A48.2_2_MONTH_RANGE requires variables and a range or allowed_values.
* Omitted incomplete model rule: Rule A48.3_2_PCT_RANGE requires variables and a range or allowed_values.
* Omitted incomplete model rule: Rule A48.3_2_MONTH_RANGE requires variables and a range or allowed_values.
* Omitted incomplete model rule: Rule A48.4_2_PCT_RANGE requires variables and a range or allowed_values.
* Omitted incomplete model rule: Rule A48.4_2_MONTH_RANGE requires variables and a range or allowed_values.
* Omitted incomplete model rule: Rule A49.1_2_PCT_RANGE requires variables and a range or allowed_values.
* Omitted incomplete model rule: Rule A49.1_2_MONTH_RANGE requires variables and a range or allowed_values.
* Omitted incomplete model rule: Rule A49.2_2_PCT_RANGE requires variables and a range or allowed_values.
* Omitted incomplete model rule: Rule A49.2_2_MONTH_RANGE requires variables and a range or allowed_values.
* The questionnaire documents row-level dependencies between percentage and months cells, but the canonical batch supplies only base grid variables, so those row-level conditional checks are not emitted.
* The questionnaire specifies country- and routing-dependent display conditions, but no country variable or existing filter variable is supplied; no filter-based macro checks are emitted.
* Several regimen-grid items expose only a base variable while containing separate percentage and month columns; component-level range and cross-column checks were omitted where they could not be represented safely.
* A54A contains an OR display condition, but the structured applicability representation does not safely encode the supplied OR logic, so only the numeric range check was retained.
* Omitted unsafe model rule: Rule A61-R2 references unknown variables: ['A2_1-3_2'].
* A63 contains conditional display logic, but the supplied routing text contains multiple alternative pathways and malformed age text; no routing rule was emitted.
* JF5 is conditionally asked using S4_1, which does not exactly match a supplied canonical variable; no routing rule was emitted.
* JF6 contains two masked versions and inconsistent routing variable text; no routing rule was emitted.
* JF5_12 is used only as the deterministic option-variable convention for the documented exclusive code 12.

* MODEL NOTES.
* Numeric range bounds are taken directly from the questionnaire text. Conditional display logic is retained only where it can be represented by the supplied structured predicates.

EXECUTE.
