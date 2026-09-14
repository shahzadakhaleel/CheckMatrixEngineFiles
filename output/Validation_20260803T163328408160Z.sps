* Encoding: UTF-8.
* Generated deterministically by Survey Programming AI.
* Source: (V12_R76681) HL ALL SURVEY 2025.docx.
TITLE 'REMINDER: NO TRACKED CHANGES. ONLY MARK-UP'.



*===============================================================================.
* SECTION MAIN: Questionnaire.
*===============================================================================.

* Question V2.
* No validation generated: Internal monitor-list and programming instruction; not a respondent-facing question.



* Question JF9.


* [ERROR] Response must be Yes or No.
COMPUTE V_JF9_INVALID_CODES = 0.
IF ((NOT MISSING(JF9) AND NOT ANY(JF9, 1, 2))) V_JF9_INVALID_CODES = 1.



* [ERROR] Terminate respondents who answer Yes.
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



* [ERROR] Selected countries must be valid multi-response codes.
!MULTI_A svar=S0B.
COMPUTE V_S0B_MULTI_RESPONSE = 0.
IF ((NOT MISSING(S0B_1) AND NOT ANY(S0B_1, 0, 1)) OR (NOT MISSING(S0B_2) AND NOT ANY(S0B_2, 0, 1)) OR (NOT MISSING(S0B_3) AND NOT ANY(S0B_3, 0, 1)) OR (NOT MISSING(S0B_4) AND NOT ANY(S0B_4, 0, 1)) OR (NOT MISSING(S0B_5) AND NOT ANY(S0B_5, 0, 1)) OR (NOT MISSING(S0B_6) AND NOT ANY(S0B_6, 0, 1)) OR (NOT MISSING(S0B_7) AND NOT ANY(S0B_7, 0, 1))) V_S0B_MULTI_RESPONSE = 1.




* Question S1.


* [ERROR] A primary specialty or department must be selected.
COMPUTE V_S1_MANDATORY = 0.
IF (MISSING(S1)) V_S1_MANDATORY = 1.



* [ERROR] Response must use one of the listed specialty or department codes.
COMPUTE V_S1_INVALID_CODES = 0.
IF ((NOT MISSING(S1) AND NOT ANY(S1, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 98))) V_S1_INVALID_CODES = 1.




* Question S1.1.


* [ERROR] A certification status must be selected.
COMPUTE V_S11_MANDATORY = 0.
IF (MISSING(S1.1)) V_S11_MANDATORY = 1.



* [ERROR] Response must be 1, 2, or 3.
COMPUTE V_S11_INVALID_CODES = 0.
IF ((NOT MISSING(S1.1) AND NOT ANY(S1.1, 1, 2, 3))) V_S11_INVALID_CODES = 1.




* Question S2.


* [ERROR] Years in practice must be entered.
COMPUTE V_S2_MANDATORY = 0.
IF (MISSING(S2)) V_S2_MANDATORY = 1.



* [ERROR] Years must be a whole number from 0 through 75.
!Numeric svar=S2 min=0 max=75.
COMPUTE V_S2_NUMERIC_RANGE = 0.
IF ((NOT MISSING(S2) AND (S2 < 0.0 OR S2 > 75.0))) V_S2_NUMERIC_RANGE = 1.




* Question S3.


* [ERROR] A practice setting must be selected.
COMPUTE V_S3_MANDATORY = 0.
IF (MISSING(S3)) V_S3_MANDATORY = 1.



* [ERROR] Response must use a listed practice-setting code.
COMPUTE V_S3_INVALID_CODES = 0.
IF ((NOT MISSING(S3) AND NOT ANY(S3, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11))) V_S3_INVALID_CODES = 1.




* Question S4.


* [ERROR] Patient volume must be entered.
COMPUTE V_S4_MANDATORY = 0.
IF (MISSING(S4)) V_S4_MANDATORY = 1.



* [ERROR] Patient volume must be a whole number from 0 through 9999.
!Numeric svar=S4 min=0 max=9999.
COMPUTE V_S4_NUMERIC_RANGE = 0.
IF ((NOT MISSING(S4) AND (S4 < 0.0 OR S4 > 9999.0))) V_S4_NUMERIC_RANGE = 1.




* Question H1A.


* [ERROR] The count must be a whole number from 1 through 9999.
!Numeric svar=H1A min=1 max=9999.
COMPUTE V_H1A_NUMERIC_RANGE = 0.
IF ((NOT MISSING(H1A) AND (H1A < 1.0 OR H1A > 9999.0))) V_H1A_NUMERIC_RANGE = 1.




* Question H1B.


* [ERROR] Therapy-line allocation values are required.
COMPUTE V_H1B_MANDATORY = 0.
IF (MISSING(H1B)) V_H1B_MANDATORY = 1.



* [ERROR] Each allocation must be a whole number from 0 through the H1A total.
!Numeric svar=H1B min=0.
COMPUTE V_H1B_NUMERIC_RANGE = 0.
IF ((NOT MISSING(H1B) AND (H1B < 0.0))) V_H1B_NUMERIC_RANGE = 1.




* Question A1A.


* [ERROR] The count must be a whole number from 1 through 9999.
!Numeric svar=A1A min=1 max=9999.
COMPUTE V_A1A_NUMERIC_RANGE = 0.
IF ((NOT MISSING(A1A) AND (A1A < 1.0 OR A1A > 9999.0))) V_A1A_NUMERIC_RANGE = 1.




* Question A1B.


* [ERROR] Therapy-line allocation values are required.
COMPUTE V_A1B_MANDATORY = 0.
IF (MISSING(A1B)) V_A1B_MANDATORY = 1.



* [ERROR] Each allocation must be a whole number from 0 through the A1A total.
!Numeric svar=A1B min=0.
COMPUTE V_A1B_NUMERIC_RANGE = 0.
IF ((NOT MISSING(A1B) AND (A1B < 0.0))) V_A1B_NUMERIC_RANGE = 1.




* Question S4.1.


* [ERROR] Treatment of pediatric ALL patients must be indicated.
COMPUTE V_S41_MANDATORY = 0.
IF (MISSING(S4.1)) V_S41_MANDATORY = 1.



* [ERROR] Response must be Yes or No.
COMPUTE V_S41_INVALID_CODES = 0.
IF ((NOT MISSING(S4.1) AND NOT ANY(S4.1, 1, 2))) V_S41_INVALID_CODES = 1.




* Question S4.2.


* [ERROR] A pediatric patient-load category must be selected when shown.
COMPUTE V_S42_MANDATORY = 0.
IF (MISSING(S4.2)) V_S42_MANDATORY = 1.



* [ERROR] Response must use one of the four listed categories.
COMPUTE V_S42_INVALID_CODES = 0.
IF ((NOT MISSING(S4.2) AND NOT ANY(S4.2, 1, 2, 3, 4))) V_S42_INVALID_CODES = 1.




* Question S6.


* [ERROR] Conference attendance must be answered when shown.
COMPUTE V_S6_MANDATORY = 0.
IF (MISSING(S6)) V_S6_MANDATORY = 1.



* [ERROR] Conference selections must use the listed multi-response codes.
!MULTI_B svar=S6.
COMPUTE V_S6_MULTI_RESPONSE = 0.
IF ((NOT MISSING(S6_1) AND NOT ANY(S6_1, 0, 1)) OR (NOT MISSING(S6_2) AND NOT ANY(S6_2, 0, 1)) OR (NOT MISSING(S6_3) AND NOT ANY(S6_3, 0, 1)) OR (NOT MISSING(S6_4) AND NOT ANY(S6_4, 0, 1)) OR (NOT MISSING(S6_5) AND NOT ANY(S6_5, 0, 1)) OR (NOT MISSING(S6_6) AND NOT ANY(S6_6, 0, 1)) OR (NOT MISSING(S6_7) AND NOT ANY(S6_7, 0, 1)) OR (NOT MISSING(S6_8) AND NOT ANY(S6_8, 0, 1)) OR (NOT MISSING(S6_9) AND NOT ANY(S6_9, 0, 1)) OR (NOT MISSING(S6_10) AND NOT ANY(S6_10, 0, 1)) OR (NOT MISSING(S6_11) AND NOT ANY(S6_11, 0, 1)) OR (NOT MISSING(S6_98) AND NOT ANY(S6_98, 0, 1)) OR (NOT MISSING(S6_99) AND NOT ANY(S6_99, 0, 1))) V_S6_MULTI_RESPONSE = 1.




* Question S7.


* [ERROR] Both inpatient and outpatient percentages are required when shown.
COMPUTE V_S7_MANDATORY = 0.
IF (MISSING(S7)) V_S7_MANDATORY = 1.



* [ERROR] Each percentage must be from 0 through 100.
!Numeric svar=S7 min=0 max=100.
COMPUTE V_S7_RANGE = 0.
IF ((NOT MISSING(S7) AND (S7 < 0.0 OR S7 > 100.0))) V_S7_RANGE = 1.



* [ERROR] Inpatient and outpatient percentages must total 100.
COMPUTE V_S7_TOTAL = 0.
IF (SUM(S7_1, S7_2) <> 100.0) V_S7_TOTAL = 1.




* Question S7.1.


* [ERROR] Both inpatient and outpatient percentages are required.
COMPUTE V_S71_MANDATORY = 0.
IF (MISSING(S7.1)) V_S71_MANDATORY = 1.



* [ERROR] Each percentage must be from 0 through 100.
!Numeric svar=S7.1 min=0 max=100.
COMPUTE V_S71_RANGE = 0.
IF ((NOT MISSING(S7.1) AND (S7.1 < 0.0 OR S7.1 > 100.0))) V_S71_RANGE = 1.



* [ERROR] Inpatient and outpatient percentages must total 100.
COMPUTE V_S71_TOTAL = 0.
IF (SUM(S7.1_1, S7.1_2) <> 100.0) V_S71_TOTAL = 1.




* Question CS1.


* [ERROR] A hospital ranking level must be selected.
COMPUTE V_CS1_MANDATORY = 0.
IF (MISSING(CS1)) V_CS1_MANDATORY = 1.



* [ERROR] Response must use one of the listed hospital-level codes.
COMPUTE V_CS1_INVALID_CODES = 0.
IF ((NOT MISSING(CS1) AND NOT ANY(CS1, 1, 2, 3, 4))) V_CS1_INVALID_CODES = 1.




* Question CS2.


* [ERROR] A hospital city must be selected.
COMPUTE V_CS2_MANDATORY = 0.
IF (MISSING(CS2)) V_CS2_MANDATORY = 1.



* [ERROR] Response must use a listed city code.
COMPUTE V_CS2_INVALID_CODES = 0.
IF ((NOT MISSING(CS2) AND NOT ANY(CS2, 0, 1, 2, 3, 4, 5, 6, 7))) V_CS2_INVALID_CODES = 1.




* Question HX1.


* [ERROR] Each percentage must be a whole number from 0 through 100.
!Numeric svar=HX1 min=0 max=100.
COMPUTE V_HX1_RANGE = 0.
IF ((NOT MISSING(HX1) AND (HX1 < 0.0 OR HX1 > 100.0))) V_HX1_RANGE = 1.




* Question H1.


* [ERROR] Stage distributions are required.
COMPUTE V_H1_MANDATORY = 0.
IF (MISSING(H1)) V_H1_MANDATORY = 1.



* [ERROR] Each stage percentage must be from 0 through 100.
!Numeric svar=H1 min=0 max=100.
COMPUTE V_H1_RANGE = 0.
IF ((NOT MISSING(H1) AND (H1 < 0.0 OR H1 > 100.0))) V_H1_RANGE = 1.



* [ERROR] Each stage-distribution column must total 100.
COMPUTE V_H1_TOTAL = 0.
IF (SUM(H1_1, H1_2, H1_3, H1_4) <> 100.0) V_H1_TOTAL = 1.




* Question H2.


* [ERROR] Displayed first-line modality percentages are required.
COMPUTE V_H2_MANDATORY = 0.
IF (MISSING(H2)) V_H2_MANDATORY = 1.



* [ERROR] Each modality percentage must be from 0 through 100.
!Numeric svar=H2 min=0 max=100.
COMPUTE V_H2_RANGE = 0.
IF ((NOT MISSING(H2) AND (H2 < 0.0 OR H2 > 100.0))) V_H2_RANGE = 1.



* [ERROR] Each displayed stage column must total 100.
COMPUTE V_H2_TOTAL = 0.
IF (SUM(H2_1, H2_2, H2_3, H2_4, H2_5, H2_6, H2_99) <> 100.0) V_H2_TOTAL = 1.




* Question H3.


* [ERROR] Displayed HSCT percentages are required.
COMPUTE V_H3_MANDATORY = 0.
IF (MISSING(H3)) V_H3_MANDATORY = 1.



* [ERROR] Each HSCT percentage must be from 0 through 100.
!Numeric svar=H3 min=0 max=100.
COMPUTE V_H3_RANGE = 0.
IF ((NOT MISSING(H3) AND (H3 < 0.0 OR H3 > 100.0))) V_H3_RANGE = 1.



* [ERROR] Each displayed stage column must total 100.
COMPUTE V_H3_TOTAL = 0.
IF (SUM(H3_1, H3_2) <> 100.0) V_H3_TOTAL = 1.




* Question H5.


* [ERROR] Each displayed percentage must be a whole number from 0 through 100.
!Numeric svar=H5 min=0 max=100.
COMPUTE V_H5_RANGE = 0.
IF ((NOT MISSING(H5) AND (H5 < 0.0 OR H5 > 100.0))) V_H5_RANGE = 1.




* Question H6.


* [ERROR] Duration must be a whole number from 0 to 99 months.
COMPUTE V_H6_R1 = 0.
IF ((NOT MISSING(H6) AND (H6 < 0.0 OR H6 > 99.0))) V_H6_R1 = 1.



* [ERROR] H6 applies to Stages I and II when H5_1 is greater than zero or Stages III and IV when H5_2 is greater than zero.
COMPUTE V_H6_R2 = 0.
IF (((H5_1 > 0 AND H5_2 > 0) AND (MISSING(H6))) OR ((NOT (H5_1 > 0 AND H5_2 > 0)) AND (NOT MISSING(H6)))) V_H6_R2 = 1.




* Question H6.1.


* [ERROR] Required response for the displayed H6.1 percentage grid.
COMPUTE V_H61_R1 = 0.
IF (MISSING(H6.1)) V_H61_R1 = 1.



* [ERROR] All H6.1 percentage entries must be whole numbers from 0 to 100.
COMPUTE V_H61_R2 = 0.
IF ((NOT MISSING(H6.1) AND (H6.1 < 0.0 OR H6.1 > 100.0))) V_H61_R2 = 1.



* [ERROR] Each displayed H6.1 percentage allocation must total 100 percent.
COMPUTE V_H61_R3 = 0.
IF (SUM(H6.1_1, H6.1_2, H6.1_3, H6.1_4, H6.1_5, H6.1_6) <> 100.0) V_H61_R3 = 1.



* [ERROR] H6.1 is displayed only under its stated stage-response conditions.
COMPUTE V_H61_R4 = 0.
IF (((H2_1_1 < 100 AND H2_2_1 < 100) AND (MISSING(H6.1))) OR ((NOT (H2_1_1 < 100 AND H2_2_1 < 100)) AND (NOT MISSING(H6.1)))) V_H61_R4 = 1.




* Question H7.1.


* [ERROR] Required response for the displayed H7.1 regimen grid.
COMPUTE V_H71_R1 = 0.
IF (MISSING(H7.1)) V_H71_R1 = 1.



* [ERROR] Percentage entries in H7.1 must be from 0 to 100.
COMPUTE V_H71_R2 = 0.
IF ((NOT MISSING(H7.1) AND (H7.1 < 0.0 OR H7.1 > 100.0))) V_H71_R2 = 1.



* [ERROR] H7.1 treatment percentages must total 100 percent.
COMPUTE V_H71_R3 = 0.
IF (SUM(H7.1_1, H7.1_2, H7.1_11, H7.1_5, H7.1_6, H7.1_7, H7.1_9, H7.1_12, H7.1_96, H7.1_97, H7.1_98, H7.1_99) <> 100.0) V_H71_R3 = 1.




* Question H7.2.


* [ERROR] Required response for the displayed H7.2 regimen grid.
COMPUTE V_H72_R1 = 0.
IF (MISSING(H7.2)) V_H72_R1 = 1.



* [ERROR] Percentage entries in H7.2 must be from 0 to 100.
COMPUTE V_H72_R2 = 0.
IF ((NOT MISSING(H7.2) AND (H7.2 < 0.0 OR H7.2 > 100.0))) V_H72_R2 = 1.



* [ERROR] H7.2 treatment percentages must total 100 percent.
COMPUTE V_H72_R3 = 0.
IF (SUM(H7.2_1, H7.2_2, H7.2_10, H7.2_4, H7.2_5, H7.2_6, H7.2_96, H7.2_97, H7.2_98, H7.2_99) <> 100.0) V_H72_R3 = 1.




* Question H7.3.


* [ERROR] Required response for the displayed H7.3 regimen grid.
COMPUTE V_H73_R1 = 0.
IF (MISSING(H7.3)) V_H73_R1 = 1.



* [ERROR] Percentage entries in H7.3 must be from 0 to 100.
COMPUTE V_H73_R2 = 0.
IF ((NOT MISSING(H7.3) AND (H7.3 < 0.0 OR H7.3 > 100.0))) V_H73_R2 = 1.



* [ERROR] H7.3 treatment percentages must total 100 percent.
COMPUTE V_H73_R3 = 0.
IF (SUM(H7.3_1, H7.3_2, H7.3_3, H7.3_96, H7.3_97, H7.3_98, H7.3_99) <> 100.0) V_H73_R3 = 1.




* Question H7.4.


* [ERROR] Required response for the displayed H7.4 regimen grid.
COMPUTE V_H74_R1 = 0.
IF (MISSING(H7.4)) V_H74_R1 = 1.



* [ERROR] Percentage entries in H7.4 must be from 0 to 100.
COMPUTE V_H74_R2 = 0.
IF ((NOT MISSING(H7.4) AND (H7.4 < 0.0 OR H7.4 > 100.0))) V_H74_R2 = 1.



* [ERROR] H7.4 treatment percentages must total 100 percent.
COMPUTE V_H74_R3 = 0.
IF (SUM(H7.4_1, H7.4_2, H7.4_5, H7.4_3, H7.4_4, H7.4_96, H7.4_97, H7.4_98, H7.4_99) <> 100.0) V_H74_R3 = 1.




* Question H8.1.


* [ERROR] Required response for the displayed H8.1 regimen grid.
COMPUTE V_H81_R1 = 0.
IF (MISSING(H8.1)) V_H81_R1 = 1.



* [ERROR] Percentage entries in H8.1 must be from 0 to 100.
COMPUTE V_H81_R2 = 0.
IF ((NOT MISSING(H8.1) AND (H8.1 < 0.0 OR H8.1 > 100.0))) V_H81_R2 = 1.



* [ERROR] H8.1 treatment percentages must total 100 percent.
COMPUTE V_H81_R3 = 0.
IF (SUM(H8.1_1, H8.1_2, H8.1_9, H8.1_4, H8.1_5, H8.1_6, H8.1_10, H8.1_96, H8.1_97, H8.1_98, H8.1_99) <> 100.0) V_H81_R3 = 1.




* Question H8.2.


* [ERROR] Required response for the displayed H8.2 regimen grid.
COMPUTE V_H82_R1 = 0.
IF (MISSING(H8.2)) V_H82_R1 = 1.



* [ERROR] Percentage entries in H8.2 must be from 0 to 100.
COMPUTE V_H82_R2 = 0.
IF ((NOT MISSING(H8.2) AND (H8.2 < 0.0 OR H8.2 > 100.0))) V_H82_R2 = 1.



* [ERROR] H8.2 treatment percentages must total 100 percent.
COMPUTE V_H82_R3 = 0.
IF (SUM(H8.2_1, H8.2_2, H8.2_3, H8.2_9, H8.2_5, H8.2_6, H8.2_7, H8.2_96, H8.2_97, H8.2_98, H8.2_99) <> 100.0) V_H82_R3 = 1.




* Question H8.3.


* [ERROR] Required response for the displayed H8.3 regimen grid.
COMPUTE V_H83_R1 = 0.
IF (MISSING(H8.3)) V_H83_R1 = 1.



* [ERROR] Percentage entries in H8.3 must be from 0 to 100.
COMPUTE V_H83_R2 = 0.
IF ((NOT MISSING(H8.3) AND (H8.3 < 0.0 OR H8.3 > 100.0))) V_H83_R2 = 1.



* [ERROR] H8.3 treatment percentages must total 100 percent.
COMPUTE V_H83_R3 = 0.
IF (SUM(H8.3_1, H8.3_2, H8.3_3, H8.3_96, H8.3_97, H8.3_98, H8.3_99) <> 100.0) V_H83_R3 = 1.




* Question H8.4.


* [ERROR] Required response for the displayed H8.4 regimen grid.
COMPUTE V_H84_R1 = 0.
IF (MISSING(H8.4)) V_H84_R1 = 1.



* [ERROR] Percentage entries in H8.4 must be from 0 to 100.
COMPUTE V_H84_R2 = 0.
IF ((NOT MISSING(H8.4) AND (H8.4 < 0.0 OR H8.4 > 100.0))) V_H84_R2 = 1.



* [ERROR] H8.4 treatment percentages must total 100 percent.
COMPUTE V_H84_R3 = 0.
IF (SUM(H8.4_1, H8.4_2, H8.4_5, H8.4_6, H8.4_3, H8.4_4, H8.4_96, H8.4_97, H8.4_98, H8.4_99) <> 100.0) V_H84_R3 = 1.




* Question H8.AX.


* [ERROR] Required response for the displayed interim PET/CT allocation grid.
COMPUTE V_H8AX_R1 = 0.
IF (MISSING(H8.AX)) V_H8AX_R1 = 1.



* [ERROR] Interim PET/CT percentages must be from 0 to 100.
COMPUTE V_H8AX_R2 = 0.
IF ((NOT MISSING(H8.AX) AND (H8.AX < 0.0 OR H8.AX > 100.0))) V_H8AX_R2 = 1.



* [ERROR] Each interim PET/CT allocation must total 100 percent.
COMPUTE V_H8AX_R3 = 0.
IF (SUM(H8.AX) <> 100.0) V_H8AX_R3 = 1.




* Question H8.A.


* [ERROR] Required response for the displayed post-assessment regimen grid.
COMPUTE V_H8A_R1 = 0.
IF (MISSING(H8.A)) V_H8A_R1 = 1.



* [ERROR] Post-assessment percentage entries must be from 0 to 100.
COMPUTE V_H8A_R2 = 0.
IF ((NOT MISSING(H8.A) AND (H8.A < 0.0 OR H8.A > 100.0))) V_H8A_R2 = 1.




* Question H9.


* [ERROR] Required response for the H9 treatment-outcome allocation.
COMPUTE V_H9_R1 = 0.
IF (MISSING(H9)) V_H9_R1 = 1.



* [ERROR] H9 percentages must be from 0 to 100.
COMPUTE V_H9_R2 = 0.
IF ((NOT MISSING(H9) AND (H9 < 0.0 OR H9 > 100.0))) V_H9_R2 = 1.



* [ERROR] H9 treatment outcomes must total 100 percent.
COMPUTE V_H9_R3 = 0.
IF (SUM(H9_4, H9_2, H9_3, H9_1) <> 100.0) V_H9_R3 = 1.




* Question H10.


* [ERROR] Required response for the H10 timing allocation.
COMPUTE V_H10_R1 = 0.
IF (MISSING(H10)) V_H10_R1 = 1.



* [ERROR] H10 percentages must be from 0 to 100.
COMPUTE V_H10_R2 = 0.
IF ((NOT MISSING(H10) AND (H10 < 0.0 OR H10 > 100.0))) V_H10_R2 = 1.



* [ERROR] H10 timing percentages must total 100 percent.
COMPUTE V_H10_R3 = 0.
IF (SUM(H10_1, H10_2, H10_3) <> 100.0) V_H10_R3 = 1.




* Question H11.


* [ERROR] Required response for the H11 second-line modality allocation.
COMPUTE V_H11_R1 = 0.
IF (MISSING(H11)) V_H11_R1 = 1.



* [ERROR] H11 percentages must be from 0 to 100.
COMPUTE V_H11_R2 = 0.
IF ((NOT MISSING(H11) AND (H11 < 0.0 OR H11 > 100.0))) V_H11_R2 = 1.



* [ERROR] H11 modality percentages must total 100 percent.
COMPUTE V_H11_R3 = 0.
IF (SUM(H11_2, H11_3, H11_4, H11_5, H11_6, H11_99) <> 100.0) V_H11_R3 = 1.




* Question H12.


* [ERROR] Required response for the H12 HSCT allocation.
COMPUTE V_H12_R1 = 0.
IF (MISSING(H12)) V_H12_R1 = 1.



* [ERROR] H12 percentages must be from 0 to 100.
COMPUTE V_H12_R2 = 0.
IF ((NOT MISSING(H12) AND (H12 < 0.0 OR H12 > 100.0))) V_H12_R2 = 1.



* [ERROR] H12 HSCT percentages must total 100 percent.
COMPUTE V_H12_R3 = 0.
IF (SUM(H12_1, H12_2) <> 100.0) V_H12_R3 = 1.




* Question H20.1.


* [ERROR] Required response for the displayed H20.1 regimen grid.
COMPUTE V_H201_R1 = 0.
IF (MISSING(H20.1)) V_H201_R1 = 1.



* [ERROR] H20.1 percentage entries must be from 0 to 100.
COMPUTE V_H201_R2 = 0.
IF ((NOT MISSING(H20.1) AND (H20.1 < 0.0 OR H20.1 > 100.0))) V_H201_R2 = 1.



* [ERROR] H20.1 regimen percentages must total 100 percent.
COMPUTE V_H201_R3 = 0.
IF (SUM(H20.1_1, H20.1_2, H20.1_3, H20.1_4, H20.1_17, H20.1_5, H20.1_8, H20.1_9, H20.1_11, H20.1_12, H20.1_13, H20.1_18, H20.1_19, H20.1_20, H20.1_21, H20.1_14, H20.1_15, H20.1_96, H20.1_97, H20.1_98, H20.1_99) <> 100.0) V_H201_R3 = 1.




* Question H20.2.


* [ERROR] Required response for the displayed H20.2 regimen grid.
COMPUTE V_H202_R1 = 0.
IF (MISSING(H20.2)) V_H202_R1 = 1.



* [ERROR] H20.2 percentage entries must be from 0 to 100.
COMPUTE V_H202_R2 = 0.
IF ((NOT MISSING(H20.2) AND (H20.2 < 0.0 OR H20.2 > 100.0))) V_H202_R2 = 1.



* [ERROR] H20.2 regimen percentages must total 100 percent.
COMPUTE V_H202_R3 = 0.
IF (SUM(H20.2_1, H20.2_2, H20.2_3, H20.2_4, H20.2_25, H20.2_5, H20.2_6, H20.2_7, H20.2_10, H20.2_11, H20.2_13, H20.2_14, H20.2_15, H20.2_21, H20.2_16, H20.2_17, H20.2_22, H20.2_23, H20.2_24, H20.2_18, H20.2_19, H20.2_96, H20.2_97, H20.2_98, H20.2_99) <> 100.0) V_H202_R3 = 1.




* Question H20.3.


* [ERROR] Required response for the displayed H20.3 regimen grid.
COMPUTE V_H203_R1 = 0.
IF (MISSING(H20.3)) V_H203_R1 = 1.



* [ERROR] H20.3 percentage entries must be from 0 to 100.
COMPUTE V_H203_R2 = 0.
IF ((NOT MISSING(H20.3) AND (H20.3 < 0.0 OR H20.3 > 100.0))) V_H203_R2 = 1.



* [ERROR] H20.3 regimen percentages must total 100 percent.
COMPUTE V_H203_R3 = 0.
IF (SUM(H20.3_1, H20.3_2, H20.3_3, H20.3_4, H20.3_17, H20.3_5, H20.3_6, H20.3_8, H20.3_9, H20.3_10, H20.3_12, H20.3_14, H20.3_15, H20.3_16, H20.3_96, H20.3_97, H20.3_98, H20.3_99) <> 100.0) V_H203_R3 = 1.




* Question H20.4.


* [ERROR] Required response for the displayed H20.4 regimen grid.
COMPUTE V_H204_R1 = 0.
IF (MISSING(H20.4)) V_H204_R1 = 1.



* [ERROR] H20.4 percentage entries must be from 0 to 100.
COMPUTE V_H204_R2 = 0.
IF ((NOT MISSING(H20.4) AND (H20.4 < 0.0 OR H20.4 > 100.0))) V_H204_R2 = 1.



* [ERROR] H20.4 regimen percentages must total 100 percent.
COMPUTE V_H204_R3 = 0.
IF (SUM(H20.4_1, H20.4_2, H20.4_3, H20.4_25, H20.4_5, H20.4_6, H20.4_8, H20.4_9, H20.4_10, H20.4_12, H20.4_13, H20.4_15, H20.4_16, H20.4_23, H20.4_17, H20.4_18, H20.4_19, H20.4_20, H20.4_21, H20.4_26, H20.4_22, H20.4_24, H20.4_28, H20.4_95, H20.4_96, H20.4_97, H20.4_98, H20.4_99) <> 100.0) V_H204_R3 = 1.




* Question H20.4A.


* [ERROR] Required response when H20.4 code 95 is selected.
COMPUTE V_H204A_R1 = 0.
IF (MISSING(H20.4A)) V_H204A_R1 = 1.



* [ERROR] H20.4A percentage entries must be from 0 to 100.
COMPUTE V_H204A_R2 = 0.
IF ((NOT MISSING(H20.4A) AND (H20.4A < 0.0 OR H20.4A > 100.0))) V_H204A_R2 = 1.



* [ERROR] H20.4A regimen percentages must total 100 percent.
COMPUTE V_H204A_R3 = 0.
IF (SUM(H20.4A_1, H20.4A_2, H20.4A_3) <> 100.0) V_H204A_R3 = 1.




* Question H21.


* [ERROR] Required response for the H21 treatment-outcome allocation.
COMPUTE V_H21_R1 = 0.
IF (MISSING(H21)) V_H21_R1 = 1.



* [ERROR] H21 percentages must be from 0 to 100.
COMPUTE V_H21_R2 = 0.
IF ((NOT MISSING(H21) AND (H21 < 0.0 OR H21 > 100.0))) V_H21_R2 = 1.



* [ERROR] H21 treatment outcomes must total 100 percent.
COMPUTE V_H21_R3 = 0.
IF (SUM(H21_1, H21_2, H21_3, H21_4) <> 100.0) V_H21_R3 = 1.




* Question H22.


* [ERROR] Required response for the H22 timing allocation.
COMPUTE V_H22_R1 = 0.
IF (MISSING(H22)) V_H22_R1 = 1.



* [ERROR] H22 percentages must be from 0 to 100.
COMPUTE V_H22_R2 = 0.
IF ((NOT MISSING(H22) AND (H22 < 0.0 OR H22 > 100.0))) V_H22_R2 = 1.



* [ERROR] H22 timing percentages must total 100 percent.
COMPUTE V_H22_R3 = 0.
IF (SUM(H22_1, H22_2, H22_3) <> 100.0) V_H22_R3 = 1.




* Question H23.


* [ERROR] Required response for the H23 third-line modality allocation.
COMPUTE V_H23_R1 = 0.
IF (MISSING(H23)) V_H23_R1 = 1.



* [ERROR] H23 percentages must be from 0 to 100.
COMPUTE V_H23_R2 = 0.
IF ((NOT MISSING(H23) AND (H23 < 0.0 OR H23 > 100.0))) V_H23_R2 = 1.



* [ERROR] H23 modality percentages must total 100 percent.
COMPUTE V_H23_R3 = 0.
IF (SUM(H23_2, H23_3, H23_4, H23_5, H23_6, H23_99) <> 100.0) V_H23_R3 = 1.




* Question H24.


* [ERROR] Required response for the H24 HSCT allocation.
COMPUTE V_H24_R1 = 0.
IF (MISSING(H24)) V_H24_R1 = 1.



* [ERROR] H24 percentages must be from 0 to 100.
COMPUTE V_H24_R2 = 0.
IF ((NOT MISSING(H24) AND (H24 < 0.0 OR H24 > 100.0))) V_H24_R2 = 1.



* [ERROR] H24 HSCT percentages must total 100 percent.
COMPUTE V_H24_R3 = 0.
IF (SUM(H24_1, H24_2) <> 100.0) V_H24_R3 = 1.




* Question H25.1.


* [ERROR] Entered percentage values must be between 0 and 100.
COMPUTE V_H25_1_R1 = 0.
IF ((NOT MISSING(H25.1) AND (H25.1 < 0.0 OR H25.1 > 100.0))) V_H25_1_R1 = 1.



* [ERROR] The percentage allocation across third-line regimens must total 100%.
COMPUTE V_H25_1_R2 = 0.
IF (SUM(H25.1_1, H25.1_2, H25.1_3, H25.1_4, H25.1_17, H25.1_22, H25.1_5, H25.1_6, H25.1_8, H25.1_9, H25.1_11, H25.1_12, H25.1_13, H25.1_18, H25.1_19, H25.1_20, H25.1_21, H25.1_14, H25.1_15, H25.1_96, H25.1_97, H25.1_98, H25.1_99) <> 100.0) V_H25_1_R2 = 1.




* Question H25.2.


* [ERROR] Entered percentage values must be between 0 and 100.
COMPUTE V_H25_2_R1 = 0.
IF ((NOT MISSING(H25.2) AND (H25.2 < 0.0 OR H25.2 > 100.0))) V_H25_2_R1 = 1.



* [ERROR] The percentage allocation across third-line regimens must total 100%.
COMPUTE V_H25_2_R2 = 0.
IF (SUM(H25.2_1, H25.2_2, H25.2_3, H25.2_23, H25.2_22, H25.2_4, H25.2_5, H25.2_8, H25.2_9, H25.2_11, H25.2_12, H25.2_13, H25.2_18, H25.2_19, H25.2_20, H25.2_21, H25.2_16, H25.2_17, H25.2_96, H25.2_97, H25.2_98, H25.2_99) <> 100.0) V_H25_2_R2 = 1.




* Question H25.3.


* [ERROR] Entered percentage values must be between 0 and 100.
COMPUTE V_H25_3_R1 = 0.
IF ((NOT MISSING(H25.3) AND (H25.3 < 0.0 OR H25.3 > 100.0))) V_H25_3_R1 = 1.



* [ERROR] The percentage allocation across third-line regimens must total 100%.
COMPUTE V_H25_3_R2 = 0.
IF (SUM(H25.3_1, H25.3_2, H25.3_13, H25.3_3, H25.3_4, H25.3_5, H25.3_6, H25.3_7, H25.3_8, H25.3_9, H25.3_10, H25.3_11, H25.3_12, H25.3_96, H25.3_97, H25.3_98, H25.3_99) <> 100.0) V_H25_3_R2 = 1.




* Question H25.4.


* [ERROR] Entered percentage values must be between 0 and 100.
COMPUTE V_H25_4_R1 = 0.
IF ((NOT MISSING(H25.4) AND (H25.4 < 0.0 OR H25.4 > 100.0))) V_H25_4_R1 = 1.



* [ERROR] The percentage allocation across third-line regimens must total 100%.
COMPUTE V_H25_4_R2 = 0.
IF (SUM(H25.4_1, H25.4_2, H25.4_3, H25.4_25, H25.4_5, H25.4_6, H25.4_8, H25.4_9, H25.4_10, H25.4_11, H25.4_12, H25.4_13, H25.4_14, H25.4_15, H25.4_16, H25.4_23, H25.4_17, H25.4_18, H25.4_19, H25.4_20, H25.4_21, H25.4_26, H25.4_22, H25.4_24, H25.4_28, H25.4_95, H25.4_96, H25.4_97, H25.4_98, H25.4_99) <> 100.0) V_H25_4_R2 = 1.




* Question H25.4A.


* [ERROR] Entered percentage values must be between 0 and 100.
COMPUTE V_H25_4A_R1 = 0.
IF ((NOT MISSING(H25.4A) AND (H25.4A < 0.0 OR H25.4A > 100.0))) V_H25_4A_R1 = 1.



* [ERROR] The percentage allocation across other domestic PD-1 regimens must total 100%.
COMPUTE V_H25_4A_R2 = 0.
IF (SUM(H25.4A_1, H25.4A_2, H25.4A_3) <> 100.0) V_H25_4A_R2 = 1.




* Question H26.


* [ERROR] Treatment-outcome percentages must be between 0 and 100.
COMPUTE V_H26_R1 = 0.
IF ((NOT MISSING(H26) AND (H26 < 0.0 OR H26 > 100.0))) V_H26_R1 = 1.



* [ERROR] Treatment-outcome percentages must total 100%.
COMPUTE V_H26_R2 = 0.
IF (SUM(H26_1, H26_2, H26_3, H26_4) <> 100.0) V_H26_R2 = 1.




* Question H27.


* [ERROR] Response percentages must be between 0 and 100.
COMPUTE V_H27_R1 = 0.
IF ((NOT MISSING(H27) AND (H27 < 0.0 OR H27 > 100.0))) V_H27_R1 = 1.



* [ERROR] Response percentages within each treatment-line column must total 100%.
COMPUTE V_H27_R2 = 0.
IF (SUM(H27_1, H27_2, H27_3, H27_4, H27_5) <> 100.0) V_H27_R2 = 1.




* Question H13.


* [ERROR] The percentage receiving maintenance therapy must be between 0 and 100.
COMPUTE V_H13_R1 = 0.
IF ((NOT MISSING(H13) AND (H13 < 0.0 OR H13 > 100.0))) V_H13_R1 = 1.




* Question H14.1.


* [ERROR] Entered maintenance-therapy percentage values must be between 0 and 100.
COMPUTE V_H14_1_R1 = 0.
IF ((NOT MISSING(H14.1) AND (H14.1 < 0.0 OR H14.1 > 100.0))) V_H14_1_R1 = 1.



* [ERROR] Maintenance-therapy percentages must total 100%.
COMPUTE V_H14_1_R2 = 0.
IF (SUM(H14.1_1, H14.1_2, H14.1_3, H14.1_4, H14.1_5, H14.1_6, H14.1_7, H14.1_8, H14.1_9, H14.1_10, H14.1_96, H14.1_97, H14.1_98, H14.1_99) <> 100.0) V_H14_1_R2 = 1.




* Question H14.2.


* [ERROR] Entered maintenance-therapy percentage values must be between 0 and 100.
COMPUTE V_H14_2_R1 = 0.
IF ((NOT MISSING(H14.2) AND (H14.2 < 0.0 OR H14.2 > 100.0))) V_H14_2_R1 = 1.



* [ERROR] Maintenance-therapy percentages must total 100%.
COMPUTE V_H14_2_R2 = 0.
IF (SUM(H14.2_1, H14.2_2, H14.2_3, H14.2_4, H14.2_5, H14.2_6, H14.2_7, H14.2_8, H14.2_9, H14.2_96, H14.2_97, H14.2_98, H14.2_99) <> 100.0) V_H14_2_R2 = 1.




* Question H14.3.


* [ERROR] Entered maintenance-therapy percentage values must be between 0 and 100.
COMPUTE V_H14_3_R1 = 0.
IF ((NOT MISSING(H14.3) AND (H14.3 < 0.0 OR H14.3 > 100.0))) V_H14_3_R1 = 1.



* [ERROR] Maintenance-therapy percentages must total 100%.
COMPUTE V_H14_3_R2 = 0.
IF (SUM(H14.3_1, H14.3_2, H14.3_3, H14.3_4, H14.3_96, H14.3_97, H14.3_98, H14.3_99) <> 100.0) V_H14_3_R2 = 1.




* Question H14.4.


* [ERROR] Entered maintenance-therapy percentage values must be between 0 and 100.
COMPUTE V_H14_4_R1 = 0.
IF ((NOT MISSING(H14.4) AND (H14.4 < 0.0 OR H14.4 > 100.0))) V_H14_4_R1 = 1.



* [ERROR] Maintenance-therapy percentages must total 100%.
COMPUTE V_H14_4_R2 = 0.
IF (SUM(H14.4_5, H14.4_2, H14.4_3, H14.4_4, H14.4_96, H14.4_97, H14.4_98, H14.4_99) <> 100.0) V_H14_4_R2 = 1.




* Question H28.


* [ERROR] Response percentages must be between 0 and 100.
COMPUTE V_H28_R1 = 0.
IF ((NOT MISSING(H28) AND (H28 < 0.0 OR H28 > 100.0))) V_H28_R1 = 1.



* [ERROR] Response percentages for each disease-stage column must total 100%.
COMPUTE V_H28_R2 = 0.
IF (SUM(H28_1, H28_2, H28_3, H28_4) <> 100.0) V_H28_R2 = 1.




* Question H29.


* [ERROR] Estimated progression-free survival values must be between 0 and 99 months.
COMPUTE V_H29_R1 = 0.
IF ((NOT MISSING(H29) AND (H29 < 0.0 OR H29 > 99.0))) V_H29_R1 = 1.




* Question H30.


* [ERROR] Response percentages must be between 0 and 100.
COMPUTE V_H30_R1 = 0.
IF ((NOT MISSING(H30) AND (H30 < 0.0 OR H30 > 100.0))) V_H30_R1 = 1.



* [ERROR] Response percentages for each treatment-line column must total 100%.
COMPUTE V_H30_R2 = 0.
IF (SUM(H30_1, H30_2, H30_3, H30_4) <> 100.0) V_H30_R2 = 1.




* Question H31.


* [ERROR] Estimated progression-free survival values must be between 0 and 99 months.
COMPUTE V_H31_R1 = 0.
IF ((NOT MISSING(H31) AND (H31 < 0.0 OR H31 > 99.0))) V_H31_R1 = 1.




* Question A1.


* [ERROR] Age-group percentages must be between 0 and 100.
COMPUTE V_A1_R1 = 0.
IF ((NOT MISSING(A1) AND (A1 < 0.0 OR A1 > 100.0))) V_A1_R1 = 1.



* [ERROR] The age-group percentages must total 100%.
COMPUTE V_A1_R2 = 0.
IF (SUM(A1_1, A1_3, A1_2, A1_4) <> 100.0) V_A1_R2 = 1.




* Question A2.
* No validation generated: The canonical item provides no response fields, numeric bounds, codes, or explicit validation instruction.



* Question A2_1.
* No validation generated: The canonical item contains only a placeholder label and provides no response fields or evidence-supported validation instruction.



* Question A2_2.


* [ERROR] Philadelphia Chromosome status percentages must be between 0 and 100.
COMPUTE V_A2_2_R1 = 0.
IF ((NOT MISSING(A2_2) AND (A2_2 < 0.0 OR A2_2 > 100.0))) V_A2_2_R1 = 1.



* [ERROR] Ph-negative and Ph-positive percentages must total 100% within each patient-group and treatment-line column.
COMPUTE V_A2_2_R2 = 0.
IF (SUM(A2_2_1, A2_2_2) <> 100.0) V_A2_2_R2 = 1.




* Question A2.1.


* [ERROR] CD20-testing percentages must be between 0 and 100.
COMPUTE V_A2_1_R1 = 0.
IF ((NOT MISSING(A2.1) AND (A2.1 < 0.0 OR A2.1 > 100.0))) V_A2_1_R1 = 1.



* [ERROR] CD20-testing percentages must total 100% within each patient-group row.
COMPUTE V_A2_1_R2 = 0.
IF (SUM(A2.1_1, A2.1_2) <> 100.0) V_A2_1_R2 = 1.




* Question X1.1.


* [ERROR] NGS-testing percentages must be between 0 and 100.
COMPUTE V_X1_1_R1 = 0.
IF ((NOT MISSING(X1.1) AND (X1.1 < 0.0 OR X1.1 > 100.0))) V_X1_1_R1 = 1.




* Question A3.


* [ERROR] Initial-therapy modality percentages must be between 0 and 100.
COMPUTE V_A3_R1 = 0.
IF ((NOT MISSING(A3) AND (A3 < 0.0 OR A3 > 100.0))) V_A3_R1 = 1.



* [ERROR] Initial-therapy modality percentages must total 100% within each patient-group column.
COMPUTE V_A3_R2 = 0.
IF (SUM(A3_1, A3_2, A3_3, A3_4, A3_5, A3_6, A3_99) <> 100.0) V_A3_R2 = 1.




* Question A4.


* [ERROR] HCT-type percentages must be between 0 and 100.
COMPUTE V_A4_R1 = 0.
IF ((NOT MISSING(A4) AND (A4 < 0.0 OR A4 > 100.0))) V_A4_R1 = 1.



* [ERROR] Autologous and allogeneic HCT percentages must total 100% within each patient-group column.
COMPUTE V_A4_R2 = 0.
IF (SUM(A4_1, A4_2) <> 100.0) V_A4_R2 = 1.




* Question A5.


* [ERROR] The percentage eventually receiving therapy must be between 0 and 100.
COMPUTE V_A5_R1 = 0.
IF ((NOT MISSING(A5) AND (A5 < 0.0 OR A5 > 100.0))) V_A5_R1 = 1.




* Question A6.


* [ERROR] Duration must be a whole number from 0 to 99 months.
COMPUTE V_A6_R1 = 0.
IF ((NOT MISSING(A6) AND (A6 < 0.0 OR A6 > 99.0))) V_A6_R1 = 1.




* Question A7.


* [ERROR] Each percentage must be a whole number from 0 to 100.
COMPUTE V_A7_R1 = 0.
IF ((NOT MISSING(A7) AND (A7 < 0.0 OR A7 > 100.0))) V_A7_R1 = 1.



* [ERROR] The response percentages must total 100 percent.
COMPUTE V_A7_R2 = 0.
IF (SUM(A7_1, A7_2, A7_3, A7_4, A7_5) <> 100.0) V_A7_R2 = 1.




* Question A10.


* [ERROR] Each percentage must be a whole number from 0 to 100.
COMPUTE V_A10_R1 = 0.
IF ((NOT MISSING(A10) AND (A10 < 0.0 OR A10 > 100.0))) V_A10_R1 = 1.




* Question A11.1.


* [ERROR] Percentage-treated entries must be whole numbers from 0 to 100.
COMPUTE V_A11_1_R1 = 0.
IF ((NOT MISSING(A11.1) AND (A11.1 < 0.0 OR A11.1 > 100.0))) V_A11_1_R1 = 1.



* [ERROR] The percentage-treated entries must total 100 percent within each displayed age group.
COMPUTE V_A11_1_R2 = 0.
IF (SUM(A11.1) <> 100.0) V_A11_1_R2 = 1.




* Question A11.1_1.
* No validation generated: The supplied canonical record is an unlabeled placeholder with no independent response scale or validation evidence.



* Question A11.1_2.


* [ERROR] Percentage-treated entries must be whole numbers from 0 to 100.
COMPUTE V_A11_1_2_R1 = 0.
IF ((NOT MISSING(A11.1_2) AND (A11.1_2 < 0.0 OR A11.1_2 > 100.0))) V_A11_1_2_R1 = 1.



* [ERROR] The percentage-treated entries must total 100 percent within each displayed age group.
COMPUTE V_A11_1_2_R2 = 0.
IF (SUM(A11.1_2_26, A11.1_2_27, A11.1_2_28, A11.1_2_29, A11.1_2_30, A11.1_2_31, A11.1_2_32, A11.1_2_33, A11.1_2_34, A11.1_2_35, A11.1_2_36, A11.1_2_37, A11.1_2_38, A11.1_2_96, A11.1_2_97, A11.1_2_98, A11.1_2_99) <> 100.0) V_A11_1_2_R2 = 1.




* Question A11.2.


* [ERROR] Percentage-treated entries must be whole numbers from 0 to 100.
COMPUTE V_A11_2_R1 = 0.
IF ((NOT MISSING(A11.2) AND (A11.2 < 0.0 OR A11.2 > 100.0))) V_A11_2_R1 = 1.



* [ERROR] The percentage-treated entries must total 100 percent within each displayed age group.
COMPUTE V_A11_2_R2 = 0.
IF (SUM(A11.2) <> 100.0) V_A11_2_R2 = 1.




* Question A11.2_1.
* No validation generated: The supplied canonical record is an unlabeled placeholder with no independent response scale or validation evidence.



* Question A11.2_2.


* [ERROR] Percentage-treated entries must be whole numbers from 0 to 100.
COMPUTE V_A11_2_2_R1 = 0.
IF ((NOT MISSING(A11.2_2) AND (A11.2_2 < 0.0 OR A11.2_2 > 100.0))) V_A11_2_2_R1 = 1.



* [ERROR] The percentage-treated entries must total 100 percent within each displayed age group.
COMPUTE V_A11_2_2_R2 = 0.
IF (SUM(A11.2_2_2, A11.2_2_19, A11.2_2_15, A11.2_2_3, A11.2_2_4, A11.2_2_16, A11.2_2_7, A11.2_2_20, A11.2_2_11, A11.2_2_17, A11.2_2_12, A11.2_2_14, A11.2_2_18, A11.2_2_96, A11.2_2_97, A11.2_2_98, A11.2_2_99) <> 100.0) V_A11_2_2_R2 = 1.




* Question A11.3.


* [ERROR] Percentage-treated entries must be whole numbers from 0 to 100.
COMPUTE V_A11_3_R1 = 0.
IF ((NOT MISSING(A11.3) AND (A11.3 < 0.0 OR A11.3 > 100.0))) V_A11_3_R1 = 1.



* [ERROR] The percentage-treated entries must total 100 percent within each displayed age group.
COMPUTE V_A11_3_R2 = 0.
IF (SUM(A11.3) <> 100.0) V_A11_3_R2 = 1.




* Question A11.3_1.
* No validation generated: The supplied canonical record is an unlabeled placeholder with no independent response scale or validation evidence.



* Question A11.3_2.


* [ERROR] Percentage-treated entries must be whole numbers from 0 to 100.
COMPUTE V_A11_3_2_R1 = 0.
IF ((NOT MISSING(A11.3_2) AND (A11.3_2 < 0.0 OR A11.3_2 > 100.0))) V_A11_3_2_R1 = 1.



* [ERROR] The percentage-treated entries must total 100 percent within each displayed age group.
COMPUTE V_A11_3_2_R2 = 0.
IF (SUM(A11.3_2_1, A11.3_2_2, A11.3_2_16, A11.3_2_5, A11.3_2_6, A11.3_2_8, A11.3_2_9, A11.3_2_10, A11.3_2_17, A11.3_2_12, A11.3_2_13, A11.3_2_96, A11.3_2_97, A11.3_2_98, A11.3_2_99) <> 100.0) V_A11_3_2_R2 = 1.




* Question A11.4.


* [ERROR] Percentage-treated entries must be whole numbers from 0 to 100.
COMPUTE V_A11_4_R1 = 0.
IF ((NOT MISSING(A11.4) AND (A11.4 < 0.0 OR A11.4 > 100.0))) V_A11_4_R1 = 1.



* [ERROR] The percentage-treated entries must total 100 percent within each displayed age group.
COMPUTE V_A11_4_R2 = 0.
IF (SUM(A11.4) <> 100.0) V_A11_4_R2 = 1.




* Question A11.4_1.
* No validation generated: The supplied canonical record is an unlabeled placeholder with no independent response scale or validation evidence.



* Question A11.4_2.


* [ERROR] Percentage-treated entries must be whole numbers from 0 to 100.
COMPUTE V_A11_4_2_R1 = 0.
IF ((NOT MISSING(A11.4_2) AND (A11.4_2 < 0.0 OR A11.4_2 > 100.0))) V_A11_4_2_R1 = 1.



* [ERROR] The percentage-treated entries must total 100 percent within each displayed age group.
COMPUTE V_A11_4_2_R2 = 0.
IF (SUM(A11.4_2_1, A11.4_2_2, A11.4_2_5, A11.4_2_17, A11.4_2_18, A11.4_2_19, A11.4_2_6, A11.4_2_8, A11.4_2_9, A11.4_2_10, A11.4_2_11, A11.4_2_25, A11.4_2_12, A11.4_2_20, A11.4_2_13, A11.4_2_21, A11.4_2_22, A11.4_2_23, A11.4_2_14, A11.4_2_24, A11.4_2_96, A11.4_2_97, A11.4_2_98, A11.4_2_99) <> 100.0) V_A11_4_2_R2 = 1.




* Question A11A.


* [ERROR] Each outcome percentage must be a whole number from 0 to 100.
COMPUTE V_A11A_R1 = 0.
IF ((NOT MISSING(A11A) AND (A11A < 0.0 OR A11A > 100.0))) V_A11A_R1 = 1.



* [ERROR] Complete remission and failure percentages must total 100 percent within each age group.
COMPUTE V_A11A_R2 = 0.
IF (SUM(A11A_1, A11A_2) <> 100.0) V_A11A_R2 = 1.




* Question A12A.


* [ERROR] The percentage tested for MRD must be a whole number from 0 to 100.
COMPUTE V_A12A_R1 = 0.
IF ((NOT MISSING(A12A) AND (A12A < 0.0 OR A12A > 100.0))) V_A12A_R1 = 1.




* Question A12.


* [ERROR] Each MRD-negative percentage must be a whole number from 0 to 100.
COMPUTE V_A12_R1 = 0.
IF ((NOT MISSING(A12) AND (A12 < 0.0 OR A12 > 100.0))) V_A12_R1 = 1.




* Question A12.1.


* [ERROR] Percentage-treated entries must be whole numbers from 0 to 100.
COMPUTE V_A12_1_R1 = 0.
IF ((NOT MISSING(A12.1) AND (A12.1 < 0.0 OR A12.1 > 100.0))) V_A12_1_R1 = 1.



* [ERROR] The percentage-treated entries must total 100 percent within each displayed age group.
COMPUTE V_A12_1_R2 = 0.
IF (SUM(A12.1) <> 100.0) V_A12_1_R2 = 1.




* Question A12.1_1.
* No validation generated: The supplied canonical record is an unlabeled placeholder with no independent response scale or validation evidence.



* Question A12.1_2.


* [ERROR] Percentage-treated entries must be whole numbers from 0 to 100.
COMPUTE V_A12_1_2_R1 = 0.
IF ((NOT MISSING(A12.1_2) AND (A12.1_2 < 0.0 OR A12.1_2 > 100.0))) V_A12_1_2_R1 = 1.



* [ERROR] The percentage-treated entries must total 100 percent within each displayed age group.
COMPUTE V_A12_1_2_R2 = 0.
IF (SUM(A12.1_2_38, A12.1_2_39, A12.1_2_40, A12.1_2_41, A12.1_2_42, A12.1_2_43, A12.1_2_44, A12.1_2_45, A12.1_2_46, A12.1_2_47, A12.1_2_48, A12.1_2_49, A12.1_2_50, A12.1_2_51, A12.1_2_52, A12.1_2_53, A12.1_2_54, A12.1_2_55, A12.1_2_56, A12.1_2_57, A12.1_2_58, A12.1_2_59, A12.1_2_60, A12.1_2_96, A12.1_2_97, A12.1_2_98, A12.1_2_99) <> 100.0) V_A12_1_2_R2 = 1.




* Question A12.2.


* [ERROR] Percentage-treated entries must be whole numbers from 0 to 100.
COMPUTE V_A12_2_R1 = 0.
IF ((NOT MISSING(A12.2) AND (A12.2 < 0.0 OR A12.2 > 100.0))) V_A12_2_R1 = 1.



* [ERROR] The percentage-treated entries must total 100 percent within each displayed age group.
COMPUTE V_A12_2_R2 = 0.
IF (SUM(A12.2) <> 100.0) V_A12_2_R2 = 1.




* Question A12.2_1.
* No validation generated: The supplied canonical record is an unlabeled placeholder with no independent response scale or validation evidence.



* Question A12.2_2.


* [ERROR] Percentage-treated entries must be whole numbers from 0 to 100.
COMPUTE V_A12_2_2_R1 = 0.
IF ((NOT MISSING(A12.2_2) AND (A12.2_2 < 0.0 OR A12.2_2 > 100.0))) V_A12_2_2_R1 = 1.



* [ERROR] The percentage-treated entries must total 100 percent within each displayed age group.
COMPUTE V_A12_2_2_R2 = 0.
IF (SUM(A12.2_2_2, A12.2_2_22, A12.2_2_23, A12.2_2_24, A12.2_2_25, A12.2_2_26, A12.2_2_27, A12.2_2_28, A12.2_2_29, A12.2_2_3, A12.2_2_4, A12.2_2_6, A12.2_2_7, A12.2_2_8, A12.2_2_10, A12.2_2_13, A12.2_2_14, A12.2_2_21, A12.2_2_16, A12.2_2_19, A12.2_2_20, A12.2_2_96, A12.2_2_97, A12.2_2_98, A12.2_2_99) <> 100.0) V_A12_2_2_R2 = 1.




* Question A12.3.
* No validation generated: The supplied record identifies an optional consolidation-therapy data grid but does not provide its child variables or explicit numeric bounds in this batch.



* Question A12.3_1.
* No validation generated: No response definition, options, numeric bounds, or child response variables are supplied for this placeholder question.



* Question A12.3_2.


* [ERROR] Required regimen allocation grid must be answered.
COMPUTE V_A12_3_2_R1 = 0.
IF (MISSING(A12.3_2)) V_A12_3_2_R1 = 1.



* [ERROR] The percentage allocations in the regimen grid must total 100 percent.
COMPUTE V_A12_3_2_R2 = 0.
IF (SUM(A12.3_2_1, A12.3_2_2, A12.3_2_21, A12.3_2_22, A12.3_2_23, A12.3_2_24, A12.3_2_25, A12.3_2_26, A12.3_2_3, A12.3_2_4, A12.3_2_5, A12.3_2_6, A12.3_2_7, A12.3_2_10, A12.3_2_14, A12.3_2_27, A12.3_2_17, A12.3_2_28, A12.3_2_29, A12.3_2_19, A12.3_2_20, A12.3_2_96, A12.3_2_97, A12.3_2_98, A12.3_2_99) <> 100.0) V_A12_3_2_R2 = 1.




* Question A12.4.
* No validation generated: This is a grid-container question. The supplied definition describes cross-cell and blank/zero dependency checks, but does not supply the component response variables needed to express them safely.



* Question A12.4_1.
* No validation generated: No response definition, options, numeric bounds, or child response variables are supplied for this placeholder question.



* Question A12.4_2.


* [ERROR] Required consolidation regimen allocation grid must be answered.
COMPUTE V_A12_4_2_R1 = 0.
IF (MISSING(A12.4_2)) V_A12_4_2_R1 = 1.



* [ERROR] The percentage allocations in the consolidation regimen grid must total 100 percent.
COMPUTE V_A12_4_2_R2 = 0.
IF (SUM(A12.4_2_1, A12.4_2_2, A12.4_2_23, A12.4_2_24, A12.4_2_3, A12.4_2_4, A12.4_2_5, A12.4_2_6, A12.4_2_25, A12.4_2_26, A12.4_2_27, A12.4_2_28, A12.4_2_29, A12.4_2_30, A12.4_2_31, A12.4_2_32, A12.4_2_33, A12.4_2_7, A12.4_2_10, A12.4_2_11, A12.4_2_12, A12.4_2_13, A12.4_2_14, A12.4_2_15, A12.4_2_34, A12.4_2_16, A12.4_2_21, A12.4_2_17, A12.4_2_22, A12.4_2_35, A12.4_2_19, A12.4_2_36, A12.4_2_20, A12.4_2_37, A12.4_2_96, A12.4_2_97, A12.4_2_98, A12.4_2_99) <> 100.0) V_A12_4_2_R2 = 1.




* Question A12.1A.


* [ERROR] The number of blinatumomab cycles must be between 0 and 100.
COMPUTE V_A12_1A_R1 = 0.
IF ((NOT MISSING(A12.1A) AND (A12.1A < 0.0 OR A12.1A > 100.0))) V_A12_1A_R1 = 1.




* Question A13.1.
* No validation generated: This is a grid-container question. The supplied definition describes cross-cell consistency checks, but does not supply the component response variables needed to express them safely.



* Question A13.1_1.
* No validation generated: No response definition, options, numeric bounds, or child response variables are supplied for this placeholder question.



* Question A13.1_2.


* [ERROR] Required CNS prophylaxis regimen allocation grid must be answered.
COMPUTE V_A13_1_2_R1 = 0.
IF (MISSING(A13.1_2)) V_A13_1_2_R1 = 1.



* [ERROR] The percentage allocations in the CNS prophylaxis regimen grid must total 100 percent.
COMPUTE V_A13_1_2_R2 = 0.
IF (SUM(A13.1_2_8, A13.1_2_21, A13.1_2_19, A13.1_2_20, A13.1_2_10, A13.1_2_22, A13.1_2_23, A13.1_2_24, A13.1_2_25, A13.1_2_96, A13.1_2_97, A13.1_2_98, A13.1_2_99) <> 100.0) V_A13_1_2_R2 = 1.




* Question A13.2.
* No validation generated: This is a grid-container question. The supplied definition describes cross-cell consistency checks, but does not supply the component response variables needed to express them safely.



* Question A13.2_1.
* No validation generated: No response definition, options, numeric bounds, or child response variables are supplied for this placeholder question.



* Question A13.2_2.


* [ERROR] Required CNS prophylaxis regimen allocation grid must be answered.
COMPUTE V_A13_2_2_R1 = 0.
IF (MISSING(A13.2_2)) V_A13_2_2_R1 = 1.



* [ERROR] The percentage allocations in the CNS prophylaxis regimen grid must total 100 percent.
COMPUTE V_A13_2_2_R2 = 0.
IF (SUM(A13.2_2_8, A13.2_2_22, A13.2_2_20, A13.2_2_21, A13.2_2_10, A13.2_2_23, A13.2_2_24, A13.2_2_25, A13.2_2_26, A13.2_2_96, A13.2_2_97, A13.2_2_98, A13.2_2_99) <> 100.0) V_A13_2_2_R2 = 1.




* Question A13.3.
* No validation generated: This is a grid-container question. The supplied definition describes cross-cell consistency checks, but does not supply the component response variables needed to express them safely.



* Question A13.3_1.
* No validation generated: No response definition, options, numeric bounds, or child response variables are supplied for this placeholder question.



* Question A13.3_2.


* [ERROR] Required CNS prophylaxis regimen allocation grid must be answered.
COMPUTE V_A13_3_2_R1 = 0.
IF (MISSING(A13.3_2)) V_A13_3_2_R1 = 1.



* [ERROR] The percentage allocations in the CNS prophylaxis regimen grid must total 100 percent.
COMPUTE V_A13_3_2_R2 = 0.
IF (SUM(A13.3_2_9, A13.3_2_10, A13.3_2_7, A13.3_2_8, A13.3_2_3, A13.3_2_4, A13.3_2_11, A13.3_2_12, A13.3_2_13, A13.3_2_96, A13.3_2_97, A13.3_2_98, A13.3_2_99) <> 100.0) V_A13_3_2_R2 = 1.




* Question A13.4.
* No validation generated: This is a grid-container question. The supplied definition describes cross-cell consistency checks, but does not supply the component response variables needed to express them safely.



* Question A13.4_1.
* No validation generated: No response definition, options, numeric bounds, or child response variables are supplied for this placeholder question.



* Question A13.4_2.


* [ERROR] Required CNS prophylaxis regimen allocation grid must be answered.
COMPUTE V_A13_4_2_R1 = 0.
IF (MISSING(A13.4_2)) V_A13_4_2_R1 = 1.



* [ERROR] The percentage allocations in the CNS prophylaxis regimen grid must total 100 percent.
COMPUTE V_A13_4_2_R2 = 0.
IF (SUM(A13.4_2_9, A13.4_2_10, A13.4_2_7, A13.4_2_8, A13.4_2_3, A13.4_2_4, A13.4_2_11, A13.4_2_12, A13.4_2_13, A13.4_2_96, A13.4_2_97, A13.4_2_98, A13.4_2_99) <> 100.0) V_A13_4_2_R2 = 1.




* Question A14.1.
* No validation generated: This is a grid-container question. The supplied definition describes cross-cell consistency checks, but does not supply the component response variables needed to express them safely.



* Question A14.1_1.
* No validation generated: No response definition, options, numeric bounds, or child response variables are supplied for this placeholder question.



* Question A14.1_2.


* [ERROR] Required maintenance regimen allocation grid must be answered.
COMPUTE V_A14_1_2_R1 = 0.
IF (MISSING(A14.1_2)) V_A14_1_2_R1 = 1.



* [ERROR] The percentage allocations in the maintenance regimen grid must total 100 percent.
COMPUTE V_A14_1_2_R2 = 0.
IF (SUM(A14.1_2_25, A14.1_2_26, A14.1_2_27, A14.1_2_28, A14.1_2_29, A14.1_2_30, A14.1_2_31, A14.1_2_32, A14.1_2_33, A14.1_2_34, A14.1_2_96, A14.1_2_97, A14.1_2_98, A14.1_2_99) <> 100.0) V_A14_1_2_R2 = 1.




* Question A14.2.
* No validation generated: This is a grid-container question. The supplied definition describes cross-cell consistency checks, but does not supply the component response variables needed to express them safely.



* Question A14.2_1.
* No validation generated: No response definition, options, numeric bounds, or child response variables are supplied for this placeholder question.



* Question A14.2_2.


* [ERROR] Required maintenance regimen allocation grid must be answered.
COMPUTE V_A14_2_2_R1 = 0.
IF (MISSING(A14.2_2)) V_A14_2_2_R1 = 1.



* [ERROR] The percentage allocations in the maintenance regimen grid must total 100 percent.
COMPUTE V_A14_2_2_R2 = 0.
IF (SUM(A14.2_2_13, A14.2_2_22, A14.2_2_18, A14.2_2_23, A14.2_2_19, A14.2_2_24, A14.2_2_96, A14.2_2_97, A14.2_2_98, A14.2_2_99) <> 100.0) V_A14_2_2_R2 = 1.




* Question A14.3.
* No validation generated: This is a grid-container question. The supplied definition describes cross-cell consistency checks, but does not supply the component response variables needed to express them safely.



* Question A14.3_1.
* No validation generated: Placeholder variable with no question text, response options, or validation evidence.



* Question A14.3_2.


* [ERROR] Require the displayed regimen grid because the question is marked required.
COMPUTE V_A14_3_2_R1 = 0.
IF (MISSING(A14.3_2)) V_A14_3_2_R1 = 1.



* [ERROR] Require the displayed percentage allocations to total 100 percent.
!Sum_to_var svar=A14.3_2.
COMPUTE V_A14_3_2_R2 = 0.
IF (SUM(A14.3_2_1, A14.3_2_2, A14.3_2_3, A14.3_2_4, A14.3_2_5, A14.3_2_6, A14.3_2_9, A14.3_2_10, A14.3_2_96, A14.3_2_97, A14.3_2_98, A14.3_2_99) <> 100.0) V_A14_3_2_R2 = 1.




* Question A14.4.
* No validation generated: Parent question contains instructions for the separately defined regimen grid but no direct response variable or safely expressible standalone check.



* Question A14.4_1.
* No validation generated: Placeholder variable with no question text, response options, or validation evidence.



* Question A14.4_2.


* [ERROR] Require the displayed maintenance-therapy grid because the question is marked required.
COMPUTE V_A14_4_2_R1 = 0.
IF (MISSING(A14.4_2)) V_A14_4_2_R1 = 1.



* [ERROR] Require the displayed percentage allocations to total 100 percent.
!Sum_to_var svar=A14.4_2.
COMPUTE V_A14_4_2_R2 = 0.
IF (SUM(A14.4_2_1, A14.4_2_2, A14.4_2_3, A14.4_2_4, A14.4_2_5, A14.4_2_6, A14.4_2_9, A14.4_2_10, A14.4_2_11, A14.4_2_96, A14.4_2_97, A14.4_2_98, A14.4_2_99) <> 100.0) V_A14_4_2_R2 = 1.




* Question A15.


* [ERROR] Require the treatment-outcome grid because the question is marked required.
COMPUTE V_A15_R1 = 0.
IF (MISSING(A15)) V_A15_R1 = 1.



* [ERROR] Restrict entered treatment-outcome percentages to 0 through 100.
COMPUTE V_A15_R2 = 0.
IF ((NOT MISSING(A15) AND (A15 < 0.0 OR A15 > 100.0))) V_A15_R2 = 1.



* [ERROR] Require each displayed treatment-outcome allocation to total 100 percent.
!Sum_to_var svar=A15.
COMPUTE V_A15_R3 = 0.
IF (SUM(A15_4, A15_2, A15_3, A15_1) <> 100.0) V_A15_R3 = 1.




* Question A16.


* [ERROR] Require the timing-distribution grid because the question is marked required.
COMPUTE V_A16_R1 = 0.
IF (MISSING(A16)) V_A16_R1 = 1.



* [ERROR] Restrict timing-distribution percentages to 0 through 100.
COMPUTE V_A16_R2 = 0.
IF ((NOT MISSING(A16) AND (A16 < 0.0 OR A16 > 100.0))) V_A16_R2 = 1.



* [ERROR] Require each displayed timing distribution to total 100 percent.
!Sum_to_var svar=A16.
COMPUTE V_A16_R3 = 0.
IF (SUM(A16_1, A16_2, A16_3) <> 100.0) V_A16_R3 = 1.




* Question A17.


* [ERROR] Require the second-line modality grid because the question is marked required.
COMPUTE V_A17_R1 = 0.
IF (MISSING(A17)) V_A17_R1 = 1.



* [ERROR] Restrict modality percentages to 0 through 100.
COMPUTE V_A17_R2 = 0.
IF ((NOT MISSING(A17) AND (A17 < 0.0 OR A17 > 100.0))) V_A17_R2 = 1.



* [ERROR] Require each displayed modality distribution to total 100 percent.
!Sum_to_var svar=A17.
COMPUTE V_A17_R3 = 0.
IF (SUM(A17_2, A17_3, A17_4, A17_5, A17_6, A17_99, A17_18) <> 100.0) V_A17_R3 = 1.




* Question A18.


* [ERROR] Require the HCT-type distribution because the question is marked required.
COMPUTE V_A18_R1 = 0.
IF (MISSING(A18)) V_A18_R1 = 1.



* [ERROR] Restrict HCT percentages to 0 through 100.
COMPUTE V_A18_R2 = 0.
IF ((NOT MISSING(A18) AND (A18 < 0.0 OR A18 > 100.0))) V_A18_R2 = 1.



* [ERROR] Require each displayed HCT distribution to total 100 percent.
!Sum_to_var svar=A18.
COMPUTE V_A18_R3 = 0.
IF (SUM(A18_1, A18_2) <> 100.0) V_A18_R3 = 1.




* Question A18A.


* [ERROR] Restrict the reported eligibility percentage to 0 through 100.
COMPUTE V_A18A_R1 = 0.
IF ((NOT MISSING(A18A) AND (A18A < 0.0 OR A18A > 100.0))) V_A18A_R1 = 1.




* Question A18B.


* [ERROR] Require the CAR-T receipt distribution because the question is marked required.
COMPUTE V_A18B_R1 = 0.
IF (MISSING(A18B)) V_A18B_R1 = 1.



* [ERROR] Restrict CAR-T receipt percentages to 0 through 100.
COMPUTE V_A18B_R2 = 0.
IF ((NOT MISSING(A18B) AND (A18B < 0.0 OR A18B > 100.0))) V_A18B_R2 = 1.



* [ERROR] Require the CAR-T receipt categories to total 100 percent.
!Sum_to_var svar=A18B.
COMPUTE V_A18B_R3 = 0.
IF (SUM(A18B_1, A18B_2) <> 100.0) V_A18B_R3 = 1.




* Question A18.1.


* [ERROR] Require the response-outcome distribution because the question is marked required.
COMPUTE V_A18_1_R1 = 0.
IF (MISSING(A18.1)) V_A18_1_R1 = 1.



* [ERROR] Restrict response-outcome percentages to 0 through 100.
COMPUTE V_A18_1_R2 = 0.
IF ((NOT MISSING(A18.1) AND (A18.1 < 0.0 OR A18.1 > 100.0))) V_A18_1_R2 = 1.



* [ERROR] Require each displayed response-outcome distribution to total 100 percent.
!Sum_to_var svar=A18.1.
COMPUTE V_A18_1_R3 = 0.
IF (SUM(A18.1_1, A18.1_2, A18.1_3, A18.1_4, A18.1_5) <> 100.0) V_A18_1_R3 = 1.




* Question A19.1.
* No validation generated: Optional parent question contains instructions for the separately defined regimen grid but no direct response variable or safely expressible standalone check.



* Question A19.1_1.
* No validation generated: Placeholder variable with no question text, response options, or validation evidence.



* Question A19.1_2.


* [ERROR] Require the displayed regimen grid because the question is marked required.
COMPUTE V_A19_1_2_R1 = 0.
IF (MISSING(A19.1_2)) V_A19_1_2_R1 = 1.



* [ERROR] Require each displayed regimen percentage allocation to total 100 percent.
!Sum_to_var svar=A19.1_2.
COMPUTE V_A19_1_2_R2 = 0.
IF (SUM(A19.1_2_33, A19.1_2_34, A19.1_2_51, A19.1_2_35, A19.1_2_36, A19.1_2_37, A19.1_2_38, A19.1_2_53, A19.1_2_39, A19.1_2_40, A19.1_2_41, A19.1_2_42, A19.1_2_43, A19.1_2_44, A19.1_2_45, A19.1_2_46, A19.1_2_47, A19.1_2_48, A19.1_2_49, A19.1_2_50, A19.1_2_96, A19.1_2_97, A19.1_2_98, A19.1_2_99) <> 100.0) V_A19_1_2_R2 = 1.




* Question A19.2.
* No validation generated: Optional parent question contains instructions for the separately defined regimen grid but no direct response variable or safely expressible standalone check.



* Question A19.2_1.
* No validation generated: Placeholder variable with no question text, response options, or validation evidence.



* Question A19.2_2.


* [ERROR] Require the displayed regimen grid because the question is marked required.
COMPUTE V_A19_2_2_R1 = 0.
IF (MISSING(A19.2_2)) V_A19_2_2_R1 = 1.



* [ERROR] Require each displayed regimen percentage allocation to total 100 percent.
!Sum_to_var svar=A19.2_2.
COMPUTE V_A19_2_2_R2 = 0.
IF (SUM(A19.2_2_1, A19.2_2_2, A19.2_2_4, A19.2_2_23, A19.2_2_24, A19.2_2_5, A19.2_2_25, A19.2_2_6, A19.2_2_8, A19.2_2_9, A19.2_2_10, A19.2_2_11, A19.2_2_12, A19.2_2_15, A19.2_2_26, A19.2_2_16, A19.2_2_17, A19.2_2_18, A19.2_2_27, A19.2_2_20, A19.2_2_21, A19.2_2_28, A19.2_2_22, A19.2_2_96, A19.2_2_97, A19.2_2_98, A19.2_2_99) <> 100.0) V_A19_2_2_R2 = 1.




* Question A19.3.
* No validation generated: Optional parent question contains instructions for the separately defined regimen grid but no direct response variable or safely expressible standalone check.



* Question A19.3_1.
* No validation generated: Placeholder variable with no question text, response options, or validation evidence.



* Question A19.3_2.


* [ERROR] Require the displayed regimen grid because the question is marked required.
COMPUTE V_A19_3_2_R1 = 0.
IF (MISSING(A19.3_2)) V_A19_3_2_R1 = 1.



* [ERROR] Require each displayed regimen percentage allocation to total 100 percent.
!Sum_to_var svar=A19.3_2.
COMPUTE V_A19_3_2_R2 = 0.
IF (SUM(A19.3_2_1, A19.3_2_23, A19.3_2_2, A19.3_2_3, A19.3_2_4, A19.3_2_6, A19.3_2_7, A19.3_2_26, A19.3_2_11, A19.3_2_12, A19.3_2_13, A19.3_2_16, A19.3_2_17, A19.3_2_19, A19.3_2_24, A19.3_2_25, A19.3_2_22, A19.3_2_96, A19.3_2_97, A19.3_2_98, A19.3_2_99) <> 100.0) V_A19_3_2_R2 = 1.




* Question A19.4.
* No validation generated: Optional parent question contains instructions for the separately defined regimen grid but no direct response variable or safely expressible standalone check.



* Question A19.4_1.
* No validation generated: Placeholder variable with no question text, response options, or validation evidence.



* Question A19.4_2.


* [ERROR] Require the displayed regimen grid because the question is marked required.
COMPUTE V_A19_4_2_R1 = 0.
IF (MISSING(A19.4_2)) V_A19_4_2_R1 = 1.



* [ERROR] Require each displayed regimen percentage allocation to total 100 percent.
!Sum_to_var svar=A19.4_2.
COMPUTE V_A19_4_2_R2 = 0.
IF (SUM(A19.4_2_1, A19.4_2_2, A19.4_2_28, A19.4_2_29, A19.4_2_30, A19.4_2_3, A19.4_2_4, A19.4_2_6, A19.4_2_7, A19.4_2_24, A19.4_2_9, A19.4_2_11, A19.4_2_12, A19.4_2_13, A19.4_2_15, A19.4_2_31, A19.4_2_26, A19.4_2_32, A19.4_2_16, A19.4_2_33, A19.4_2_17, A19.4_2_34, A19.4_2_18, A19.4_2_19, A19.4_2_35, A19.4_2_27, A19.4_2_36, A19.4_2_37, A19.4_2_96, A19.4_2_97, A19.4_2_98, A19.4_2_99) <> 100.0) V_A19_4_2_R2 = 1.




* Question A19A.


* [ERROR] Restrict MRD-based blinatumomab percentages to 0 through 100.
COMPUTE V_A19A_R1 = 0.
IF ((NOT MISSING(A19A) AND (A19A < 0.0 OR A19A > 100.0))) V_A19A_R1 = 1.




* Question A20.


* [ERROR] Require the reported treatment-outcome percentages for this required question.
COMPUTE V_A20_R1 = 0.
IF (MISSING(A20)) V_A20_R1 = 1.



* [ERROR] Each reported percentage must be a whole number from 0 through 100.
COMPUTE V_A20_R2 = 0.
IF ((NOT MISSING(A20) AND (A20 < 0.0 OR A20 > 100.0))) V_A20_R2 = 1.



* [ERROR] The treatment-outcome percentages must total 100 percent for each reported population.
COMPUTE V_A20_R3 = 0.
IF (SUM(A20_4, A20_2, A20_3, A20_1) <> 100.0) V_A20_R3 = 1.




* Question A21.


* [ERROR] Require the reported timing percentages for this required question.
COMPUTE V_A21_R1 = 0.
IF (MISSING(A21)) V_A21_R1 = 1.



* [ERROR] Each timing percentage must be a whole number from 0 through 100.
COMPUTE V_A21_R2 = 0.
IF ((NOT MISSING(A21) AND (A21 < 0.0 OR A21 > 100.0))) V_A21_R2 = 1.



* [ERROR] The timing percentages must total 100 percent for each reported population.
COMPUTE V_A21_R3 = 0.
IF (SUM(A21_1, A21_2, A21_3) <> 100.0) V_A21_R3 = 1.




* Question A22.


* [ERROR] Require the modality percentages for this required question.
COMPUTE V_A22_R1 = 0.
IF (MISSING(A22)) V_A22_R1 = 1.



* [ERROR] Each modality percentage must be a whole number from 0 through 100.
COMPUTE V_A22_R2 = 0.
IF ((NOT MISSING(A22) AND (A22 < 0.0 OR A22 > 100.0))) V_A22_R2 = 1.



* [ERROR] The modality percentages must total 100 percent for each reported population.
COMPUTE V_A22_R3 = 0.
IF (SUM(A22_2, A22_3, A22_4, A22_5, A22_6, A22_99) <> 100.0) V_A22_R3 = 1.




* Question A23.


* [ERROR] Require the HCT-type percentages for this required question.
COMPUTE V_A23_R1 = 0.
IF (MISSING(A23)) V_A23_R1 = 1.



* [ERROR] Each HCT percentage must be a whole number from 0 through 100.
COMPUTE V_A23_R2 = 0.
IF ((NOT MISSING(A23) AND (A23 < 0.0 OR A23 > 100.0))) V_A23_R2 = 1.



* [ERROR] The HCT-type percentages must total 100 percent for each reported population.
COMPUTE V_A23_R3 = 0.
IF (SUM(A23_1, A23_2) <> 100.0) V_A23_R3 = 1.




* Question A23A.


* [ERROR] The CAR-T eligibility percentage must be a whole number from 0 through 100.
COMPUTE V_A23A_R1 = 0.
IF ((NOT MISSING(A23A) AND (A23A < 0.0 OR A23A > 100.0))) V_A23A_R1 = 1.




* Question A23B.


* [ERROR] Require the CAR-T uptake percentages for this required question.
COMPUTE V_A23B_R1 = 0.
IF (MISSING(A23B)) V_A23B_R1 = 1.



* [ERROR] Each CAR-T uptake percentage must be a whole number from 0 through 100.
COMPUTE V_A23B_R2 = 0.
IF ((NOT MISSING(A23B) AND (A23B < 0.0 OR A23B > 100.0))) V_A23B_R2 = 1.



* [ERROR] The CAR-T uptake percentages must total 100 percent.
COMPUTE V_A23B_R3 = 0.
IF (SUM(A23B_1, A23B_2) <> 100.0) V_A23B_R3 = 1.




* Question A23.1.


* [ERROR] Require the response-outcome percentages for this required question.
COMPUTE V_A23_1_R1 = 0.
IF (MISSING(A23.1)) V_A23_1_R1 = 1.



* [ERROR] Each response-outcome percentage must be a whole number from 0 through 100.
COMPUTE V_A23_1_R2 = 0.
IF ((NOT MISSING(A23.1) AND (A23.1 < 0.0 OR A23.1 > 100.0))) V_A23_1_R2 = 1.



* [ERROR] The response-outcome percentages must total 100 percent for each reported population.
COMPUTE V_A23_1_R3 = 0.
IF (SUM(A23.1_1, A23.1_2, A23.1_3, A23.1_4, A23.1_5) <> 100.0) V_A23_1_R3 = 1.




* Question A24.1.


* [ERROR] Reported treated percentages must be whole numbers from 0 through 100.
COMPUTE V_A24_1_R1 = 0.
IF ((NOT MISSING(A24.1_2) AND (A24.1_2 < 0.0 OR A24.1_2 > 100.0))) V_A24_1_R1 = 1.



* [ERROR] The regimen treated percentages must total 100 percent for each reported population.
COMPUTE V_A24_1_R2 = 0.
IF (SUM(A24.1_2) <> 100.0) V_A24_1_R2 = 1.




* Question A24.1_1.
* No validation generated: The supplied item is an unlabeled structural placeholder with no response specification.



* Question A24.1_2.


* [ERROR] Require the regimen table responses when this required table is displayed.
COMPUTE V_A24_1_2_R1 = 0.
IF (MISSING(A24.1_2)) V_A24_1_2_R1 = 1.



* [ERROR] Reported treated percentages in the regimen table must be whole numbers from 0 through 100.
COMPUTE V_A24_1_2_R2 = 0.
IF ((NOT MISSING(A24.1_2) AND (A24.1_2 < 0.0 OR A24.1_2 > 100.0))) V_A24_1_2_R2 = 1.



* [ERROR] The regimen treated percentages must total 100 percent for each reported population.
COMPUTE V_A24_1_2_R3 = 0.
IF (SUM(A24.1_2_35, A24.1_2_36, A24.1_2_53, A24.1_2_37, A24.1_2_38, A24.1_2_39, A24.1_2_40, A24.1_2_54, A24.1_2_41, A24.1_2_42, A24.1_2_43, A24.1_2_44, A24.1_2_45, A24.1_2_46, A24.1_2_47, A24.1_2_48, A24.1_2_49, A24.1_2_50, A24.1_2_51, A24.1_2_52, A24.1_2_96, A24.1_2_97, A24.1_2_98, A24.1_2_99) <> 100.0) V_A24_1_2_R3 = 1.




* Question A24.2.


* [ERROR] Reported treated percentages must be whole numbers from 0 through 100.
COMPUTE V_A24_2_R1 = 0.
IF ((NOT MISSING(A24.2_2) AND (A24.2_2 < 0.0 OR A24.2_2 > 100.0))) V_A24_2_R1 = 1.



* [ERROR] The regimen treated percentages must total 100 percent for each reported population.
COMPUTE V_A24_2_R2 = 0.
IF (SUM(A24.2_2) <> 100.0) V_A24_2_R2 = 1.




* Question A24.2_1.
* No validation generated: The supplied item is an unlabeled structural placeholder with no response specification.



* Question A24.2_2.


* [ERROR] Require the regimen table responses when this required table is displayed.
COMPUTE V_A24_2_2_R1 = 0.
IF (MISSING(A24.2_2)) V_A24_2_2_R1 = 1.



* [ERROR] Reported treated percentages in the regimen table must be whole numbers from 0 through 100.
COMPUTE V_A24_2_2_R2 = 0.
IF ((NOT MISSING(A24.2_2) AND (A24.2_2 < 0.0 OR A24.2_2 > 100.0))) V_A24_2_2_R2 = 1.



* [ERROR] The regimen treated percentages must total 100 percent for each reported population.
COMPUTE V_A24_2_2_R3 = 0.
IF (SUM(A24.2_2_1, A24.2_2_2, A24.2_2_4, A24.2_2_26, A24.2_2_27, A24.2_2_5, A24.2_2_6, A24.2_2_28, A24.2_2_8, A24.2_2_9, A24.2_2_10, A24.2_2_12, A24.2_2_13, A24.2_2_15, A24.2_2_29, A24.2_2_16, A24.2_2_17, A24.2_2_18, A24.2_2_19, A24.2_2_30, A24.2_2_22, A24.2_2_31, A24.2_2_25, A24.2_2_96, A24.2_2_97, A24.2_2_98, A24.2_2_99) <> 100.0) V_A24_2_2_R3 = 1.




* Question A24.3.


* [ERROR] Reported treated percentages must be whole numbers from 0 through 100.
COMPUTE V_A24_3_R1 = 0.
IF ((NOT MISSING(A24.3_2) AND (A24.3_2 < 0.0 OR A24.3_2 > 100.0))) V_A24_3_R1 = 1.



* [ERROR] The regimen treated percentages must total 100 percent for each reported population.
COMPUTE V_A24_3_R2 = 0.
IF (SUM(A24.3_2) <> 100.0) V_A24_3_R2 = 1.




* Question A24.3_1.
* No validation generated: The supplied item is an unlabeled structural placeholder with no response specification.



* Question A24.3_2.


* [ERROR] Require the regimen table responses when this required table is displayed.
COMPUTE V_A24_3_2_R1 = 0.
IF (MISSING(A24.3_2)) V_A24_3_2_R1 = 1.



* [ERROR] Reported treated percentages in the regimen table must be whole numbers from 0 through 100.
COMPUTE V_A24_3_2_R2 = 0.
IF ((NOT MISSING(A24.3_2) AND (A24.3_2 < 0.0 OR A24.3_2 > 100.0))) V_A24_3_2_R2 = 1.



* [ERROR] The regimen treated percentages must total 100 percent for each reported population.
COMPUTE V_A24_3_2_R3 = 0.
IF (SUM(A24.3_2_1, A24.3_2_27, A24.3_2_2, A24.3_2_3, A24.3_2_4, A24.3_2_6, A24.3_2_7, A24.3_2_28, A24.3_2_8, A24.3_2_9, A24.3_2_12, A24.3_2_13, A24.3_2_14, A24.3_2_15, A24.3_2_16, A24.3_2_17, A24.3_2_18, A24.3_2_24, A24.3_2_25, A24.3_2_23, A24.3_2_26, A24.3_2_96, A24.3_2_97, A24.3_2_98, A24.3_2_99) <> 100.0) V_A24_3_2_R3 = 1.




* Question A24.4.


* [ERROR] Reported treated percentages must be whole numbers from 0 through 100.
COMPUTE V_A24_4_R1 = 0.
IF ((NOT MISSING(A24.4_2) AND (A24.4_2 < 0.0 OR A24.4_2 > 100.0))) V_A24_4_R1 = 1.



* [ERROR] The regimen treated percentages must total 100 percent for each reported population.
COMPUTE V_A24_4_R2 = 0.
IF (SUM(A24.4_2) <> 100.0) V_A24_4_R2 = 1.




* Question A24.4_1.
* No validation generated: The supplied item is an unlabeled structural placeholder with no response specification.



* Question A24.4_2.


* [ERROR] Require the regimen table responses when this required table is displayed.
COMPUTE V_A24_4_2_R1 = 0.
IF (MISSING(A24.4_2)) V_A24_4_2_R1 = 1.



* [ERROR] Reported treated percentages in the regimen table must be whole numbers from 0 through 100.
COMPUTE V_A24_4_2_R2 = 0.
IF ((NOT MISSING(A24.4_2) AND (A24.4_2 < 0.0 OR A24.4_2 > 100.0))) V_A24_4_2_R2 = 1.



* [ERROR] The regimen treated percentages must total 100 percent for each reported population.
COMPUTE V_A24_4_2_R3 = 0.
IF (SUM(A24.4_2_2, A24.4_2_29, A24.4_2_30, A24.4_2_31, A24.4_2_3, A24.4_2_4, A24.4_2_6, A24.4_2_32, A24.4_2_8, A24.4_2_24, A24.4_2_9, A24.4_2_12, A24.4_2_13, A24.4_2_14, A24.4_2_16, A24.4_2_25, A24.4_2_33, A24.4_2_26, A24.4_2_34, A24.4_2_35, A24.4_2_18, A24.4_2_36, A24.4_2_21, A24.4_2_28, A24.4_2_37, A24.4_2_38, A24.4_2_96, A24.4_2_97, A24.4_2_98, A24.4_2_99) <> 100.0) V_A24_4_2_R3 = 1.




* Question A25.


* [ERROR] Require the treatment-outcome percentages for this required question.
COMPUTE V_A25_R1 = 0.
IF (MISSING(A25)) V_A25_R1 = 1.



* [ERROR] Each reported percentage must be a whole number from 0 through 100.
COMPUTE V_A25_R2 = 0.
IF ((NOT MISSING(A25) AND (A25 < 0.0 OR A25 > 100.0))) V_A25_R2 = 1.



* [ERROR] The treatment-outcome percentages must total 100 percent for each reported population.
COMPUTE V_A25_R3 = 0.
IF (SUM(A25_4, A25_2, A25_3, A25_1) <> 100.0) V_A25_R3 = 1.




* Question A28A.
* No validation generated: This is a conditional display placeholder with no respondent-entered response specification.



* Question A28B.
* No validation generated: This is a conditional display placeholder with no respondent-entered response specification.



* Question A29.


* [ERROR] Each reported progression-free-survival value must be a whole number from 0 through 100 as specified.
COMPUTE V_A29_R1 = 0.
IF ((NOT MISSING(A29) AND (A29 < 0.0 OR A29 > 100.0))) V_A29_R1 = 1.




* Question A40.


* [ERROR] Require the initial-therapy modality percentages for this required question.
COMPUTE V_A40_R1 = 0.
IF (MISSING(A40)) V_A40_R1 = 1.



* [ERROR] Each initial-therapy modality percentage must be a whole number from 0 through 100.
COMPUTE V_A40_R2 = 0.
IF ((NOT MISSING(A40) AND (A40 < 0.0 OR A40 > 100.0))) V_A40_R2 = 1.



* [ERROR] The initial-therapy modality percentages must total 100 percent for each reported population.
COMPUTE V_A40_R3 = 0.
IF (SUM(A40_1, A40_2, A40_3, A40_4, A40_5, A40_6, A40_99) <> 100.0) V_A40_R3 = 1.




* Question A41.


* [ERROR] Require the HCT-type percentages for this required question.
COMPUTE V_A41_R1 = 0.
IF (MISSING(A41)) V_A41_R1 = 1.



* [ERROR] Each HCT percentage must be a whole number from 0 through 100.
COMPUTE V_A41_R2 = 0.
IF ((NOT MISSING(A41) AND (A41 < 0.0 OR A41 > 100.0))) V_A41_R2 = 1.



* [ERROR] The HCT-type percentages must total 100 percent for each reported population.
COMPUTE V_A41_R3 = 0.
IF (SUM(A41_1, A41_2) <> 100.0) V_A41_R3 = 1.




* Question A41.1.


* [ERROR] Responses must be whole-number percentages from 0 to 100.
!Numeric svar=A41.1 min=0 max=100.
COMPUTE V_A41_1_R1 = 0.
IF ((NOT MISSING(A41.1) AND (A41.1 < 0.0 OR A41.1 > 100.0))) V_A41_1_R1 = 1.




* Question A41.2.


* [ERROR] Responses must be whole numbers from 0 to 99 months.
!Numeric svar=A41.2 min=0 max=99.
COMPUTE V_A41_2_R1 = 0.
IF ((NOT MISSING(A41.2) AND (A41.2 < 0.0 OR A41.2 > 99.0))) V_A41_2_R1 = 1.




* Question A42.


* [ERROR] Each response must be a whole-number percentage from 0 to 100.
!Numeric svar=A42 min=0 max=100.
COMPUTE V_A42_R1 = 0.
IF ((NOT MISSING(A42) AND (A42 < 0.0 OR A42 > 100.0))) V_A42_R1 = 1.



* [ERROR] The response percentages must total 100 for each displayed age group.
COMPUTE V_A42_R2 = 0.
IF (SUM(A42_1, A42_2, A42_3, A42_4, A42_5) <> 100.0) V_A42_R2 = 1.




* Question A45.


* [ERROR] Each response must be a whole-number percentage from 0 to 100.
!Numeric svar=A45 min=0 max=100.
COMPUTE V_A45_R1 = 0.
IF ((NOT MISSING(A45) AND (A45 < 0.0 OR A45 > 100.0))) V_A45_R1 = 1.




* Question A46.1.


* [ERROR] The percentage-treated entries must total 100 for each displayed age group.
COMPUTE V_A46_1_R1 = 0.
IF (SUM(A46.1_2) <> 100.0) V_A46_1_R1 = 1.




* Question A46.1_1.
* No validation generated: The supplied record is an unlabeled structural placeholder with no response scale, range, or independently identifiable validation target.



* Question A46.1_2.


* [ERROR] The percentage-treated entries must total 100 for each displayed age group.
COMPUTE V_A46_1_2_R2 = 0.
IF (SUM(A46.1_2_46, A46.1_2_47, A46.1_2_48, A46.1_2_49, A46.1_2_50, A46.1_2_51, A46.1_2_52, A46.1_2_53, A46.1_2_54, A46.1_2_55, A46.1_2_56, A46.1_2_57, A46.1_2_58, A46.1_2_59, A46.1_2_60, A46.1_2_61, A46.1_2_62, A46.1_2_63, A46.1_2_64, A46.1_2_65, A46.1_2_66, A46.1_2_67, A46.1_2_68, A46.1_2_69, A46.1_2_70, A46.1_2_71, A46.1_2_72, A46.1_2_73, A46.1_2_74, A46.1_2_75, A46.1_2_76, A46.1_2_77, A46.1_2_78, A46.1_2_79, A46.1_2_80, A46.1_2_81, A46.1_2_82, A46.1_2_83, A46.1_2_84, A46.1_2_85, A46.1_2_86, A46.1_2_96, A46.1_2_97, A46.1_2_98, A46.1_2_99) <> 100.0) V_A46_1_2_R2 = 1.




* Question A46.2.


* [ERROR] The percentage-treated entries must total 100 for each displayed age group.
COMPUTE V_A46_2_R1 = 0.
IF (SUM(A46.2_2) <> 100.0) V_A46_2_R1 = 1.




* Question A46.2_1.
* No validation generated: The supplied record is an unlabeled structural placeholder with no response scale, range, or independently identifiable validation target.



* Question A46.2_2.


* [ERROR] The percentage-treated entries must total 100 for each displayed age group.
COMPUTE V_A46_2_2_R2 = 0.
IF (SUM(A46.2_2_25, A46.2_2_26, A46.2_2_27, A46.2_2_28, A46.2_2_35, A46.2_2_5, A46.2_2_29, A46.2_2_11, A46.2_2_16, A46.2_2_17, A46.2_2_23, A46.2_2_30, A46.2_2_31, A46.2_2_32, A46.2_2_36, A46.2_2_33, A46.2_2_34, A46.2_2_21, A46.2_2_24, A46.2_2_10, A46.2_2_37, A46.2_2_38, A46.2_2_18, A46.2_2_39, A46.2_2_40, A46.2_2_19, A46.2_2_41, A46.2_2_42, A46.2_2_43, A46.2_2_2, A46.2_2_3, A46.2_2_4, A46.2_2_15, A46.2_2_96, A46.2_2_97, A46.2_2_98, A46.2_2_99) <> 100.0) V_A46_2_2_R2 = 1.




* Question A46.3.


* [ERROR] The percentage-treated entries must total 100 for each displayed age group.
COMPUTE V_A46_3_R1 = 0.
IF (SUM(A46.3_2) <> 100.0) V_A46_3_R1 = 1.




* Question A46.3_1.
* No validation generated: The supplied record is an unlabeled structural placeholder with no response scale, range, or independently identifiable validation target.



* Question A46.3_2.


* [ERROR] The percentage-treated entries must total 100 for each displayed age group.
COMPUTE V_A46_3_2_R2 = 0.
IF (SUM(A46.3_2_20, A46.3_2_21, A46.3_2_4, A46.3_2_22, A46.3_2_7, A46.3_2_23, A46.3_2_24, A46.3_2_15, A46.3_2_16, A46.3_2_25, A46.3_2_26, A46.3_2_27, A46.3_2_3, A46.3_2_28, A46.3_2_29, A46.3_2_30, A46.3_2_12, A46.3_2_11, A46.3_2_31, A46.3_2_32, A46.3_2_33, A46.3_2_34, A46.3_2_35, A46.3_2_36, A46.3_2_37, A46.3_2_38, A46.3_2_39, A46.3_2_1, A46.3_2_2, A46.3_2_5, A46.3_2_6, A46.3_2_96, A46.3_2_97, A46.3_2_98, A46.3_2_99) <> 100.0) V_A46_3_2_R2 = 1.




* Question A46.4.


* [ERROR] The percentage-treated entries must total 100 for each displayed age group.
COMPUTE V_A46_4_R1 = 0.
IF (SUM(A46.4_2) <> 100.0) V_A46_4_R1 = 1.




* Question A46.4_1.
* No validation generated: The supplied record is an unlabeled structural placeholder with no response scale, range, or independently identifiable validation target.



* Question A46.4_2.


* [ERROR] The percentage-treated entries must total 100 for each displayed age group.
COMPUTE V_A46_4_2_R2 = 0.
IF (SUM(A46.4_2_23, A46.4_2_24, A46.4_2_4, A46.4_2_7, A46.4_2_25, A46.4_2_26, A46.4_2_27, A46.4_2_15, A46.4_2_28, A46.4_2_16, A46.4_2_3, A46.4_2_29, A46.4_2_30, A46.4_2_31, A46.4_2_32, A46.4_2_33, A46.4_2_34, A46.4_2_12, A46.4_2_35, A46.4_2_11, A46.4_2_36, A46.4_2_40, A46.4_2_37, A46.4_2_42, A46.4_2_43, A46.4_2_44, A46.4_2_38, A46.4_2_41, A46.4_2_39, A46.4_2_1, A46.4_2_2, A46.4_2_5, A46.4_2_6, A46.4_2_96, A46.4_2_97, A46.4_2_98, A46.4_2_99) <> 100.0) V_A46_4_2_R2 = 1.




* Question A46A.


* [ERROR] The response must be a whole-number percentage from 0 to 100.
!Numeric svar=A46A min=0 max=100.
COMPUTE V_A46A_R1 = 0.
IF ((NOT MISSING(A46A) AND (A46A < 0.0 OR A46A > 100.0))) V_A46A_R1 = 1.




* Question A46C.


* [ERROR] Each outcome must be a whole-number percentage from 0 to 100.
!Numeric svar=A46C min=0 max=100.
COMPUTE V_A46C_R1 = 0.
IF ((NOT MISSING(A46C) AND (A46C < 0.0 OR A46C > 100.0))) V_A46C_R1 = 1.



* [ERROR] The two outcome percentages must total 100 for each displayed age group.
COMPUTE V_A46C_R2 = 0.
IF (SUM(A46C_1, A46C_2) <> 100.0) V_A46C_R2 = 1.




* Question A46D.
* No validation generated: The model proposed only incomplete rules; they were omitted during deterministic validation.



* Question A46B.


* [ERROR] MRD-negative percentages must be whole numbers from 0 to 100.
!Numeric svar=A46B min=0 max=100.
COMPUTE V_A46B_R1 = 0.
IF ((NOT MISSING(A46B) AND (A46B < 0.0 OR A46B > 100.0))) V_A46B_R1 = 1.




* Question A47.1.


* [ERROR] The percentage-treated entries must total 100 for each displayed age group.
COMPUTE V_A47_1_R1 = 0.
IF (SUM(A47.1_2) <> 100.0) V_A47_1_R1 = 1.




* Question A47.1_1.
* No validation generated: The supplied record is an unlabeled structural placeholder with no response scale, range, or independently identifiable validation target.



* Question A47.1_2.


* [ERROR] The percentage-treated entries must total 100 for each displayed age group.
COMPUTE V_A47_1_2_R2 = 0.
IF (SUM(A47.1_2_50, A47.1_2_51, A47.1_2_52, A47.1_2_53, A47.1_2_54, A47.1_2_55, A47.1_2_56, A47.1_2_57, A47.1_2_58, A47.1_2_59, A47.1_2_60, A47.1_2_61, A47.1_2_62, A47.1_2_63, A47.1_2_64, A47.1_2_65, A47.1_2_66, A47.1_2_67, A47.1_2_68, A47.1_2_69, A47.1_2_70, A47.1_2_71, A47.1_2_72, A47.1_2_73, A47.1_2_74, A47.1_2_75, A47.1_2_76, A47.1_2_77, A47.1_2_78, A47.1_2_79, A47.1_2_80, A47.1_2_81, A47.1_2_82, A47.1_2_83, A47.1_2_84, A47.1_2_85, A47.1_2_86, A47.1_2_87, A47.1_2_88, A47.1_2_96, A47.1_2_97, A47.1_2_98, A47.1_2_99) <> 100.0) V_A47_1_2_R2 = 1.




* Question A47.2.


* [ERROR] The percentage-treated entries must total 100 for each displayed age group.
COMPUTE V_A47_2_R1 = 0.
IF (SUM(A47.2_1) <> 100.0) V_A47_2_R1 = 1.




* Question A47.2_1.
* No validation generated: The supplied record is an unlabeled structural placeholder with no response scale, range, or independently identifiable validation target.



* Question A47.2_2.


* [ERROR] Percent-of-patients entries must be between 0 and 100.
COMPUTE V_A47_2_2_R1 = 0.
IF ((NOT MISSING(A47.2_2) AND NOT ANY(A47.2_2, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100))) V_A47_2_2_R1 = 1.



* [ERROR] The displayed percent-of-patients allocations must total 100%.
COMPUTE V_A47_2_2_R2 = 0.
IF (SUM(A47.2_2_1, A47.2_2_5, A47.2_2_31, A47.2_2_32, A47.2_2_33, A47.2_2_34, A47.2_2_13, A47.2_2_19, A47.2_2_27, A47.2_2_28, A47.2_2_29, A47.2_2_30, A47.2_2_35, A47.2_2_36, A47.2_2_37, A47.2_2_38, A47.2_2_12, A47.2_2_39, A47.2_2_40, A47.2_2_23, A47.2_2_41, A47.2_2_42, A47.2_2_24, A47.2_2_43, A47.2_2_44, A47.2_2_45, A47.2_2_2, A47.2_2_3, A47.2_2_4, A47.2_2_10, A47.2_2_96, A47.2_2_97, A47.2_2_98, A47.2_2_99) <> 100.0) V_A47_2_2_R2 = 1.




* Question A47.3.


* [ERROR] Percent-treated entries must be between 0 and 100.
COMPUTE V_A47_3_R1 = 0.
IF ((NOT MISSING(A47.3_1) AND NOT ANY(A47.3_1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100))) V_A47_3_R1 = 1.



* [ERROR] Actual-months entries must be between 1 and 99.
COMPUTE V_A47_3_R2 = 0.
IF ((NOT MISSING(A47.3_2) AND NOT ANY(A47.3_2, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99))) V_A47_3_R2 = 1.



* [ERROR] Percent-treated allocations must total 100%.
COMPUTE V_A47_3_R3 = 0.
IF (SUM(A47.3_1) <> 100.0) V_A47_3_R3 = 1.




* Question A47.3_1.


* [ERROR] Percent-treated entries must be between 0 and 100.
COMPUTE V_A47_3_1_R1 = 0.
IF ((NOT MISSING(A47.3_1) AND NOT ANY(A47.3_1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100))) V_A47_3_1_R1 = 1.




* Question A47.3_2.


* [ERROR] Actual-months entries must be between 1 and 99.
COMPUTE V_A47_3_2_R1 = 0.
IF ((NOT MISSING(A47.3_2) AND NOT ANY(A47.3_2, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99))) V_A47_3_2_R1 = 1.




* Question A47.4.


* [ERROR] Percent-treated entries must be between 0 and 100.
COMPUTE V_A47_4_R1 = 0.
IF ((NOT MISSING(A47.4_1) AND NOT ANY(A47.4_1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100))) V_A47_4_R1 = 1.



* [ERROR] Actual-months entries must be between 1 and 99.
COMPUTE V_A47_4_R2 = 0.
IF ((NOT MISSING(A47.4_2) AND NOT ANY(A47.4_2, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99))) V_A47_4_R2 = 1.



* [ERROR] Percent-treated allocations must total 100%.
COMPUTE V_A47_4_R3 = 0.
IF (SUM(A47.4_1) <> 100.0) V_A47_4_R3 = 1.




* Question A47.4_1.


* [ERROR] Percent-treated entries must be between 0 and 100.
COMPUTE V_A47_4_1_R1 = 0.
IF ((NOT MISSING(A47.4_1) AND NOT ANY(A47.4_1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100))) V_A47_4_1_R1 = 1.




* Question A47.4_2.


* [ERROR] Percent-of-patients entries must be between 0 and 100.
COMPUTE V_A47_4_2_R1 = 0.
IF ((NOT MISSING(A47.4_2) AND NOT ANY(A47.4_2, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100))) V_A47_4_2_R1 = 1.



* [ERROR] Displayed percent-of-patients allocations must total 100%.
COMPUTE V_A47_4_2_R2 = 0.
IF (SUM(A47.4_2_25, A47.4_2_8, A47.4_2_9, A47.4_2_26, A47.4_2_27, A47.4_2_28, A47.4_2_29, A47.4_2_34, A47.4_2_24, A47.4_2_30, A47.4_2_31, A47.4_2_32, A47.4_2_33, A47.4_2_19, A47.4_2_35, A47.4_2_18, A47.4_2_36, A47.4_2_37, A47.4_2_40, A47.4_2_42, A47.4_2_43, A47.4_2_44, A47.4_2_38, A47.4_2_39, A47.4_2_41, A47.4_2_1, A47.4_2_2, A47.4_2_3, A47.4_2_5, A47.4_2_7, A47.4_2_10, A47.4_2_17, A47.4_2_22, A47.4_2_20, A47.4_2_96, A47.4_2_97, A47.4_2_98, A47.4_2_99) <> 100.0) V_A47_4_2_R2 = 1.




* Question A48.1.


* [ERROR] Percent-treated entries must be between 0 and 100.
COMPUTE V_A48_1_R1 = 0.
IF ((NOT MISSING(A48.1_1) AND NOT ANY(A48.1_1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100))) V_A48_1_R1 = 1.



* [ERROR] Actual-months entries must be between 1 and 99.
COMPUTE V_A48_1_R2 = 0.
IF ((NOT MISSING(A48.1_2) AND NOT ANY(A48.1_2, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99))) V_A48_1_R2 = 1.



* [ERROR] Percent-treated allocations must total 100%.
COMPUTE V_A48_1_R3 = 0.
IF (SUM(A48.1_1) <> 100.0) V_A48_1_R3 = 1.




* Question A48.1_1.


* [ERROR] Percent-treated entries must be between 0 and 100.
COMPUTE V_A48_1_1_R1 = 0.
IF ((NOT MISSING(A48.1_1) AND NOT ANY(A48.1_1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100))) V_A48_1_1_R1 = 1.




* Question A48.1_2.


* [ERROR] Percent-of-patients entries must be between 0 and 100.
COMPUTE V_A48_1_2_R1 = 0.
IF ((NOT MISSING(A48.1_2) AND NOT ANY(A48.1_2, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100))) V_A48_1_2_R1 = 1.



* [ERROR] Displayed percent-of-patients allocations must total 100%.
COMPUTE V_A48_1_2_R2 = 0.
IF (SUM(A48.1_2_8, A48.1_2_24, A48.1_2_21, A48.1_2_25, A48.1_2_10, A48.1_2_26, A48.1_2_27, A48.1_2_28, A48.1_2_29, A48.1_2_96, A48.1_2_97, A48.1_2_98, A48.1_2_99) <> 100.0) V_A48_1_2_R2 = 1.




* Question A48.2.


* [ERROR] Percent-treated entries must be between 0 and 100.
COMPUTE V_A48_2_R1 = 0.
IF ((NOT MISSING(A48.2_1) AND NOT ANY(A48.2_1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100))) V_A48_2_R1 = 1.



* [ERROR] Actual-months entries must be between 1 and 99.
COMPUTE V_A48_2_R2 = 0.
IF ((NOT MISSING(A48.2_2) AND NOT ANY(A48.2_2, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99))) V_A48_2_R2 = 1.



* [ERROR] Percent-treated allocations must total 100%.
COMPUTE V_A48_2_R3 = 0.
IF (SUM(A48.2_1) <> 100.0) V_A48_2_R3 = 1.




* Question A48.2_1.


* [ERROR] Percent-treated entries must be between 0 and 100.
COMPUTE V_A48_2_1_R1 = 0.
IF ((NOT MISSING(A48.2_1) AND NOT ANY(A48.2_1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100))) V_A48_2_1_R1 = 1.




* Question A48.2_2.


* [ERROR] Percent-of-patients entries must be between 0 and 100.
COMPUTE V_A48_2_2_R1 = 0.
IF ((NOT MISSING(A48.2_2) AND NOT ANY(A48.2_2, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100))) V_A48_2_2_R1 = 1.



* [ERROR] Displayed percent-of-patients allocations must total 100%.
COMPUTE V_A48_2_2_R2 = 0.
IF (SUM(A48.2_2_8, A48.2_2_25, A48.2_2_22, A48.2_2_26, A48.2_2_10, A48.2_2_27, A48.2_2_28, A48.2_2_29, A48.2_2_30, A48.2_2_96, A48.2_2_97, A48.2_2_98, A48.2_2_99) <> 100.0) V_A48_2_2_R2 = 1.




* Question A48.3.


* [ERROR] Percent-treated entries must be between 0 and 100.
COMPUTE V_A48_3_R1 = 0.
IF ((NOT MISSING(A48.3_1) AND NOT ANY(A48.3_1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100))) V_A48_3_R1 = 1.



* [ERROR] Actual-months entries must be between 1 and 99.
COMPUTE V_A48_3_R2 = 0.
IF ((NOT MISSING(A48.3_2) AND NOT ANY(A48.3_2, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99))) V_A48_3_R2 = 1.



* [ERROR] Percent-treated allocations must total 100%.
COMPUTE V_A48_3_R3 = 0.
IF (SUM(A48.3_1) <> 100.0) V_A48_3_R3 = 1.




* Question A48.3_1.


* [ERROR] Percent-treated entries must be between 0 and 100.
COMPUTE V_A48_3_1_R1 = 0.
IF ((NOT MISSING(A48.3_1) AND NOT ANY(A48.3_1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100))) V_A48_3_1_R1 = 1.




* Question A48.3_2.


* [ERROR] Percent-of-patients entries must be between 0 and 100.
COMPUTE V_A48_3_2_R1 = 0.
IF ((NOT MISSING(A48.3_2) AND NOT ANY(A48.3_2, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100))) V_A48_3_2_R1 = 1.



* [ERROR] Displayed percent-of-patients allocations must total 100%.
COMPUTE V_A48_3_2_R2 = 0.
IF (SUM(A48.3_2_13, A48.3_2_14, A48.3_2_9, A48.3_2_10, A48.3_2_3, A48.3_2_4, A48.3_2_15, A48.3_2_16, A48.3_2_17, A48.3_2_96, A48.3_2_97, A48.3_2_98, A48.3_2_99) <> 100.0) V_A48_3_2_R2 = 1.




* Question A48.4.


* [ERROR] Percent-treated entries must be between 0 and 100.
COMPUTE V_A48_4_R1 = 0.
IF ((NOT MISSING(A48.4_1) AND NOT ANY(A48.4_1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100))) V_A48_4_R1 = 1.



* [ERROR] Actual-months entries must be between 1 and 99.
COMPUTE V_A48_4_R2 = 0.
IF ((NOT MISSING(A48.4_2) AND NOT ANY(A48.4_2, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99))) V_A48_4_R2 = 1.



* [ERROR] Percent-treated allocations must total 100%.
COMPUTE V_A48_4_R3 = 0.
IF (SUM(A48.4_1) <> 100.0) V_A48_4_R3 = 1.




* Question A48.4_1.


* [ERROR] Percent-treated entries must be between 0 and 100.
COMPUTE V_A48_4_1_R1 = 0.
IF ((NOT MISSING(A48.4_1) AND NOT ANY(A48.4_1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100))) V_A48_4_1_R1 = 1.




* Question A48.4_2.


* [ERROR] Percent-of-patients entries must be between 0 and 100.
COMPUTE V_A48_4_2_R1 = 0.
IF ((NOT MISSING(A48.4_2) AND NOT ANY(A48.4_2, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100))) V_A48_4_2_R1 = 1.



* [ERROR] Displayed percent-of-patients allocations must total 100%.
COMPUTE V_A48_4_2_R2 = 0.
IF (SUM(A48.4_2_12, A48.4_2_13, A48.4_2_9, A48.4_2_10, A48.4_2_3, A48.4_2_4, A48.4_2_14, A48.4_2_15, A48.4_2_16, A48.4_2_96, A48.4_2_97, A48.4_2_98, A48.4_2_99) <> 100.0) V_A48_4_2_R2 = 1.




* Question A49.1.


* [ERROR] Percent-treated entries must be between 0 and 100.
COMPUTE V_A49_1_R1 = 0.
IF ((NOT MISSING(A49.1_1) AND NOT ANY(A49.1_1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100))) V_A49_1_R1 = 1.



* [ERROR] Actual-months entries must be between 1 and 99.
COMPUTE V_A49_1_R2 = 0.
IF ((NOT MISSING(A49.1_2) AND NOT ANY(A49.1_2, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99))) V_A49_1_R2 = 1.



* [ERROR] Percent-treated allocations must total 100%.
COMPUTE V_A49_1_R3 = 0.
IF (SUM(A49.1_1) <> 100.0) V_A49_1_R3 = 1.




* Question A49.1_1.


* [ERROR] Percent-treated entries must be between 0 and 100.
COMPUTE V_A49_1_1_R1 = 0.
IF ((NOT MISSING(A49.1_1) AND NOT ANY(A49.1_1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100))) V_A49_1_1_R1 = 1.




* Question A49.1_2.


* [ERROR] Percent-of-patients entries must be between 0 and 100.
COMPUTE V_A49_1_2_R1 = 0.
IF ((NOT MISSING(A49.1_2) AND NOT ANY(A49.1_2, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100))) V_A49_1_2_R1 = 1.



* [ERROR] Displayed percent-of-patients allocations must total 100%.
COMPUTE V_A49_1_2_R2 = 0.
IF (SUM(A49.1_2_40, A49.1_2_41, A49.1_2_42, A49.1_2_43, A49.1_2_44, A49.1_2_45, A49.1_2_46, A49.1_2_47, A49.1_2_48, A49.1_2_49, A49.1_2_50, A49.1_2_51, A49.1_2_52, A49.1_2_53, A49.1_2_54, A49.1_2_55, A49.1_2_56, A49.1_2_57, A49.1_2_58, A49.1_2_59, A49.1_2_60, A49.1_2_96, A49.1_2_97, A49.1_2_98, A49.1_2_99) <> 100.0) V_A49_1_2_R2 = 1.




* Question A49.2.


* [ERROR] Percent-treated entries must be between 0 and 100.
COMPUTE V_A49_2_R1 = 0.
IF ((NOT MISSING(A49.2_1) AND NOT ANY(A49.2_1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100))) V_A49_2_R1 = 1.



* [ERROR] Actual-months entries must be between 1 and 99.
COMPUTE V_A49_2_R2 = 0.
IF ((NOT MISSING(A49.2_2) AND NOT ANY(A49.2_2, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99))) V_A49_2_R2 = 1.



* [ERROR] Percent-treated allocations must total 100%.
COMPUTE V_A49_2_R3 = 0.
IF (SUM(A49.2_1) <> 100.0) V_A49_2_R3 = 1.




* Question A49.2_1.


* [ERROR] Percent-treated entries must be between 0 and 100.
COMPUTE V_A49_2_1_R1 = 0.
IF ((NOT MISSING(A49.2_1) AND NOT ANY(A49.2_1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100))) V_A49_2_1_R1 = 1.




* Question A49.2_2.


* [ERROR] Percent-of-patients entries must be between 0 and 100.
COMPUTE V_A49_2_2_R1 = 0.
IF ((NOT MISSING(A49.2_2) AND NOT ANY(A49.2_2, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100))) V_A49_2_2_R1 = 1.



* [ERROR] Displayed percent-of-patients allocations must total 100%.
COMPUTE V_A49_2_2_R2 = 0.
IF (SUM(A49.2_2_28, A49.2_2_29, A49.2_2_30, A49.2_2_18, A49.2_2_26, A49.2_2_25, A49.2_2_27, A49.2_2_11, A49.2_2_31, A49.2_2_32, A49.2_2_23, A49.2_2_33, A49.2_2_34, A49.2_2_24, A49.2_2_35, A49.2_2_36, A49.2_2_37, A49.2_2_14, A49.2_2_20, A49.2_2_21, A49.2_2_22, A49.2_2_96, A49.2_2_97, A49.2_2_98, A49.2_2_99) <> 100.0) V_A49_2_2_R2 = 1.




* Question A49.3.
* No validation generated: Container question; the response fields and supported numeric checks are defined in A49.3_2.



* Question A49.3_1.
* No validation generated: Placeholder field with no response definition or validation evidence.



* Question A49.3_2.


* [ERROR] Maintenance-therapy percentage entries must be whole percentages from 0 through 100.
COMPUTE V_A49_3_2_RANGE = 0.
IF ((NOT MISSING(A49.3_2) AND (A49.3_2 < 0.0 OR A49.3_2 > 100.0))) V_A49_3_2_RANGE = 1.



* [ERROR] Maintenance-therapy percentage entries must total 100 percent.
COMPUTE V_A49_3_2_TOTAL = 0.
IF (SUM(A49.3_2_8, A49.3_2_15, A49.3_2_16, A49.3_2_10, A49.3_2_9, A49.3_2_17, A49.3_2_18, A49.3_2_19, A49.3_2_5, A49.3_2_20, A49.3_2_21, A49.3_2_22, A49.3_2_23, A49.3_2_24, A49.3_2_25, A49.3_2_26, A49.3_2_27, A49.3_2_28, A49.3_2_1, A49.3_2_2, A49.3_2_3, A49.3_2_4, A49.3_2_6, A49.3_2_7, A49.3_2_11, A49.3_2_12, A49.3_2_96, A49.3_2_97, A49.3_2_98, A49.3_2_99) <> 100.0) V_A49_3_2_TOTAL = 1.




* Question A49.4.
* No validation generated: Container question; the response fields and supported numeric checks are defined in A49.4_2.



* Question A49.4_1.
* No validation generated: Placeholder field with no response definition or validation evidence.



* Question A49.4_2.


* [ERROR] Maintenance-therapy percentage entries must be whole percentages from 0 through 100.
COMPUTE V_A49_4_2_RANGE = 0.
IF ((NOT MISSING(A49.4_2) AND (A49.4_2 < 0.0 OR A49.4_2 > 100.0))) V_A49_4_2_RANGE = 1.



* [ERROR] Maintenance-therapy percentage entries must total 100 percent.
COMPUTE V_A49_4_2_TOTAL = 0.
IF (SUM(A49.4_2_8, A49.4_2_16, A49.4_2_17, A49.4_2_10, A49.4_2_9, A49.4_2_18, A49.4_2_19, A49.4_2_20, A49.4_2_5, A49.4_2_21, A49.4_2_22, A49.4_2_25, A49.4_2_27, A49.4_2_28, A49.4_2_29, A49.4_2_23, A49.4_2_24, A49.4_2_26, A49.4_2_1, A49.4_2_2, A49.4_2_3, A49.4_2_4, A49.4_2_6, A49.4_2_7, A49.4_2_11, A49.4_2_12, A49.4_2_15, A49.4_2_96, A49.4_2_97, A49.4_2_98, A49.4_2_99) <> 100.0) V_A49_4_2_TOTAL = 1.




* Question A50.


* [ERROR] Treatment-outcome entries must be whole percentages from 0 through 100.
COMPUTE V_A50_RANGE = 0.
IF ((NOT MISSING(A50) AND (A50 < 0.0 OR A50 > 100.0))) V_A50_RANGE = 1.



* [ERROR] Each treatment-outcome distribution must total 100 percent.
COMPUTE V_A50_TOTAL = 0.
IF (SUM(A50_4, A50_2, A50_3, A50_1) <> 100.0) V_A50_TOTAL = 1.




* Question A51.


* [ERROR] Timing-distribution entries must be whole percentages from 0 through 100.
COMPUTE V_A51_RANGE = 0.
IF ((NOT MISSING(A51) AND (A51 < 0.0 OR A51 > 100.0))) V_A51_RANGE = 1.



* [ERROR] The three second-line initiation-time percentages must total 100 percent.
COMPUTE V_A51_TOTAL = 0.
IF (SUM(A51_1, A51_2, A51_3) <> 100.0) V_A51_TOTAL = 1.




* Question A52.


* [ERROR] Second-line modality entries must be whole percentages from 0 through 100.
COMPUTE V_A52_RANGE = 0.
IF ((NOT MISSING(A52) AND (A52 < 0.0 OR A52 > 100.0))) V_A52_RANGE = 1.



* [ERROR] The second-line modality percentages must total 100 percent.
COMPUTE V_A52_TOTAL = 0.
IF (SUM(A52_2, A52_3, A52_4, A52_5, A52_6, A52_99) <> 100.0) V_A52_TOTAL = 1.




* Question A53.


* [ERROR] HCT-type entries must be whole percentages from 0 through 100.
COMPUTE V_A53_RANGE = 0.
IF ((NOT MISSING(A53) AND (A53 < 0.0 OR A53 > 100.0))) V_A53_RANGE = 1.



* [ERROR] Autologous and allogeneic HCT percentages must total 100 percent.
COMPUTE V_A53_TOTAL = 0.
IF (SUM(A53_1, A53_2) <> 100.0) V_A53_TOTAL = 1.




* Question A53A.


* [ERROR] CAR-T physical-eligibility percentage must be from 0 through 100.
COMPUTE V_A53A_RANGE = 0.
IF ((NOT MISSING(A53A) AND (A53A < 0.0 OR A53A > 100.0))) V_A53A_RANGE = 1.




* Question A53B.


* [ERROR] CAR-T receipt entries must be from 0 through 100 percent.
COMPUTE V_A53B_RANGE = 0.
IF ((NOT MISSING(A53B) AND (A53B < 0.0 OR A53B > 100.0))) V_A53B_RANGE = 1.



* [ERROR] CAR-T receipt and non-receipt percentages must total 100 percent.
COMPUTE V_A53B_TOTAL = 0.
IF (SUM(A53B_1, A53B_2) <> 100.0) V_A53B_TOTAL = 1.




* Question A53.1.


* [ERROR] Second-line response-timing entries must be whole percentages from 0 through 100.
COMPUTE V_A53_1_RANGE = 0.
IF ((NOT MISSING(A53.1) AND (A53.1 < 0.0 OR A53.1 > 100.0))) V_A53_1_RANGE = 1.



* [ERROR] The second-line response and relapse-timeframe percentages must total 100 percent.
COMPUTE V_A53_1_TOTAL = 0.
IF (SUM(A53.1_1, A53.1_2, A53.1_3, A53.1_4, A53.1_5) <> 100.0) V_A53_1_TOTAL = 1.




* Question A54.1.
* No validation generated: Container question; the response fields and supported numeric checks are defined in A54.1_2.



* Question A54.1_1.
* No validation generated: Placeholder field with no response definition or validation evidence.



* Question A54.1_2.


* [ERROR] Second-line regimen percentage entries must be whole percentages from 0 through 100.
COMPUTE V_A54_1_2_RANGE = 0.
IF ((NOT MISSING(A54.1_2) AND (A54.1_2 < 0.0 OR A54.1_2 > 100.0))) V_A54_1_2_RANGE = 1.



* [ERROR] Second-line regimen percentage entries must total 100 percent.
COMPUTE V_A54_1_2_TOTAL = 0.
IF (SUM(A54.1_2_45, A54.1_2_46, A54.1_2_47, A54.1_2_93, A54.1_2_48, A54.1_2_49, A54.1_2_94, A54.1_2_50, A54.1_2_51, A54.1_2_52, A54.1_2_53, A54.1_2_54, A54.1_2_55, A54.1_2_56, A54.1_2_57, A54.1_2_58, A54.1_2_59, A54.1_2_60, A54.1_2_61, A54.1_2_62, A54.1_2_63, A54.1_2_64, A54.1_2_65, A54.1_2_66, A54.1_2_67, A54.1_2_68, A54.1_2_69, A54.1_2_70, A54.1_2_71, A54.1_2_72, A54.1_2_73, A54.1_2_74, A54.1_2_75, A54.1_2_76, A54.1_2_77, A54.1_2_78, A54.1_2_79, A54.1_2_80, A54.1_2_81, A54.1_2_82, A54.1_2_83, A54.1_2_84, A54.1_2_85, A54.1_2_86, A54.1_2_87, A54.1_2_88, A54.1_2_89, A54.1_2_90, A54.1_2_91, A54.1_2_92, A54.1_2_96, A54.1_2_97, A54.1_2_98, A54.1_2_99) <> 100.0) V_A54_1_2_TOTAL = 1.




* Question A54.2.
* No validation generated: Container question; the response fields and supported numeric checks are defined in A54.2_2.



* Question A54.2_1.
* No validation generated: Placeholder field with no response definition or validation evidence.



* Question A54.2_2.


* [ERROR] Second-line regimen percentage entries must be whole percentages from 0 through 100.
COMPUTE V_A54_2_2_RANGE = 0.
IF ((NOT MISSING(A54.2_2) AND (A54.2_2 < 0.0 OR A54.2_2 > 100.0))) V_A54_2_2_RANGE = 1.



* [ERROR] Second-line regimen percentage entries must total 100 percent.
COMPUTE V_A54_2_2_TOTAL = 0.
IF (SUM(A54.2_2_1, A54.2_2_2, A54.2_2_3, A54.2_2_4, A54.2_2_39, A54.2_2_5, A54.2_2_6, A54.2_2_7, A54.2_2_8, A54.2_2_9, A54.2_2_10, A54.2_2_11, A54.2_2_12, A54.2_2_13, A54.2_2_40, A54.2_2_14, A54.2_2_15, A54.2_2_16, A54.2_2_17, A54.2_2_18, A54.2_2_19, A54.2_2_20, A54.2_2_21, A54.2_2_22, A54.2_2_41, A54.2_2_23, A54.2_2_24, A54.2_2_25, A54.2_2_26, A54.2_2_27, A54.2_2_28, A54.2_2_29, A54.2_2_30, A54.2_2_31, A54.2_2_42, A54.2_2_32, A54.2_2_33, A54.2_2_34, A54.2_2_35, A54.2_2_36, A54.2_2_37, A54.2_2_38, A54.2_2_96, A54.2_2_97, A54.2_2_98, A54.2_2_99) <> 100.0) V_A54_2_2_TOTAL = 1.




* Question A54.3.
* No validation generated: Container question; the response fields and supported numeric checks are defined in A54.3_2.



* Question A54.3_1.
* No validation generated: Placeholder field with no response definition or validation evidence.



* Question A54.3_2.


* [ERROR] Second-line regimen percentage entries must be whole percentages from 0 through 100.
COMPUTE V_A54_3_2_RANGE = 0.
IF ((NOT MISSING(A54.3_2) AND (A54.3_2 < 0.0 OR A54.3_2 > 100.0))) V_A54_3_2_RANGE = 1.



* [ERROR] Second-line regimen percentage entries must total 100 percent.
COMPUTE V_A54_3_2_TOTAL = 0.
IF (SUM(A54.3_2_1, A54.3_2_2, A54.3_2_3, A54.3_2_4, A54.3_2_5, A54.3_2_6, A54.3_2_7, A54.3_2_8, A54.3_2_9, A54.3_2_10, A54.3_2_11, A54.3_2_12, A54.3_2_13, A54.3_2_14, A54.3_2_15, A54.3_2_16, A54.3_2_17, A54.3_2_18, A54.3_2_19, A54.3_2_20, A54.3_2_21, A54.3_2_22, A54.3_2_23, A54.3_2_24, A54.3_2_25, A54.3_2_26, A54.3_2_27, A54.3_2_28, A54.3_2_29, A54.3_2_30, A54.3_2_31, A54.3_2_32, A54.3_2_33, A54.3_2_34, A54.3_2_35, A54.3_2_37, A54.3_2_38, A54.3_2_39, A54.3_2_40, A54.3_2_41, A54.3_2_42, A54.3_2_43, A54.3_2_96, A54.3_2_97, A54.3_2_98, A54.3_2_99) <> 100.0) V_A54_3_2_TOTAL = 1.




* Question A54.4.
* No validation generated: Container question; the response fields and supported numeric checks are defined in A54.4_2.



* Question A54.4_1.
* No validation generated: Placeholder field with no response definition or validation evidence.



* Question A54.4_2.


* [ERROR] Second-line regimen percentage entries must be whole percentages from 0 through 100.
COMPUTE V_A54_4_2_RANGE = 0.
IF ((NOT MISSING(A54.4_2) AND (A54.4_2 < 0.0 OR A54.4_2 > 100.0))) V_A54_4_2_RANGE = 1.



* [ERROR] Second-line regimen percentage entries must total 100 percent.
COMPUTE V_A54_4_2_TOTAL = 0.
IF (SUM(A54.4_2_1, A54.4_2_2, A54.4_2_3, A54.4_2_4, A54.4_2_5, A54.4_2_6, A54.4_2_7, A54.4_2_8, A54.4_2_9, A54.4_2_10, A54.4_2_11, A54.4_2_12, A54.4_2_13, A54.4_2_14, A54.4_2_15, A54.4_2_16, A54.4_2_17, A54.4_2_18, A54.4_2_19, A54.4_2_20, A54.4_2_21, A54.4_2_22, A54.4_2_23, A54.4_2_24, A54.4_2_25, A54.4_2_26, A54.4_2_27, A54.4_2_36, A54.4_2_34, A54.4_2_35, A54.4_2_28, A54.4_2_29, A54.4_2_30, A54.4_2_31, A54.4_2_32, A54.4_2_33, A54.4_2_96, A54.4_2_97, A54.4_2_98, A54.4_2_99) <> 100.0) V_A54_4_2_TOTAL = 1.




* Question A54A.


* [ERROR] Entered percentages must be whole numbers from 0 through 100.
COMPUTE V_A54A_R1 = 0.
IF ((NOT MISSING(A54A) AND (A54A < 0.0 OR A54A > 100.0))) V_A54A_R1 = 1.




* Question A55.


* [ERROR] Required treatment-outcome percentages must be answered.
COMPUTE V_A55_R1 = 0.
IF (MISSING(A55)) V_A55_R1 = 1.



* [ERROR] Treatment-outcome percentages must be whole numbers from 0 through 100.
COMPUTE V_A55_R2 = 0.
IF ((NOT MISSING(A55) AND (A55 < 0.0 OR A55 > 100.0))) V_A55_R2 = 1.



* [ERROR] Each displayed treatment-outcome breakdown must total 100 percent.
!Sum_to_var svar=A55.
COMPUTE V_A55_R3 = 0.
IF (SUM(A55_4, A55_2, A55_3, A55_1) <> 100.0) V_A55_R3 = 1.




* Question A56.


* [ERROR] Required timing-distribution percentages must be answered.
COMPUTE V_A56_R1 = 0.
IF (MISSING(A56)) V_A56_R1 = 1.



* [ERROR] Timing-distribution percentages must be whole numbers from 0 through 100.
COMPUTE V_A56_R2 = 0.
IF ((NOT MISSING(A56) AND (A56 < 0.0 OR A56 > 100.0))) V_A56_R2 = 1.



* [ERROR] Each timing-distribution breakdown must total 100 percent.
!Sum_to_var svar=A56.
COMPUTE V_A56_R3 = 0.
IF (SUM(A56_1, A56_2, A56_3, A56_57) <> 100.0) V_A56_R3 = 1.




* Question A57.


* [ERROR] Required third-line modality percentages must be answered.
COMPUTE V_A57_R1 = 0.
IF (MISSING(A57)) V_A57_R1 = 1.



* [ERROR] Modality percentages must be whole numbers from 0 through 100.
COMPUTE V_A57_R2 = 0.
IF ((NOT MISSING(A57) AND (A57 < 0.0 OR A57 > 100.0))) V_A57_R2 = 1.



* [ERROR] Each third-line modality breakdown must total 100 percent.
!Sum_to_var svar=A57.
COMPUTE V_A57_R3 = 0.
IF (SUM(A57_2, A57_3, A57_4, A57_5, A57_6, A57_99) <> 100.0) V_A57_R3 = 1.




* Question A58.


* [ERROR] Required HCT percentages must be answered.
COMPUTE V_A58_R1 = 0.
IF (MISSING(A58)) V_A58_R1 = 1.



* [ERROR] HCT percentages must be whole numbers from 0 through 100.
COMPUTE V_A58_R2 = 0.
IF ((NOT MISSING(A58) AND (A58 < 0.0 OR A58 > 100.0))) V_A58_R2 = 1.



* [ERROR] Each HCT breakdown must total 100 percent.
!Sum_to_var svar=A58.
COMPUTE V_A58_R3 = 0.
IF (SUM(A58_1, A58_2) <> 100.0) V_A58_R3 = 1.




* Question A58A.


* [ERROR] The eligibility percentage must be a whole number from 0 through 100.
COMPUTE V_A58A_R1 = 0.
IF ((NOT MISSING(A58A) AND (A58A < 0.0 OR A58A > 100.0))) V_A58A_R1 = 1.




* Question A58B.


* [ERROR] Required CAR-T outcome percentages must be answered.
COMPUTE V_A58B_R1 = 0.
IF (MISSING(A58B)) V_A58B_R1 = 1.



* [ERROR] CAR-T outcome percentages must be whole numbers from 0 through 100.
COMPUTE V_A58B_R2 = 0.
IF ((NOT MISSING(A58B) AND (A58B < 0.0 OR A58B > 100.0))) V_A58B_R2 = 1.



* [ERROR] CAR-T outcome percentages must total 100 percent.
!Sum_to_var svar=A58B.
COMPUTE V_A58B_R3 = 0.
IF (SUM(A58B_1, A58B_2) <> 100.0) V_A58B_R3 = 1.




* Question A58.1.


* [ERROR] Required response-timeframe percentages must be answered.
COMPUTE V_A58_1_R1 = 0.
IF (MISSING(A58.1)) V_A58_1_R1 = 1.



* [ERROR] Response-timeframe percentages must be whole numbers from 0 through 100.
COMPUTE V_A58_1_R2 = 0.
IF ((NOT MISSING(A58.1) AND (A58.1 < 0.0 OR A58.1 > 100.0))) V_A58_1_R2 = 1.



* [ERROR] Each response-timeframe breakdown must total 100 percent.
!Sum_to_var svar=A58.1.
COMPUTE V_A58_1_R3 = 0.
IF (SUM(A58.1_1, A58.1_2, A58.1_3, A58.1_4, A58.1_5) <> 100.0) V_A58_1_R3 = 1.




* Question A59.1.


* [ERROR] Percentage entries must be whole numbers from 0 through 100.
COMPUTE V_A59_1_R1 = 0.
IF ((NOT MISSING(A59.1) AND (A59.1 < 0.0 OR A59.1 > 100.0))) V_A59_1_R1 = 1.




* Question A59.1_1.
* No validation generated: Placeholder variable with no respondent-facing question text or supported validation evidence.



* Question A59.1_2.


* [ERROR] Required regimen-grid responses must be answered.
COMPUTE V_A59_1_2_R1 = 0.
IF (MISSING(A59.1_2)) V_A59_1_2_R1 = 1.



* [ERROR] Regimen percentage entries must be whole numbers from 0 through 100.
COMPUTE V_A59_1_2_R2 = 0.
IF ((NOT MISSING(A59.1_2) AND (A59.1_2 < 0.0 OR A59.1_2 > 100.0))) V_A59_1_2_R2 = 1.



* [ERROR] Each displayed regimen percentage distribution must total 100 percent.
!Sum_to_var svar=A59.1_2.
COMPUTE V_A59_1_2_R3 = 0.
IF (SUM(A59.1_2_50, A59.1_2_51, A59.1_2_52, A59.1_2_103, A59.1_2_53, A59.1_2_54, A59.1_2_104, A59.1_2_55, A59.1_2_56, A59.1_2_57, A59.1_2_58, A59.1_2_59, A59.1_2_60, A59.1_2_61, A59.1_2_62, A59.1_2_63, A59.1_2_64, A59.1_2_65, A59.1_2_66, A59.1_2_67, A59.1_2_68, A59.1_2_69, A59.1_2_70, A59.1_2_71, A59.1_2_72, A59.1_2_73, A59.1_2_74, A59.1_2_75, A59.1_2_76, A59.1_2_77, A59.1_2_78, A59.1_2_79, A59.1_2_80, A59.1_2_81, A59.1_2_82, A59.1_2_83, A59.1_2_84, A59.1_2_85, A59.1_2_86, A59.1_2_87, A59.1_2_88, A59.1_2_90, A59.1_2_91, A59.1_2_92, A59.1_2_93, A59.1_2_94, A59.1_2_95, A59.1_2_100, A59.1_2_101, A59.1_2_102, A59.1_2_96, A59.1_2_97, A59.1_2_98, A59.1_2_99) <> 100.0) V_A59_1_2_R3 = 1.




* Question A59.2.


* [ERROR] Percentage entries must be whole numbers from 0 through 100.
COMPUTE V_A59_2_R1 = 0.
IF ((NOT MISSING(A59.2) AND (A59.2 < 0.0 OR A59.2 > 100.0))) V_A59_2_R1 = 1.




* Question A59.2_1.
* No validation generated: Placeholder variable with no respondent-facing question text or supported validation evidence.



* Question A59.2_2.


* [ERROR] Required regimen and duration-grid responses must be answered.
COMPUTE V_A59_2_2_R1 = 0.
IF (MISSING(A59.2_2)) V_A59_2_2_R1 = 1.



* [ERROR] Regimen percentage entries must be whole numbers from 0 through 100.
COMPUTE V_A59_2_2_R2 = 0.
IF ((NOT MISSING(A59.2_2) AND (A59.2_2 < 0.0 OR A59.2_2 > 100.0))) V_A59_2_2_R2 = 1.



* [ERROR] Each displayed regimen percentage distribution must total 100 percent.
!Sum_to_var svar=A59.2_2.
COMPUTE V_A59_2_2_R3 = 0.
IF (SUM(A59.2_2_1, A59.2_2_2, A59.2_2_3, A59.2_2_4, A59.2_2_40, A59.2_2_5, A59.2_2_6, A59.2_2_7, A59.2_2_8, A59.2_2_9, A59.2_2_10, A59.2_2_11, A59.2_2_12, A59.2_2_13, A59.2_2_41, A59.2_2_14, A59.2_2_15, A59.2_2_16, A59.2_2_17, A59.2_2_18, A59.2_2_19, A59.2_2_20, A59.2_2_21, A59.2_2_22, A59.2_2_42, A59.2_2_23, A59.2_2_24, A59.2_2_25, A59.2_2_26, A59.2_2_27, A59.2_2_28, A59.2_2_29, A59.2_2_30, A59.2_2_31, A59.2_2_32, A59.2_2_43, A59.2_2_33, A59.2_2_34, A59.2_2_35, A59.2_2_36, A59.2_2_37, A59.2_2_38, A59.2_2_39, A59.2_2_96, A59.2_2_97, A59.2_2_98, A59.2_2_99) <> 100.0) V_A59_2_2_R3 = 1.




* Question A59.3.


* [ERROR] Percentage entries must be whole numbers from 0 through 100.
COMPUTE V_A59_3_R1 = 0.
IF ((NOT MISSING(A59.3) AND (A59.3 < 0.0 OR A59.3 > 100.0))) V_A59_3_R1 = 1.




* Question A59.3_1.
* No validation generated: Placeholder variable with no respondent-facing question text or supported validation evidence.



* Question A59.3_2.


* [ERROR] Required regimen and duration-grid responses must be answered.
COMPUTE V_A59_3_2_R1 = 0.
IF (MISSING(A59.3_2)) V_A59_3_2_R1 = 1.



* [ERROR] Regimen percentage entries must be whole numbers from 0 through 100.
COMPUTE V_A59_3_2_R2 = 0.
IF ((NOT MISSING(A59.3_2) AND (A59.3_2 < 0.0 OR A59.3_2 > 100.0))) V_A59_3_2_R2 = 1.



* [ERROR] Each displayed regimen percentage distribution must total 100 percent.
!Sum_to_var svar=A59.3_2.
COMPUTE V_A59_3_2_R3 = 0.
IF (SUM(A59.3_2_1, A59.3_2_2, A59.3_2_3, A59.3_2_4, A59.3_2_5, A59.3_2_6, A59.3_2_7, A59.3_2_8, A59.3_2_9, A59.3_2_10, A59.3_2_11, A59.3_2_12, A59.3_2_13, A59.3_2_14, A59.3_2_15, A59.3_2_16, A59.3_2_17, A59.3_2_18, A59.3_2_19, A59.3_2_20, A59.3_2_21, A59.3_2_22, A59.3_2_23, A59.3_2_24, A59.3_2_25, A59.3_2_26, A59.3_2_27, A59.3_2_28, A59.3_2_29, A59.3_2_30, A59.3_2_31, A59.3_2_32, A59.3_2_33, A59.3_2_34, A59.3_2_35, A59.3_2_36, A59.3_2_37, A59.3_2_38, A59.3_2_39, A59.3_2_40, A59.3_2_41, A59.3_2_42, A59.3_2_43, A59.3_2_44, A59.3_2_96, A59.3_2_97, A59.3_2_98, A59.3_2_99) <> 100.0) V_A59_3_2_R3 = 1.




* Question A59.4.


* [ERROR] Percentage entries must be whole numbers from 0 through 100.
COMPUTE V_A59_4_R1 = 0.
IF ((NOT MISSING(A59.4) AND (A59.4 < 0.0 OR A59.4 > 100.0))) V_A59_4_R1 = 1.




* Question A59.4_1.
* No validation generated: Placeholder variable with no respondent-facing question text or supported validation evidence.



* Question A59.4_2.


* [ERROR] Required regimen and duration-grid responses must be answered.
COMPUTE V_A59_4_2_R1 = 0.
IF (MISSING(A59.4_2)) V_A59_4_2_R1 = 1.



* [ERROR] Regimen percentage entries must be whole numbers from 0 through 100.
COMPUTE V_A59_4_2_R2 = 0.
IF ((NOT MISSING(A59.4_2) AND (A59.4_2 < 0.0 OR A59.4_2 > 100.0))) V_A59_4_2_R2 = 1.



* [ERROR] Each displayed regimen percentage distribution must total 100 percent.
!Sum_to_var svar=A59.4_2.
COMPUTE V_A59_4_2_R3 = 0.
IF (SUM(A59.4_2_1, A59.4_2_2, A59.4_2_3, A59.4_2_4, A59.4_2_5, A59.4_2_6, A59.4_2_7, A59.4_2_8, A59.4_2_9, A59.4_2_10, A59.4_2_11, A59.4_2_12, A59.4_2_13, A59.4_2_14, A59.4_2_15, A59.4_2_16, A59.4_2_17, A59.4_2_18, A59.4_2_19, A59.4_2_20, A59.4_2_21, A59.4_2_22, A59.4_2_23, A59.4_2_24, A59.4_2_25, A59.4_2_26, A59.4_2_34, A59.4_2_35, A59.4_2_38, A59.4_2_36, A59.4_2_37, A59.4_2_27, A59.4_2_28, A59.4_2_29, A59.4_2_30, A59.4_2_31, A59.4_2_32, A59.4_2_33, A59.4_2_96, A59.4_2_97, A59.4_2_98, A59.4_2_99) <> 100.0) V_A59_4_2_R3 = 1.




* Question A60.


* [ERROR] Required second-relapse treatment-outcome percentages must be answered.
COMPUTE V_A60_R1 = 0.
IF (MISSING(A60)) V_A60_R1 = 1.



* [ERROR] Treatment-outcome percentages must be whole numbers from 0 through 100.
COMPUTE V_A60_R2 = 0.
IF ((NOT MISSING(A60) AND (A60 < 0.0 OR A60 > 100.0))) V_A60_R2 = 1.



* [ERROR] Each treatment-outcome breakdown must total 100 percent.
!Sum_to_var svar=A60.
COMPUTE V_A60_R3 = 0.
IF (SUM(A60_4, A60_2, A60_3, A60_1) <> 100.0) V_A60_R3 = 1.




* Question A60.1.


* [ERROR] Required formulation percentages must be answered.
COMPUTE V_A60_1_R1 = 0.
IF (MISSING(A60.1)) V_A60_1_R1 = 1.



* [ERROR] Formulation percentages must be whole numbers from 0 through 100.
COMPUTE V_A60_1_R2 = 0.
IF ((NOT MISSING(A60.1) AND (A60.1 < 0.0 OR A60.1 > 100.0))) V_A60_1_R2 = 1.



* [ERROR] Formulation percentages must total 100 percent.
!Sum_to_var svar=A60.1.
COMPUTE V_A60_1_R3 = 0.
IF (SUM(A60.1_1, A60.1_2, A60.1_3, A60.1_4, A60.1_5, A60.1_6, A60.1_7, A60.1_9, A60.1_8) <> 100.0) V_A60_1_R3 = 1.




* Question A60.2.


* [ERROR] The percentage of patients receiving bridging therapy must be from 0 through 100.
COMPUTE V_A60_2_R1 = 0.
IF ((NOT MISSING(A60.2) AND (A60.2 < 0.0 OR A60.2 > 100.0))) V_A60_2_R1 = 1.




* Question A61.


* [ERROR] The entered whole number must be from 0 through 100.
COMPUTE V_A61_R1 = 0.
IF ((NOT MISSING(A61) AND (A61 < 0.0 OR A61 > 100.0))) V_A61_R1 = 1.




* Question A62.
* No validation generated: Routing-only placeholder with no respondent-facing question text, response options, or numeric validation evidence.



* Question A63.


* [ERROR] Verify each entered progression-free survival value is a whole number from 0 through 100 months.
COMPUTE V_A63_R1 = 0.
IF ((NOT MISSING(A63) AND NOT ANY(A63, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100))) V_A63_R1 = 1.




* Question A64.


* [ERROR] Verify that the single-choice pediatric ALL age-definition question is answered.
COMPUTE V_A64_R1 = 0.
IF (MISSING(A64)) V_A64_R1 = 1.



* [ERROR] Allow only the listed pediatric ALL age-definition response codes.
COMPUTE V_A64_R2 = 0.
IF ((NOT MISSING(A64) AND NOT ANY(A64, 1, 2, 3, 9))) V_A64_R2 = 1.




* Question A65.


* [ERROR] Verify that the single-choice adult ALL age-definition question is answered.
COMPUTE V_A65_R1 = 0.
IF (MISSING(A65)) V_A65_R1 = 1.



* [ERROR] Allow only the listed adult ALL age-definition response codes.
COMPUTE V_A65_R2 = 0.
IF ((NOT MISSING(A65) AND NOT ANY(A65, 1, 2, 3, 9))) V_A65_R2 = 1.




* Question A66.


* [WARNING] Validate the optional open-ended response field and its stated maximum length of 5000 characters.
COMPUTE V_A66_R1 = 0.
IF (MISSING(A66)) V_A66_R1 = 1.




* Question D1.


* [ERROR] Verify that one practice-location state or Washington, DC selection is recorded.
COMPUTE V_D1_R1 = 0.
IF (MISSING(D1)) V_D1_R1 = 1.




* Question D2.


* [ERROR] Verify that the re-contact consent question is answered.
COMPUTE V_D2_R1 = 0.
IF (MISSING(D2)) V_D2_R1 = 1.



* [ERROR] Allow only Yes (1) or No (2) for future re-contact consent.
COMPUTE V_D2_R2 = 0.
IF ((NOT MISSING(D2) AND NOT ANY(D2, 1, 2))) V_D2_R2 = 1.




* Question JF1.


* [ERROR] Verify that one facility type is selected.
COMPUTE V_JF1_R1 = 0.
IF (MISSING(JF1)) V_JF1_R1 = 1.



* [ERROR] Allow only the listed facility-type response codes.
COMPUTE V_JF1_R2 = 0.
IF ((NOT MISSING(JF1) AND NOT ANY(JF1, 1, 2, 3, 4, 5, 6, 99))) V_JF1_R2 = 1.




* Question JF3.


* [ERROR] Verify that one facility-bed-count category is selected.
COMPUTE V_JF3_R1 = 0.
IF (MISSING(JF3)) V_JF3_R1 = 1.




* Question JF4.


* [ERROR] Verify that one age-group response is selected.
COMPUTE V_JF4_R1 = 0.
IF (MISSING(JF4)) V_JF4_R1 = 1.



* [ERROR] Allow only the listed age-group response codes.
COMPUTE V_JF4_R2 = 0.
IF ((NOT MISSING(JF4) AND NOT ANY(JF4, 1, 2, 3, 4, 5, 9))) V_JF4_R2 = 1.




* Question JF5.


* [ERROR] Apply the association-membership question only when S4_1 is greater than 1.
COMPUTE V_JF5_R1 = 0.
IF (((S4_1 > 1) AND (MISSING(JF5))) OR ((NOT (S4_1 > 1)) AND (NOT MISSING(JF5)))) V_JF5_R1 = 1.



* [ERROR] Validate the multi-response association-membership field.
!MULTI_B svar=JF5.
COMPUTE V_JF5_R2 = 0.
IF ((NOT MISSING(JF5_1) AND NOT ANY(JF5_1, 0, 1)) OR (NOT MISSING(JF5_3) AND NOT ANY(JF5_3, 0, 1)) OR (NOT MISSING(JF5_5) AND NOT ANY(JF5_5, 0, 1)) OR (NOT MISSING(JF5_6) AND NOT ANY(JF5_6, 0, 1)) OR (NOT MISSING(JF5_15) AND NOT ANY(JF5_15, 0, 1)) OR (NOT MISSING(JF5_16) AND NOT ANY(JF5_16, 0, 1)) OR (NOT MISSING(JF5_13) AND NOT ANY(JF5_13, 0, 1)) OR (NOT MISSING(JF5_8) AND NOT ANY(JF5_8, 0, 1)) OR (NOT MISSING(JF5_14) AND NOT ANY(JF5_14, 0, 1)) OR (NOT MISSING(JF5_9) AND NOT ANY(JF5_9, 0, 1)) OR (NOT MISSING(JF5_11) AND NOT ANY(JF5_11, 0, 1)) OR (NOT MISSING(JF5_12) AND NOT ANY(JF5_12, 0, 1))) V_JF5_R2 = 1.



* [ERROR] Ensure that the exclusive no-membership response is not selected with any other association.
COMPUTE V_JF5_R3 = 0.
IF (SUM(JF5_12) > 0 AND SUM(JF5_1, JF5_3, JF5_5, JF5_6, JF5_15, JF5_16, JF5_13, JF5_8, JF5_14, JF5_9, JF5_11, JF5_12) > 1) V_JF5_R3 = 1.




* Question JF6.


* [ERROR] Apply the guideline/source question when S4_2 is greater than 0.
COMPUTE V_JF6_R1 = 0.
IF (((S4_2 > 0) AND (MISSING(JF6))) OR ((NOT (S4_2 > 0)) AND (NOT MISSING(JF6)))) V_JF6_R1 = 1.



* [ERROR] Allow only the listed guideline/source response codes.
COMPUTE V_JF6_R2 = 0.
IF ((NOT MISSING(JF6) AND NOT ANY(JF6, 1, 2, 3, 4, 5, 6, 9, 99))) V_JF6_R2 = 1.




* Question JF7.


* [ERROR] Verify that one practice-region response is selected.
COMPUTE V_JF7_R1 = 0.
IF (MISSING(JF7)) V_JF7_R1 = 1.



* [ERROR] Allow only the eight listed practice-region response codes.
COMPUTE V_JF7_R2 = 0.
IF ((NOT MISSING(JF7) AND NOT ANY(JF7, 1, 2, 3, 4, 5, 6, 7, 8))) V_JF7_R2 = 1.





*===============================================================================.
* FINAL VALIDATION SUMMARY.
*===============================================================================.
COMPUTE VALIDATION_OVERALL = MAX(V_JF9_INVALID_CODES, V_JF9_SCREEN_OUT, V_S0A_MANDATORY, V_S0A_INVALID_CODES, V_S0B_MANDATORY, V_S0B_MULTI_RESPONSE, V_S1_MANDATORY, V_S1_INVALID_CODES, V_S11_MANDATORY, V_S11_INVALID_CODES, V_S2_MANDATORY, V_S2_NUMERIC_RANGE, V_S3_MANDATORY, V_S3_INVALID_CODES, V_S4_MANDATORY, V_S4_NUMERIC_RANGE, V_H1A_NUMERIC_RANGE, V_H1B_MANDATORY, V_H1B_NUMERIC_RANGE, V_A1A_NUMERIC_RANGE, V_A1B_MANDATORY, V_A1B_NUMERIC_RANGE, V_S41_MANDATORY, V_S41_INVALID_CODES, V_S42_MANDATORY, V_S42_INVALID_CODES, V_S6_MANDATORY, V_S6_MULTI_RESPONSE, V_S7_MANDATORY, V_S7_RANGE, V_S7_TOTAL, V_S71_MANDATORY, V_S71_RANGE, V_S71_TOTAL, V_CS1_MANDATORY, V_CS1_INVALID_CODES, V_CS2_MANDATORY, V_CS2_INVALID_CODES, V_HX1_RANGE, V_H1_MANDATORY, V_H1_RANGE, V_H1_TOTAL, V_H2_MANDATORY, V_H2_RANGE, V_H2_TOTAL, V_H3_MANDATORY, V_H3_RANGE, V_H3_TOTAL, V_H5_RANGE, V_H6_R1, V_H6_R2, V_H61_R1, V_H61_R2, V_H61_R3, V_H61_R4, V_H71_R1, V_H71_R2, V_H71_R3, V_H72_R1, V_H72_R2, V_H72_R3, V_H73_R1, V_H73_R2, V_H73_R3, V_H74_R1, V_H74_R2, V_H74_R3, V_H81_R1, V_H81_R2, V_H81_R3, V_H82_R1, V_H82_R2, V_H82_R3, V_H83_R1, V_H83_R2, V_H83_R3, V_H84_R1, V_H84_R2, V_H84_R3, V_H8AX_R1, V_H8AX_R2, V_H8AX_R3, V_H8A_R1, V_H8A_R2, V_H9_R1, V_H9_R2, V_H9_R3, V_H10_R1, V_H10_R2, V_H10_R3, V_H11_R1, V_H11_R2, V_H11_R3, V_H12_R1, V_H12_R2, V_H12_R3, V_H201_R1, V_H201_R2, V_H201_R3, V_H202_R1, V_H202_R2, V_H202_R3, V_H203_R1, V_H203_R2, V_H203_R3, V_H204_R1, V_H204_R2, V_H204_R3, V_H204A_R1, V_H204A_R2, V_H204A_R3, V_H21_R1, V_H21_R2, V_H21_R3, V_H22_R1, V_H22_R2, V_H22_R3, V_H23_R1, V_H23_R2, V_H23_R3, V_H24_R1, V_H24_R2, V_H24_R3, V_H25_1_R1, V_H25_1_R2, V_H25_2_R1, V_H25_2_R2, V_H25_3_R1, V_H25_3_R2, V_H25_4_R1, V_H25_4_R2, V_H25_4A_R1, V_H25_4A_R2, V_H26_R1, V_H26_R2, V_H27_R1, V_H27_R2, V_H13_R1, V_H14_1_R1, V_H14_1_R2, V_H14_2_R1, V_H14_2_R2, V_H14_3_R1, V_H14_3_R2, V_H14_4_R1, V_H14_4_R2, V_H28_R1, V_H28_R2, V_H29_R1, V_H30_R1, V_H30_R2, V_H31_R1, V_A1_R1, V_A1_R2, V_A2_2_R1, V_A2_2_R2, V_A2_1_R1, V_A2_1_R2, V_X1_1_R1, V_A3_R1, V_A3_R2, V_A4_R1, V_A4_R2, V_A5_R1, V_A6_R1, V_A7_R1, V_A7_R2, V_A10_R1, V_A11_1_R1, V_A11_1_R2, V_A11_1_2_R1, V_A11_1_2_R2, V_A11_2_R1, V_A11_2_R2, V_A11_2_2_R1, V_A11_2_2_R2, V_A11_3_R1, V_A11_3_R2, V_A11_3_2_R1, V_A11_3_2_R2, V_A11_4_R1, V_A11_4_R2, V_A11_4_2_R1, V_A11_4_2_R2, V_A11A_R1, V_A11A_R2, V_A12A_R1, V_A12_R1, V_A12_1_R1, V_A12_1_R2, V_A12_1_2_R1, V_A12_1_2_R2, V_A12_2_R1, V_A12_2_R2, V_A12_2_2_R1, V_A12_2_2_R2, V_A12_3_2_R1, V_A12_3_2_R2, V_A12_4_2_R1, V_A12_4_2_R2, V_A12_1A_R1, V_A13_1_2_R1, V_A13_1_2_R2, V_A13_2_2_R1, V_A13_2_2_R2, V_A13_3_2_R1, V_A13_3_2_R2, V_A13_4_2_R1, V_A13_4_2_R2, V_A14_1_2_R1, V_A14_1_2_R2, V_A14_2_2_R1, V_A14_2_2_R2, V_A14_3_2_R1, V_A14_3_2_R2, V_A14_4_2_R1, V_A14_4_2_R2, V_A15_R1, V_A15_R2, V_A15_R3, V_A16_R1, V_A16_R2, V_A16_R3, V_A17_R1, V_A17_R2, V_A17_R3, V_A18_R1, V_A18_R2, V_A18_R3, V_A18A_R1, V_A18B_R1, V_A18B_R2, V_A18B_R3, V_A18_1_R1, V_A18_1_R2, V_A18_1_R3, V_A19_1_2_R1, V_A19_1_2_R2, V_A19_2_2_R1, V_A19_2_2_R2, V_A19_3_2_R1, V_A19_3_2_R2, V_A19_4_2_R1, V_A19_4_2_R2, V_A19A_R1, V_A20_R1, V_A20_R2, V_A20_R3, V_A21_R1, V_A21_R2, V_A21_R3, V_A22_R1, V_A22_R2, V_A22_R3, V_A23_R1, V_A23_R2, V_A23_R3, V_A23A_R1, V_A23B_R1, V_A23B_R2, V_A23B_R3, V_A23_1_R1, V_A23_1_R2, V_A23_1_R3, V_A24_1_R1, V_A24_1_R2, V_A24_1_2_R1, V_A24_1_2_R2, V_A24_1_2_R3, V_A24_2_R1, V_A24_2_R2, V_A24_2_2_R1, V_A24_2_2_R2, V_A24_2_2_R3, V_A24_3_R1, V_A24_3_R2, V_A24_3_2_R1, V_A24_3_2_R2, V_A24_3_2_R3, V_A24_4_R1, V_A24_4_R2, V_A24_4_2_R1, V_A24_4_2_R2, V_A24_4_2_R3, V_A25_R1, V_A25_R2, V_A25_R3, V_A29_R1, V_A40_R1, V_A40_R2, V_A40_R3, V_A41_R1, V_A41_R2, V_A41_R3, V_A41_1_R1, V_A41_2_R1, V_A42_R1, V_A42_R2, V_A45_R1, V_A46_1_R1, V_A46_1_2_R2, V_A46_2_R1, V_A46_2_2_R2, V_A46_3_R1, V_A46_3_2_R2, V_A46_4_R1, V_A46_4_2_R2, V_A46A_R1, V_A46C_R1, V_A46C_R2, V_A46B_R1, V_A47_1_R1, V_A47_1_2_R2, V_A47_2_R1, V_A47_2_2_R1, V_A47_2_2_R2, V_A47_3_R1, V_A47_3_R2, V_A47_3_R3, V_A47_3_1_R1, V_A47_3_2_R1, V_A47_4_R1, V_A47_4_R2, V_A47_4_R3, V_A47_4_1_R1, V_A47_4_2_R1, V_A47_4_2_R2, V_A48_1_R1, V_A48_1_R2, V_A48_1_R3, V_A48_1_1_R1, V_A48_1_2_R1, V_A48_1_2_R2, V_A48_2_R1, V_A48_2_R2, V_A48_2_R3, V_A48_2_1_R1, V_A48_2_2_R1, V_A48_2_2_R2, V_A48_3_R1, V_A48_3_R2, V_A48_3_R3, V_A48_3_1_R1, V_A48_3_2_R1, V_A48_3_2_R2, V_A48_4_R1, V_A48_4_R2, V_A48_4_R3, V_A48_4_1_R1, V_A48_4_2_R1, V_A48_4_2_R2, V_A49_1_R1, V_A49_1_R2, V_A49_1_R3, V_A49_1_1_R1, V_A49_1_2_R1, V_A49_1_2_R2, V_A49_2_R1, V_A49_2_R2, V_A49_2_R3, V_A49_2_1_R1, V_A49_2_2_R1, V_A49_2_2_R2, V_A49_3_2_RANGE, V_A49_3_2_TOTAL, V_A49_4_2_RANGE, V_A49_4_2_TOTAL, V_A50_RANGE, V_A50_TOTAL, V_A51_RANGE, V_A51_TOTAL, V_A52_RANGE, V_A52_TOTAL, V_A53_RANGE, V_A53_TOTAL, V_A53A_RANGE, V_A53B_RANGE, V_A53B_TOTAL, V_A53_1_RANGE, V_A53_1_TOTAL, V_A54_1_2_RANGE, V_A54_1_2_TOTAL, V_A54_2_2_RANGE, V_A54_2_2_TOTAL, V_A54_3_2_RANGE, V_A54_3_2_TOTAL, V_A54_4_2_RANGE, V_A54_4_2_TOTAL, V_A54A_R1, V_A55_R1, V_A55_R2, V_A55_R3, V_A56_R1, V_A56_R2, V_A56_R3, V_A57_R1, V_A57_R2, V_A57_R3, V_A58_R1, V_A58_R2, V_A58_R3, V_A58A_R1, V_A58B_R1, V_A58B_R2, V_A58B_R3, V_A58_1_R1, V_A58_1_R2, V_A58_1_R3, V_A59_1_R1, V_A59_1_2_R1, V_A59_1_2_R2, V_A59_1_2_R3, V_A59_2_R1, V_A59_2_2_R1, V_A59_2_2_R2, V_A59_2_2_R3, V_A59_3_R1, V_A59_3_2_R1, V_A59_3_2_R2, V_A59_3_2_R3, V_A59_4_R1, V_A59_4_2_R1, V_A59_4_2_R2, V_A59_4_2_R3, V_A60_R1, V_A60_R2, V_A60_R3, V_A60_1_R1, V_A60_1_R2, V_A60_1_R3, V_A60_2_R1, V_A61_R1, V_A63_R1, V_A64_R1, V_A64_R2, V_A65_R1, V_A65_R2, V_A66_R1, V_D1_R1, V_D2_R1, V_D2_R2, V_JF1_R1, V_JF1_R2, V_JF3_R1, V_JF4_R1, V_JF4_R2, V_JF5_R1, V_JF5_R2, V_JF5_R3, V_JF6_R1, V_JF6_R2, V_JF7_R1, V_JF7_R2).
FREQUENCIES VARIABLES=V_JF9_INVALID_CODES V_JF9_SCREEN_OUT V_S0A_MANDATORY V_S0A_INVALID_CODES V_S0B_MANDATORY V_S0B_MULTI_RESPONSE V_S1_MANDATORY V_S1_INVALID_CODES V_S11_MANDATORY V_S11_INVALID_CODES V_S2_MANDATORY V_S2_NUMERIC_RANGE V_S3_MANDATORY V_S3_INVALID_CODES V_S4_MANDATORY V_S4_NUMERIC_RANGE V_H1A_NUMERIC_RANGE V_H1B_MANDATORY V_H1B_NUMERIC_RANGE V_A1A_NUMERIC_RANGE V_A1B_MANDATORY V_A1B_NUMERIC_RANGE V_S41_MANDATORY V_S41_INVALID_CODES V_S42_MANDATORY V_S42_INVALID_CODES V_S6_MANDATORY V_S6_MULTI_RESPONSE V_S7_MANDATORY V_S7_RANGE V_S7_TOTAL V_S71_MANDATORY V_S71_RANGE V_S71_TOTAL V_CS1_MANDATORY V_CS1_INVALID_CODES V_CS2_MANDATORY V_CS2_INVALID_CODES V_HX1_RANGE V_H1_MANDATORY V_H1_RANGE V_H1_TOTAL V_H2_MANDATORY V_H2_RANGE V_H2_TOTAL V_H3_MANDATORY V_H3_RANGE V_H3_TOTAL V_H5_RANGE V_H6_R1 V_H6_R2 V_H61_R1 V_H61_R2 V_H61_R3 V_H61_R4 V_H71_R1 V_H71_R2 V_H71_R3 V_H72_R1 V_H72_R2 V_H72_R3 V_H73_R1 V_H73_R2 V_H73_R3 V_H74_R1 V_H74_R2 V_H74_R3 V_H81_R1 V_H81_R2 V_H81_R3 V_H82_R1 V_H82_R2 V_H82_R3 V_H83_R1 V_H83_R2 V_H83_R3 V_H84_R1 V_H84_R2 V_H84_R3 V_H8AX_R1 V_H8AX_R2 V_H8AX_R3 V_H8A_R1 V_H8A_R2 V_H9_R1 V_H9_R2 V_H9_R3 V_H10_R1 V_H10_R2 V_H10_R3 V_H11_R1 V_H11_R2 V_H11_R3 V_H12_R1 V_H12_R2 V_H12_R3 V_H201_R1 V_H201_R2 V_H201_R3 V_H202_R1 V_H202_R2 V_H202_R3 V_H203_R1 V_H203_R2 V_H203_R3 V_H204_R1 V_H204_R2 V_H204_R3 V_H204A_R1 V_H204A_R2 V_H204A_R3 V_H21_R1 V_H21_R2 V_H21_R3 V_H22_R1 V_H22_R2 V_H22_R3 V_H23_R1 V_H23_R2 V_H23_R3 V_H24_R1 V_H24_R2 V_H24_R3 V_H25_1_R1 V_H25_1_R2 V_H25_2_R1 V_H25_2_R2 V_H25_3_R1 V_H25_3_R2 V_H25_4_R1 V_H25_4_R2 V_H25_4A_R1 V_H25_4A_R2 V_H26_R1 V_H26_R2 V_H27_R1 V_H27_R2 V_H13_R1 V_H14_1_R1 V_H14_1_R2 V_H14_2_R1 V_H14_2_R2 V_H14_3_R1 V_H14_3_R2 V_H14_4_R1 V_H14_4_R2 V_H28_R1 V_H28_R2 V_H29_R1 V_H30_R1 V_H30_R2 V_H31_R1 V_A1_R1 V_A1_R2 V_A2_2_R1 V_A2_2_R2 V_A2_1_R1 V_A2_1_R2 V_X1_1_R1 V_A3_R1 V_A3_R2 V_A4_R1 V_A4_R2 V_A5_R1 V_A6_R1 V_A7_R1 V_A7_R2 V_A10_R1 V_A11_1_R1 V_A11_1_R2 V_A11_1_2_R1 V_A11_1_2_R2 V_A11_2_R1 V_A11_2_R2 V_A11_2_2_R1 V_A11_2_2_R2 V_A11_3_R1 V_A11_3_R2 V_A11_3_2_R1 V_A11_3_2_R2 V_A11_4_R1 V_A11_4_R2 V_A11_4_2_R1 V_A11_4_2_R2 V_A11A_R1 V_A11A_R2 V_A12A_R1 V_A12_R1 V_A12_1_R1 V_A12_1_R2 V_A12_1_2_R1 V_A12_1_2_R2 V_A12_2_R1 V_A12_2_R2 V_A12_2_2_R1 V_A12_2_2_R2 V_A12_3_2_R1 V_A12_3_2_R2 V_A12_4_2_R1 V_A12_4_2_R2 V_A12_1A_R1 V_A13_1_2_R1 V_A13_1_2_R2 V_A13_2_2_R1 V_A13_2_2_R2 V_A13_3_2_R1 V_A13_3_2_R2 V_A13_4_2_R1 V_A13_4_2_R2 V_A14_1_2_R1 V_A14_1_2_R2 V_A14_2_2_R1 V_A14_2_2_R2 V_A14_3_2_R1 V_A14_3_2_R2 V_A14_4_2_R1 V_A14_4_2_R2 V_A15_R1 V_A15_R2 V_A15_R3 V_A16_R1 V_A16_R2 V_A16_R3 V_A17_R1 V_A17_R2 V_A17_R3 V_A18_R1 V_A18_R2 V_A18_R3 V_A18A_R1 V_A18B_R1 V_A18B_R2 V_A18B_R3 V_A18_1_R1 V_A18_1_R2 V_A18_1_R3 V_A19_1_2_R1 V_A19_1_2_R2 V_A19_2_2_R1 V_A19_2_2_R2 V_A19_3_2_R1 V_A19_3_2_R2 V_A19_4_2_R1 V_A19_4_2_R2 V_A19A_R1 V_A20_R1 V_A20_R2 V_A20_R3 V_A21_R1 V_A21_R2 V_A21_R3 V_A22_R1 V_A22_R2 V_A22_R3 V_A23_R1 V_A23_R2 V_A23_R3 V_A23A_R1 V_A23B_R1 V_A23B_R2 V_A23B_R3 V_A23_1_R1 V_A23_1_R2 V_A23_1_R3 V_A24_1_R1 V_A24_1_R2 V_A24_1_2_R1 V_A24_1_2_R2 V_A24_1_2_R3 V_A24_2_R1 V_A24_2_R2 V_A24_2_2_R1 V_A24_2_2_R2 V_A24_2_2_R3 V_A24_3_R1 V_A24_3_R2 V_A24_3_2_R1 V_A24_3_2_R2 V_A24_3_2_R3 V_A24_4_R1 V_A24_4_R2 V_A24_4_2_R1 V_A24_4_2_R2 V_A24_4_2_R3 V_A25_R1 V_A25_R2 V_A25_R3 V_A29_R1 V_A40_R1 V_A40_R2 V_A40_R3 V_A41_R1 V_A41_R2 V_A41_R3 V_A41_1_R1 V_A41_2_R1 V_A42_R1 V_A42_R2 V_A45_R1 V_A46_1_R1 V_A46_1_2_R2 V_A46_2_R1 V_A46_2_2_R2 V_A46_3_R1 V_A46_3_2_R2 V_A46_4_R1 V_A46_4_2_R2 V_A46A_R1 V_A46C_R1 V_A46C_R2 V_A46B_R1 V_A47_1_R1 V_A47_1_2_R2 V_A47_2_R1 V_A47_2_2_R1 V_A47_2_2_R2 V_A47_3_R1 V_A47_3_R2 V_A47_3_R3 V_A47_3_1_R1 V_A47_3_2_R1 V_A47_4_R1 V_A47_4_R2 V_A47_4_R3 V_A47_4_1_R1 V_A47_4_2_R1 V_A47_4_2_R2 V_A48_1_R1 V_A48_1_R2 V_A48_1_R3 V_A48_1_1_R1 V_A48_1_2_R1 V_A48_1_2_R2 V_A48_2_R1 V_A48_2_R2 V_A48_2_R3 V_A48_2_1_R1 V_A48_2_2_R1 V_A48_2_2_R2 V_A48_3_R1 V_A48_3_R2 V_A48_3_R3 V_A48_3_1_R1 V_A48_3_2_R1 V_A48_3_2_R2 V_A48_4_R1 V_A48_4_R2 V_A48_4_R3 V_A48_4_1_R1 V_A48_4_2_R1 V_A48_4_2_R2 V_A49_1_R1 V_A49_1_R2 V_A49_1_R3 V_A49_1_1_R1 V_A49_1_2_R1 V_A49_1_2_R2 V_A49_2_R1 V_A49_2_R2 V_A49_2_R3 V_A49_2_1_R1 V_A49_2_2_R1 V_A49_2_2_R2 V_A49_3_2_RANGE V_A49_3_2_TOTAL V_A49_4_2_RANGE V_A49_4_2_TOTAL V_A50_RANGE V_A50_TOTAL V_A51_RANGE V_A51_TOTAL V_A52_RANGE V_A52_TOTAL V_A53_RANGE V_A53_TOTAL V_A53A_RANGE V_A53B_RANGE V_A53B_TOTAL V_A53_1_RANGE V_A53_1_TOTAL V_A54_1_2_RANGE V_A54_1_2_TOTAL V_A54_2_2_RANGE V_A54_2_2_TOTAL V_A54_3_2_RANGE V_A54_3_2_TOTAL V_A54_4_2_RANGE V_A54_4_2_TOTAL V_A54A_R1 V_A55_R1 V_A55_R2 V_A55_R3 V_A56_R1 V_A56_R2 V_A56_R3 V_A57_R1 V_A57_R2 V_A57_R3 V_A58_R1 V_A58_R2 V_A58_R3 V_A58A_R1 V_A58B_R1 V_A58B_R2 V_A58B_R3 V_A58_1_R1 V_A58_1_R2 V_A58_1_R3 V_A59_1_R1 V_A59_1_2_R1 V_A59_1_2_R2 V_A59_1_2_R3 V_A59_2_R1 V_A59_2_2_R1 V_A59_2_2_R2 V_A59_2_2_R3 V_A59_3_R1 V_A59_3_2_R1 V_A59_3_2_R2 V_A59_3_2_R3 V_A59_4_R1 V_A59_4_2_R1 V_A59_4_2_R2 V_A59_4_2_R3 V_A60_R1 V_A60_R2 V_A60_R3 V_A60_1_R1 V_A60_1_R2 V_A60_1_R3 V_A60_2_R1 V_A61_R1 V_A63_R1 V_A64_R1 V_A64_R2 V_A65_R1 V_A65_R2 V_A66_R1 V_D1_R1 V_D2_R1 V_D2_R2 V_JF1_R1 V_JF1_R2 V_JF3_R1 V_JF4_R1 V_JF4_R2 V_JF5_R1 V_JF5_R2 V_JF5_R3 V_JF6_R1 V_JF6_R2 V_JF7_R1 V_JF7_R2 VALIDATION_OVERALL.

* MODEL WARNINGS.
* The questionnaire contains inconsistent option labels and country-code text in several screener questions; validation uses the explicit numeric codes supplied in each question.
* Omitted incomplete model rule: Rule H1B_TOTAL requires variables and expected_total.
* Omitted incomplete model rule: Rule A1B_TOTAL requires variables and expected_total.
* The questionnaire provides separate percentage and months columns in several grids, but canonical base variables do not identify those linked child cells; separate child-cell range and consistency checks were not emitted to avoid inventing variables.
* The questionnaire supplies paired percentage/month fields for several matrix questions, but only the base question variables are available in the canonical batch; paired-cell month range, blank/zero percentage dependency, and cross-column identical-value checks were therefore not emitted.
* Some routing text references component variables not supplied as canonical variables; those conditional predicates were omitted rather than inferred.
* The questionnaire text specifies separate percentage and months columns for several grids, but the supplied canonical records do not expose distinct child variables for those columns; therefore only the explicitly supported percentage-range and total checks are represented.
* The questionnaire supplies mixed percentage and month columns through base grid variables, but does not provide distinct component variable names; separate numeric bounds and blank/zero dependency rules were therefore omitted.
* The supplied routing text contains conditions referencing variables outside the current batch; no conditional predicates were emitted where the target response variables were not safely identifiable.
* The regimen grids combine percentage and months columns under a single base variable. Separate percentage and months range rules were omitted because the canonical data does not provide distinct component variables.
* The supplied routing text contains malformed or inconsistent age and range expressions; uncertain routing rules were omitted.
* The A24.1 through A24.4 tables specify separate percentage and month columns, but the supplied canonical data does not provide distinct variables for those columns; only percentage-range and total checks were emitted.
* The conditional display text contains malformed or inconsistent age ranges and predicates; no additional uncertain routing rules were emitted.
* The questionnaire specifies distinct percentage and month ranges within several matrix questions, but the supplied canonical records expose only one base variable for each matrix; the structured plan therefore records the supported numeric and total checks without inventing separate column variables.
* Repaired numeric range rule A41.1-R1 from explicit questionnaire bounds.
* Repaired numeric range rule A41.2-R1 from explicit questionnaire bounds.
* Repaired numeric range rule A42-R1 from explicit questionnaire bounds.
* Repaired numeric range rule A45-R1 from explicit questionnaire bounds.
* Omitted incomplete model rule: Rule A46.1_2-R1 requires variables and a range or allowed_values.
* Omitted incomplete model rule: Rule A46.2_2-R1 requires variables and a range or allowed_values.
* Omitted incomplete model rule: Rule A46.3_2-R1 requires variables and a range or allowed_values.
* Omitted incomplete model rule: Rule A46.4_2-R1 requires variables and a range or allowed_values.
* Repaired numeric range rule A46A-R1 from explicit questionnaire bounds.
* Repaired numeric range rule A46C-R1 from explicit questionnaire bounds.
* Omitted incomplete model rule: Rule A46D-R1 requires variables and a range or allowed_values.
* Repaired numeric range rule A46B-R1 from explicit questionnaire bounds.
* Omitted incomplete model rule: Rule A47.1_2-R1 requires variables and a range or allowed_values.
* The questionnaire provides separate percentage and months columns for the matrix questions, but only a single base variable is supplied for each matrix. Month-specific numeric-range and percent-to-month consistency checks were omitted rather than assigning unsupported variable names.
* The questionnaire provides conditional display expressions, but the supplied batch does not define corresponding filter variables or unambiguous child-column variables; conditional routing checks were therefore not emitted.
* The questionnaire specifies actual-month ranges and percentage-to-month consistency checks in the A59 grids, but the canonical batch exposes only base grid variables and no separate month variables; those uncertain checks were omitted.
* JF3's parsed option list is inconsistent with the question text: the displayed 0 category is absent from the parsed options and the first two parsed codes have inconsistent labels. Only the select-one completion check was emitted.
* A63 contains complex conditional display logic and malformed age text; no structured routing rule was emitted because the full conditional logic could not be represented without ambiguity.


EXECUTE.
