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


* [ERROR] Response is required for the prior-study participation screener.
COMPUTE V_JF9_R1 = 0.
IF (MISSING(JF9)) V_JF9_R1 = 1.



* [ERROR] Only Yes or No response codes are valid.
COMPUTE V_JF9_R2 = 0.
IF ((NOT MISSING(JF9) AND NOT ANY(JF9, 1, 2))) V_JF9_R2 = 1.



* [ERROR] Terminate respondents selecting Yes to recent related market research participation.
COMPUTE V_JF9_R3 = 0.
IF (JF9 = 1) V_JF9_R3 = 1.




* Question S0A.


* [ERROR] A current treatment country must be selected.
COMPUTE V_S0A_R1 = 0.
IF (MISSING(S0A)) V_S0A_R1 = 1.



* [ERROR] Only listed country response codes are valid.
COMPUTE V_S0A_R2 = 0.
IF ((NOT MISSING(S0A) AND NOT ANY(S0A, 1, 2, 3, 4, 5, 6, 7))) V_S0A_R2 = 1.




* Question S0B.


* [ERROR] At least one country treated in during the past six months must be selected.
COMPUTE V_S0B_R1 = 0.
IF (MISSING(S0B)) V_S0B_R1 = 1.



* [ERROR] Only listed country response codes are valid.
COMPUTE V_S0B_R2 = 0.
IF ((NOT MISSING(S0B) AND NOT ANY(S0B, 1, 2, 3, 4, 5, 6, 7))) V_S0B_R2 = 1.




* Question S1.


* [ERROR] A primary specialty or clinical department must be selected.
COMPUTE V_S1_R1 = 0.
IF (MISSING(S1)) V_S1_R1 = 1.



* [ERROR] Only listed specialty or department codes are valid.
COMPUTE V_S1_R2 = 0.
IF ((NOT MISSING(S1) AND NOT ANY(S1, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 31, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 98))) V_S1_R2 = 1.




* Question S1.1.


* [ERROR] A certification status must be selected when this Japan-only question is shown.
COMPUTE V_S1_1_R1 = 0.
IF (MISSING(S1.1)) V_S1_1_R1 = 1.



* [ERROR] Only the three listed certification-status codes are valid.
COMPUTE V_S1_1_R2 = 0.
IF ((NOT MISSING(S1.1) AND NOT ANY(S1.1, 1, 2, 3))) V_S1_1_R2 = 1.




* Question S2.


* [ERROR] Years in clinical practice must be entered when shown.
COMPUTE V_S2_R1 = 0.
IF (MISSING(S2)) V_S2_R1 = 1.



* [ERROR] Years in clinical practice must be a whole number from 0 through 75.
!Numeric svar=S2 min=0 max=75.
COMPUTE V_S2_R2 = 0.
IF ((NOT MISSING(S2) AND NOT ANY(S2, 0, 75))) V_S2_R2 = 1.




* Question S3.


* [ERROR] A primary practice setting must be selected.
COMPUTE V_S3_R1 = 0.
IF (MISSING(S3)) V_S3_R1 = 1.



* [ERROR] Only listed practice-setting codes are valid.
COMPUTE V_S3_R2 = 0.
IF ((NOT MISSING(S3) AND NOT ANY(S3, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11))) V_S3_R2 = 1.




* Question S4.


* [ERROR] The monthly patient count must be entered.
COMPUTE V_S4_R1 = 0.
IF (MISSING(S4)) V_S4_R1 = 1.



* [ERROR] The monthly patient count must be a whole number from 0 through 9999.
!Numeric svar=S4 min=0 max=9999.
COMPUTE V_S4_R2 = 0.
IF ((NOT MISSING(S4) AND NOT ANY(S4, 0, 9999))) V_S4_R2 = 1.




* Question H1A.


* [ERROR] The number of Hodgkin Lymphoma patients initiating new active treatment must be entered when shown.
COMPUTE V_H1A_R1 = 0.
IF (MISSING(H1A)) V_H1A_R1 = 1.



* [ERROR] The Hodgkin Lymphoma patient count must be a whole number from 1 through 9999.
!Numeric svar=H1A min=1 max=9999.
COMPUTE V_H1A_R2 = 0.
IF ((NOT MISSING(H1A) AND NOT ANY(H1A, 1, 9999))) V_H1A_R2 = 1.




* Question H1B.


* [ERROR] All displayed Hodgkin Lymphoma treatment-line allocation fields must be completed.
COMPUTE V_H1B_R1 = 0.
IF (MISSING(H1B)) V_H1B_R1 = 1.




* Question A1A.


* [ERROR] The number of ALL patients initiating new active treatment must be entered when shown.
COMPUTE V_A1A_R1 = 0.
IF (MISSING(A1A)) V_A1A_R1 = 1.



* [ERROR] The ALL patient count must be a whole number from 1 through 9999.
!Numeric svar=A1A min=1 max=9999.
COMPUTE V_A1A_R2 = 0.
IF ((NOT MISSING(A1A) AND NOT ANY(A1A, 1, 9999))) V_A1A_R2 = 1.




* Question A1B.


* [ERROR] All displayed ALL treatment-line allocation fields must be completed.
COMPUTE V_A1B_R1 = 0.
IF (MISSING(A1B)) V_A1B_R1 = 1.




* Question S4.1.


* [ERROR] Treatment of pediatric ALL patients must be answered when shown.
COMPUTE V_S4_1_R1 = 0.
IF (MISSING(S4.1)) V_S4_1_R1 = 1.



* [ERROR] Only Yes and No response codes are valid.
COMPUTE V_S4_1_R2 = 0.
IF ((NOT MISSING(S4.1) AND NOT ANY(S4.1, 1, 2))) V_S4_1_R2 = 1.




* Question S4.2.


* [ERROR] The pediatric patient-load category must be selected when shown.
COMPUTE V_S4_2_R1 = 0.
IF (MISSING(S4.2)) V_S4_2_R1 = 1.



* [ERROR] Only the four listed pediatric patient-load codes are valid.
COMPUTE V_S4_2_R2 = 0.
IF ((NOT MISSING(S4.2) AND NOT ANY(S4.2, 1, 2, 3, 4))) V_S4_2_R2 = 1.




* Question S6.


* [ERROR] Only listed conference, Other, and exclusive non-attendance codes are valid.
COMPUTE V_S6_R1 = 0.
IF ((NOT MISSING(S6) AND NOT ANY(S6, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 98, 99))) V_S6_R1 = 1.



* [ERROR] The no-conference response must not be selected with any conference or Other response.
COMPUTE V_S6_R2 = 0.
IF (SUM(S6_99) > 0 AND SUM(S6_1, S6_2, S6_3, S6_4, S6_5, S6_6, S6_7, S6_8, S6_9, S6_10, S6_11, S6_98, S6_99) > 1) V_S6_R2 = 1.




* Question S7.


* [ERROR] Both displayed HL care-setting percentages must be entered.
COMPUTE V_S7_R1 = 0.
IF (MISSING(S7)) V_S7_R1 = 1.



* [ERROR] Each HL care-setting percentage must be from 0 through 100.
!Numeric svar=S7 min=0 max=100.
COMPUTE V_S7_R2 = 0.
IF ((NOT MISSING(S7) AND NOT ANY(S7, 0, 100))) V_S7_R2 = 1.



* [ERROR] The HL inpatient and outpatient percentages must total 100.
!Sum_to_var svar=S7 value=100.
COMPUTE V_S7_R3 = 0.
IF (SUM(S7_1, S7_2) <> 100.0) V_S7_R3 = 1.




* Question S7.1.


* [ERROR] Both displayed ALL care-setting percentages must be entered.
COMPUTE V_S7_1_R1 = 0.
IF (MISSING(S7.1)) V_S7_1_R1 = 1.



* [ERROR] Each ALL care-setting percentage must be from 0 through 100.
!Numeric svar=S7.1 min=0 max=100.
COMPUTE V_S7_1_R2 = 0.
IF ((NOT MISSING(S7.1) AND NOT ANY(S7.1, 0, 100))) V_S7_1_R2 = 1.



* [ERROR] The ALL inpatient and outpatient percentages must total 100.
!Sum_to_var svar=S7.1 value=100.
COMPUTE V_S7_1_R3 = 0.
IF (SUM(S7.1_1, S7.1_2) <> 100.0) V_S7_1_R3 = 1.




* Question CS1.


* [ERROR] A hospital ranking level must be selected.
COMPUTE V_CS1_R1 = 0.
IF (MISSING(CS1)) V_CS1_R1 = 1.



* [ERROR] Only the four listed hospital-ranking codes are valid.
COMPUTE V_CS1_R2 = 0.
IF ((NOT MISSING(CS1) AND NOT ANY(CS1, 1, 2, 3, 4))) V_CS1_R2 = 1.




* Question CS2.


* [ERROR] A hospital city must be selected.
COMPUTE V_CS2_R1 = 0.
IF (MISSING(CS2)) V_CS2_R1 = 1.



* [ERROR] Only the listed city-group codes are valid; Other is not an allowed qualifying response.
COMPUTE V_CS2_R2 = 0.
IF ((NOT MISSING(CS2) AND NOT ANY(CS2, 0, 1, 2, 3, 4, 5, 6, 7))) V_CS2_R2 = 1.




* Question HX1.


* [ERROR] All displayed NGS-testing percentages must be entered.
COMPUTE V_HX1_R1 = 0.
IF (MISSING(HX1)) V_HX1_R1 = 1.



* [ERROR] Each NGS-testing percentage must be a whole number from 0 through 100.
!Numeric svar=HX1 min=0 max=100.
COMPUTE V_HX1_R2 = 0.
IF ((NOT MISSING(HX1) AND NOT ANY(HX1, 0, 100))) V_HX1_R2 = 1.




* Question H1.


* [ERROR] All displayed disease-stage percentages must be entered.
COMPUTE V_H1_R1 = 0.
IF (MISSING(H1)) V_H1_R1 = 1.



* [ERROR] Each disease-stage percentage must be from 0 through 100.
!Numeric svar=H1 min=0 max=100.
COMPUTE V_H1_R2 = 0.
IF ((NOT MISSING(H1) AND NOT ANY(H1, 0, 100))) V_H1_R2 = 1.



* [ERROR] Each disease-stage distribution column must total 100.
!Sum_to_var svar=H1 value=100.
COMPUTE V_H1_R3 = 0.
IF (SUM(H1_1, H1_2, H1_3, H1_4) <> 100.0) V_H1_R3 = 1.




* Question H2.


* [ERROR] All displayed first-line modality percentages must be entered.
COMPUTE V_H2_R1 = 0.
IF (MISSING(H2)) V_H2_R1 = 1.



* [ERROR] Each first-line modality percentage must be from 0 through 100.
!Numeric svar=H2 min=0 max=100.
COMPUTE V_H2_R2 = 0.
IF ((NOT MISSING(H2) AND NOT ANY(H2, 0, 100))) V_H2_R2 = 1.



* [ERROR] Each displayed H2 stage-group distribution must total 100.
!Sum_to_var svar=H2 value=100.
COMPUTE V_H2_R3 = 0.
IF (SUM(H2_1, H2_2, H2_3, H2_4, H2_5, H2_6, H2_99) <> 100.0) V_H2_R3 = 1.




* Question H3.


* [ERROR] All displayed HSCT-type percentages must be entered.
COMPUTE V_H3_R1 = 0.
IF (MISSING(H3)) V_H3_R1 = 1.



* [ERROR] Each HSCT-type percentage must be from 0 through 100.
!Numeric svar=H3 min=0 max=100.
COMPUTE V_H3_R2 = 0.
IF ((NOT MISSING(H3) AND NOT ANY(H3, 0, 100))) V_H3_R2 = 1.



* [ERROR] Each displayed H3 stage-group distribution must total 100.
!Sum_to_var svar=H3 value=100.
COMPUTE V_H3_R3 = 0.
IF (SUM(H3_1, H3_2) <> 100.0) V_H3_R3 = 1.




* Question H5.


* [ERROR] Each displayed eventual-treatment percentage must be from 0 through 100.
!Numeric svar=H5 min=0 max=100.
COMPUTE V_H5_R1 = 0.
IF ((NOT MISSING(H5) AND NOT ANY(H5, 0, 100))) V_H5_R1 = 1.




* Question H6.
* No validation generated: The model proposed only incomplete rules; they were omitted during deterministic validation.



* Question H6.1.


* [ERROR] The response percentages for each stage must total 100%.
!Sum_to_var svar=H6.1 myvars=H6.1.
COMPUTE V_H61_R1 = 0.
IF (SUM(H6.1_1, H6.1_2, H6.1_3, H6.1_4, H6.1_5, H6.1_6) <> 100.0) V_H61_R1 = 1.




* Question H7.1.


* [ERROR] Stage I and II regimen percentages must total 100%.
!Sum_to_var svar=H7.1 myvars=H7.1.
COMPUTE V_H71_R1 = 0.
IF (SUM(H7.1_1, H7.1_2, H7.1_11, H7.1_5, H7.1_6, H7.1_7, H7.1_9, H7.1_12, H7.1_96, H7.1_97, H7.1_98, H7.1_99) <> 100.0) V_H71_R1 = 1.




* Question H7.2.


* [ERROR] Stage I and II regimen percentages must total 100%.
!Sum_to_var svar=H7.2 myvars=H7.2.
COMPUTE V_H72_R1 = 0.
IF (SUM(H7.2_1, H7.2_2, H7.2_10, H7.2_4, H7.2_5, H7.2_6, H7.2_96, H7.2_97, H7.2_98, H7.2_99) <> 100.0) V_H72_R1 = 1.




* Question H7.3.


* [ERROR] Stage I and II regimen percentages must total 100%.
!Sum_to_var svar=H7.3 myvars=H7.3.
COMPUTE V_H73_R1 = 0.
IF (SUM(H7.3_1, H7.3_2, H7.3_3, H7.3_96, H7.3_97, H7.3_98, H7.3_99) <> 100.0) V_H73_R1 = 1.




* Question H7.4.


* [ERROR] Stage I and II regimen percentages must total 100%.
!Sum_to_var svar=H7.4 myvars=H7.4.
COMPUTE V_H74_R1 = 0.
IF (SUM(H7.4_1, H7.4_2, H7.4_5, H7.4_3, H7.4_4, H7.4_96, H7.4_97, H7.4_98, H7.4_99) <> 100.0) V_H74_R1 = 1.




* Question H8.1.


* [ERROR] Stage III and IV regimen percentages must total 100%.
!Sum_to_var svar=H8.1 myvars=H8.1.
COMPUTE V_H81_R1 = 0.
IF (SUM(H8.1_1, H8.1_2, H8.1_9, H8.1_4, H8.1_5, H8.1_6, H8.1_10, H8.1_96, H8.1_97, H8.1_98, H8.1_99) <> 100.0) V_H81_R1 = 1.




* Question H8.2.


* [ERROR] Stage III and IV regimen percentages must total 100%.
!Sum_to_var svar=H8.2 myvars=H8.2.
COMPUTE V_H82_R1 = 0.
IF (SUM(H8.2_1, H8.2_2, H8.2_3, H8.2_9, H8.2_5, H8.2_6, H8.2_7, H8.2_96, H8.2_97, H8.2_98, H8.2_99) <> 100.0) V_H82_R1 = 1.




* Question H8.3.


* [ERROR] Stage III and IV regimen percentages must total 100%.
!Sum_to_var svar=H8.3 myvars=H8.3.
COMPUTE V_H83_R1 = 0.
IF (SUM(H8.3_1, H8.3_2, H8.3_3, H8.3_96, H8.3_97, H8.3_98, H8.3_99) <> 100.0) V_H83_R1 = 1.




* Question H8.4.


* [ERROR] Stage III and IV regimen percentages must total 100%.
!Sum_to_var svar=H8.4 myvars=H8.4.
COMPUTE V_H84_R1 = 0.
IF (SUM(H8.4_1, H8.4_2, H8.4_5, H8.4_6, H8.4_3, H8.4_4, H8.4_96, H8.4_97, H8.4_98, H8.4_99) <> 100.0) V_H84_R1 = 1.




* Question H8.AX.


* [ERROR] The percentages with and without interim PET/CT assessment must total 100%.
!Sum_to_var svar=H8.AX myvars=H8.AX.
COMPUTE V_H8AX_R1 = 0.
IF (SUM(H8.AX) <> 100.0) V_H8AX_R1 = 1.




* Question H8.A.
* No validation generated: The model proposed only incomplete rules; they were omitted during deterministic validation.



* Question H9.


* [ERROR] Treatment-outcome percentages must total 100%.
!Sum_to_var svar=H9 myvars=H9.
COMPUTE V_H9_R1 = 0.
IF (SUM(H9_4, H9_2, H9_3, H9_1) <> 100.0) V_H9_R1 = 1.




* Question H10.


* [ERROR] The timing percentages for initiation of second-line therapy must total 100%.
!Sum_to_var svar=H10 myvars=H10.
COMPUTE V_H10_R1 = 0.
IF (SUM(H10_1, H10_2, H10_3) <> 100.0) V_H10_R1 = 1.




* Question H11.


* [ERROR] Second-line treatment-modality percentages must total 100%.
!Sum_to_var svar=H11 myvars=H11.
COMPUTE V_H11_R1 = 0.
IF (SUM(H11_2, H11_3, H11_4, H11_5, H11_6, H11_99) <> 100.0) V_H11_R1 = 1.




* Question H12.


* [ERROR] Autologous and allogeneic HSCT percentages must total 100%.
!Sum_to_var svar=H12 myvars=H12.
COMPUTE V_H12_R1 = 0.
IF (SUM(H12_1, H12_2) <> 100.0) V_H12_R1 = 1.




* Question H20.1.


* [ERROR] Second-line regimen percentages must total 100%.
!Sum_to_var svar=H20.1 myvars=H20.1.
COMPUTE V_H201_R1 = 0.
IF (SUM(H20.1_1, H20.1_2, H20.1_3, H20.1_4, H20.1_17, H20.1_5, H20.1_8, H20.1_9, H20.1_11, H20.1_12, H20.1_13, H20.1_18, H20.1_19, H20.1_20, H20.1_21, H20.1_14, H20.1_15, H20.1_96, H20.1_97, H20.1_98, H20.1_99) <> 100.0) V_H201_R1 = 1.




* Question H20.2.


* [ERROR] Second-line regimen percentages must total 100%.
!Sum_to_var svar=H20.2 myvars=H20.2.
COMPUTE V_H202_R1 = 0.
IF (SUM(H20.2_1, H20.2_2, H20.2_3, H20.2_4, H20.2_25, H20.2_5, H20.2_6, H20.2_7, H20.2_10, H20.2_11, H20.2_13, H20.2_14, H20.2_15, H20.2_21, H20.2_16, H20.2_17, H20.2_22, H20.2_23, H20.2_24, H20.2_18, H20.2_19, H20.2_96, H20.2_97, H20.2_98, H20.2_99) <> 100.0) V_H202_R1 = 1.




* Question H20.3.


* [ERROR] Second-line regimen percentages must total 100%.
!Sum_to_var svar=H20.3 myvars=H20.3.
COMPUTE V_H203_R1 = 0.
IF (SUM(H20.3_1, H20.3_2, H20.3_3, H20.3_4, H20.3_17, H20.3_5, H20.3_6, H20.3_8, H20.3_9, H20.3_10, H20.3_12, H20.3_14, H20.3_15, H20.3_16, H20.3_96, H20.3_97, H20.3_98, H20.3_99) <> 100.0) V_H203_R1 = 1.




* Question H20.4.


* [ERROR] Second-line regimen percentages must total 100%.
!Sum_to_var svar=H20.4 myvars=H20.4.
COMPUTE V_H204_R1 = 0.
IF (SUM(H20.4_1, H20.4_2, H20.4_3, H20.4_25, H20.4_5, H20.4_6, H20.4_8, H20.4_9, H20.4_10, H20.4_12, H20.4_13, H20.4_15, H20.4_16, H20.4_23, H20.4_17, H20.4_18, H20.4_19, H20.4_20, H20.4_21, H20.4_26, H20.4_22, H20.4_24, H20.4_28, H20.4_95, H20.4_96, H20.4_97, H20.4_98, H20.4_99) <> 100.0) V_H204_R1 = 1.




* Question H20.4A.


* [ERROR] The percentages for the specified domestic PD-1 regimens must total 100%.
!Sum_to_var svar=H20.4A myvars=H20.4A.
COMPUTE V_H204A_R1 = 0.
IF (SUM(H20.4A_1, H20.4A_2, H20.4A_3) <> 100.0) V_H204A_R1 = 1.




* Question H21.


* [ERROR] First-relapsed or refractory disease outcome percentages must total 100%.
!Sum_to_var svar=H21 myvars=H21.
COMPUTE V_H21_R1 = 0.
IF (SUM(H21_1, H21_2, H21_3, H21_4) <> 100.0) V_H21_R1 = 1.




* Question H22.


* [ERROR] The timing percentages for initiation of third-line therapy must total 100%.
!Sum_to_var svar=H22 myvars=H22.
COMPUTE V_H22_R1 = 0.
IF (SUM(H22_1, H22_2, H22_3) <> 100.0) V_H22_R1 = 1.




* Question H23.


* [ERROR] Third-line treatment-modality percentages must total 100%.
!Sum_to_var svar=H23 myvars=H23.
COMPUTE V_H23_R1 = 0.
IF (SUM(H23_2, H23_3, H23_4, H23_5, H23_6, H23_99) <> 100.0) V_H23_R1 = 1.




* Question H24.


* [ERROR] Autologous and allogeneic HSCT percentages must total 100%.
!Sum_to_var svar=H24 myvars=H24.
COMPUTE V_H24_R1 = 0.
IF (SUM(H24_1, H24_2) <> 100.0) V_H24_R1 = 1.




* Question H25.1.


* [ERROR] Validate that the percentage allocations total 100%.
!Sum_to_var svar=H25.1.
COMPUTE V_H25_1_R2 = 0.
IF (SUM(H25.1_1, H25.1_2, H25.1_3, H25.1_4, H25.1_17, H25.1_22, H25.1_5, H25.1_6, H25.1_8, H25.1_9, H25.1_11, H25.1_12, H25.1_13, H25.1_18, H25.1_19, H25.1_20, H25.1_21, H25.1_14, H25.1_15, H25.1_96, H25.1_97, H25.1_98, H25.1_99) <> 100.0) V_H25_1_R2 = 1.




* Question H25.2.


* [ERROR] Validate that the percentage allocations total 100%.
!Sum_to_var svar=H25.2.
COMPUTE V_H25_2_R2 = 0.
IF (SUM(H25.2_1, H25.2_2, H25.2_3, H25.2_23, H25.2_22, H25.2_4, H25.2_5, H25.2_8, H25.2_9, H25.2_11, H25.2_12, H25.2_13, H25.2_18, H25.2_19, H25.2_20, H25.2_21, H25.2_16, H25.2_17, H25.2_96, H25.2_97, H25.2_98, H25.2_99) <> 100.0) V_H25_2_R2 = 1.




* Question H25.3.


* [ERROR] Validate that the percentage allocations total 100%.
!Sum_to_var svar=H25.3.
COMPUTE V_H25_3_R2 = 0.
IF (SUM(H25.3_1, H25.3_2, H25.3_13, H25.3_3, H25.3_4, H25.3_5, H25.3_6, H25.3_7, H25.3_8, H25.3_9, H25.3_10, H25.3_11, H25.3_12, H25.3_96, H25.3_97, H25.3_98, H25.3_99) <> 100.0) V_H25_3_R2 = 1.




* Question H25.4.


* [ERROR] Validate that the percentage allocations total 100%.
!Sum_to_var svar=H25.4.
COMPUTE V_H25_4_R2 = 0.
IF (SUM(H25.4_1, H25.4_2, H25.4_3, H25.4_25, H25.4_5, H25.4_6, H25.4_8, H25.4_9, H25.4_10, H25.4_11, H25.4_12, H25.4_13, H25.4_14, H25.4_15, H25.4_16, H25.4_23, H25.4_17, H25.4_18, H25.4_19, H25.4_20, H25.4_21, H25.4_26, H25.4_22, H25.4_24, H25.4_28, H25.4_95, H25.4_96, H25.4_97, H25.4_98, H25.4_99) <> 100.0) V_H25_4_R2 = 1.




* Question H25.4A.


* [ERROR] Validate that the percentage allocations total 100%.
!Sum_to_var svar=H25.4A.
COMPUTE V_H25_4A_R2 = 0.
IF (SUM(H25.4A_1, H25.4A_2, H25.4A_3) <> 100.0) V_H25_4A_R2 = 1.




* Question H26.


* [ERROR] Validate that treatment-outcome percentages total 100%.
!Sum_to_var svar=H26.
COMPUTE V_H26_R2 = 0.
IF (SUM(H26_1, H26_2, H26_3, H26_4) <> 100.0) V_H26_R2 = 1.




* Question H27.


* [ERROR] Validate that each timeframe distribution totals 100%.
!Sum_to_var svar=H27.
COMPUTE V_H27_R2 = 0.
IF (SUM(H27_1, H27_2, H27_3, H27_4, H27_5) <> 100.0) V_H27_R2 = 1.




* Question H13.
* No validation generated: The model proposed only incomplete rules; they were omitted during deterministic validation.



* Question H14.1.


* [ERROR] Validate that maintenance-regimen percentages total 100%.
!Sum_to_var svar=H14.1.
COMPUTE V_H14_1_R2 = 0.
IF (SUM(H14.1_1, H14.1_2, H14.1_3, H14.1_4, H14.1_5, H14.1_6, H14.1_7, H14.1_8, H14.1_9, H14.1_10, H14.1_96, H14.1_97, H14.1_98, H14.1_99) <> 100.0) V_H14_1_R2 = 1.




* Question H14.2.


* [ERROR] Validate that maintenance-regimen percentages total 100%.
!Sum_to_var svar=H14.2.
COMPUTE V_H14_2_R2 = 0.
IF (SUM(H14.2_1, H14.2_2, H14.2_3, H14.2_4, H14.2_5, H14.2_6, H14.2_7, H14.2_8, H14.2_9, H14.2_96, H14.2_97, H14.2_98, H14.2_99) <> 100.0) V_H14_2_R2 = 1.




* Question H14.3.


* [ERROR] Validate that maintenance-regimen percentages total 100%.
!Sum_to_var svar=H14.3.
COMPUTE V_H14_3_R2 = 0.
IF (SUM(H14.3_1, H14.3_2, H14.3_3, H14.3_4, H14.3_96, H14.3_97, H14.3_98, H14.3_99) <> 100.0) V_H14_3_R2 = 1.




* Question H14.4.


* [ERROR] Validate that maintenance-regimen percentages total 100%.
!Sum_to_var svar=H14.4.
COMPUTE V_H14_4_R2 = 0.
IF (SUM(H14.4_5, H14.4_2, H14.4_3, H14.4_4, H14.4_96, H14.4_97, H14.4_98, H14.4_99) <> 100.0) V_H14_4_R2 = 1.




* Question H28.


* [ERROR] Validate that each stage-group response distribution totals 100%.
!Sum_to_var svar=H28.
COMPUTE V_H28_R2 = 0.
IF (SUM(H28_1, H28_2, H28_3, H28_4) <> 100.0) V_H28_R2 = 1.




* Question H29.
* No validation generated: The model proposed only incomplete rules; they were omitted during deterministic validation.



* Question H30.


* [ERROR] Validate that each later-line response distribution totals 100%.
!Sum_to_var svar=H30.
COMPUTE V_H30_R2 = 0.
IF (SUM(H30_1, H30_2, H30_3, H30_4) <> 100.0) V_H30_R2 = 1.




* Question H31.
* No validation generated: The model proposed only incomplete rules; they were omitted during deterministic validation.



* Question A1.


* [ERROR] Validate that age-band percentages total 100%.
!Sum_to_var svar=A1.
COMPUTE V_A1_R2 = 0.
IF (SUM(A1_1, A1_3, A1_2, A1_4) <> 100.0) V_A1_R2 = 1.



* [ERROR] Screen out respondents with S1 equal to 4 and no pediatric ALL patients.
COMPUTE V_A1_R3 = 0.
IF (S1 = 4 AND A1_1 = 0) V_A1_R3 = 1.




* Question A2.
* No validation generated: Informational parent question; the supplied canonical record contains no response fields or explicit validation evidence.



* Question A2_1.
* No validation generated: Placeholder label without response content or explicit validation evidence.



* Question A2_2.


* [ERROR] Validate that each Ph-negative/Ph-positive distribution totals 100%.
!Sum_to_var svar=A2_2.
COMPUTE V_A2_2_R2 = 0.
IF (SUM(A2_2_1, A2_2_2) <> 100.0) V_A2_2_R2 = 1.




* Question A2.1.


* [ERROR] Validate that each patient-group biomarker-testing distribution totals 100%.
!Sum_to_var svar=A2.1.
COMPUTE V_A2_1_R2 = 0.
IF (SUM(A2.1_1, A2.1_2) <> 100.0) V_A2_1_R2 = 1.




* Question X1.1.
* No validation generated: The model proposed only incomplete rules; they were omitted during deterministic validation.



* Question A3.


* [ERROR] Validate that each patient-group initial-therapy distribution totals 100%.
!Sum_to_var svar=A3.
COMPUTE V_A3_R2 = 0.
IF (SUM(A3_1, A3_2, A3_3, A3_4, A3_5, A3_6, A3_99) <> 100.0) V_A3_R2 = 1.




* Question A4.


* [ERROR] Validate that autologous and allogeneic HCT percentages total 100% for each patient group.
!Sum_to_var svar=A4.
COMPUTE V_A4_R2 = 0.
IF (SUM(A4_1, A4_2) <> 100.0) V_A4_R2 = 1.




* Question A5.
* No validation generated: The model proposed only incomplete rules; they were omitted during deterministic validation.



* Question A6.


* [ERROR] Durations must be whole numbers from 0 through 99 months.
!Numeric svar=A6 min=0 max=99.
COMPUTE V_A6_R1 = 0.
IF ((NOT MISSING(A6) AND (A6 < 0.0 OR A6 > 99.0))) V_A6_R1 = 1.




* Question A7.


* [ERROR] Each response percentage must be a whole number from 0 through 100.
!Numeric svar=A7 min=0 max=100.
COMPUTE V_A7_R1 = 0.
IF ((NOT MISSING(A7) AND (A7 < 0.0 OR A7 > 100.0))) V_A7_R1 = 1.



* [ERROR] The timeframe percentages in each displayed column must total 100.
!Sum_to_var svar=A7.
COMPUTE V_A7_R2 = 0.
IF (SUM(A7_1, A7_2, A7_3, A7_4, A7_5) <> 100.0) V_A7_R2 = 1.




* Question A10.


* [ERROR] Each therapy percentage must be a whole number from 0 through 100.
!Numeric svar=A10 min=0 max=100.
COMPUTE V_A10_R1 = 0.
IF ((NOT MISSING(A10) AND (A10 < 0.0 OR A10 > 100.0))) V_A10_R1 = 1.




* Question A11.1.


* [ERROR] Reported percentages must be whole numbers from 0 through 100.
!Numeric svar=A11.1 min=0 max=100.
COMPUTE V_A11_1_R1 = 0.
IF ((NOT MISSING(A11.1) AND (A11.1 < 0.0 OR A11.1 > 100.0))) V_A11_1_R1 = 1.




* Question A11.1_1.
* No validation generated: Placeholder field with no respondent-facing content or validation evidence.



* Question A11.1_2.


* [ERROR] The displayed induction-regimen grid is required when shown.
COMPUTE V_A11_1_2_R1 = 0.
IF (MISSING(A11.1_2)) V_A11_1_2_R1 = 1.



* [ERROR] The regimen percentages in each displayed population column must total 100.
!Sum_to_var svar=A11.1_2.
COMPUTE V_A11_1_2_R2 = 0.
IF (SUM(A11.1_2_26, A11.1_2_27, A11.1_2_28, A11.1_2_29, A11.1_2_30, A11.1_2_31, A11.1_2_32, A11.1_2_33, A11.1_2_34, A11.1_2_35, A11.1_2_36, A11.1_2_37, A11.1_2_38, A11.1_2_96, A11.1_2_97, A11.1_2_98, A11.1_2_99) <> 100.0) V_A11_1_2_R2 = 1.




* Question A11.2.


* [ERROR] Reported percentages must be whole numbers from 0 through 100.
!Numeric svar=A11.2 min=0 max=100.
COMPUTE V_A11_2_R1 = 0.
IF ((NOT MISSING(A11.2) AND (A11.2 < 0.0 OR A11.2 > 100.0))) V_A11_2_R1 = 1.




* Question A11.2_1.
* No validation generated: Placeholder field with no respondent-facing content or validation evidence.



* Question A11.2_2.


* [ERROR] The displayed induction-regimen grid is required when shown.
COMPUTE V_A11_2_2_R1 = 0.
IF (MISSING(A11.2_2)) V_A11_2_2_R1 = 1.



* [ERROR] The regimen percentages in each displayed population column must total 100.
!Sum_to_var svar=A11.2_2.
COMPUTE V_A11_2_2_R2 = 0.
IF (SUM(A11.2_2_2, A11.2_2_19, A11.2_2_15, A11.2_2_3, A11.2_2_4, A11.2_2_16, A11.2_2_7, A11.2_2_20, A11.2_2_11, A11.2_2_17, A11.2_2_12, A11.2_2_14, A11.2_2_18, A11.2_2_96, A11.2_2_97, A11.2_2_98, A11.2_2_99) <> 100.0) V_A11_2_2_R2 = 1.




* Question A11.3.


* [ERROR] Reported percentages must be whole numbers from 0 through 100.
!Numeric svar=A11.3 min=0 max=100.
COMPUTE V_A11_3_R1 = 0.
IF ((NOT MISSING(A11.3) AND (A11.3 < 0.0 OR A11.3 > 100.0))) V_A11_3_R1 = 1.




* Question A11.3_1.
* No validation generated: Placeholder field with no respondent-facing content or validation evidence.



* Question A11.3_2.


* [ERROR] The displayed induction-regimen grid is required when shown.
COMPUTE V_A11_3_2_R1 = 0.
IF (MISSING(A11.3_2)) V_A11_3_2_R1 = 1.



* [ERROR] The regimen percentages in each displayed population column must total 100.
!Sum_to_var svar=A11.3_2.
COMPUTE V_A11_3_2_R2 = 0.
IF (SUM(A11.3_2_1, A11.3_2_2, A11.3_2_16, A11.3_2_5, A11.3_2_6, A11.3_2_8, A11.3_2_9, A11.3_2_10, A11.3_2_17, A11.3_2_12, A11.3_2_13, A11.3_2_96, A11.3_2_97, A11.3_2_98, A11.3_2_99) <> 100.0) V_A11_3_2_R2 = 1.




* Question A11.4.


* [ERROR] Reported percentages must be whole numbers from 0 through 100.
!Numeric svar=A11.4 min=0 max=100.
COMPUTE V_A11_4_R1 = 0.
IF ((NOT MISSING(A11.4) AND (A11.4 < 0.0 OR A11.4 > 100.0))) V_A11_4_R1 = 1.




* Question A11.4_1.
* No validation generated: Placeholder field with no respondent-facing content or validation evidence.



* Question A11.4_2.


* [ERROR] The displayed induction-regimen grid is required when shown.
COMPUTE V_A11_4_2_R1 = 0.
IF (MISSING(A11.4_2)) V_A11_4_2_R1 = 1.



* [ERROR] The regimen percentages in each displayed population column must total 100.
!Sum_to_var svar=A11.4_2.
COMPUTE V_A11_4_2_R2 = 0.
IF (SUM(A11.4_2_1, A11.4_2_2, A11.4_2_5, A11.4_2_17, A11.4_2_18, A11.4_2_19, A11.4_2_6, A11.4_2_8, A11.4_2_9, A11.4_2_10, A11.4_2_11, A11.4_2_25, A11.4_2_12, A11.4_2_20, A11.4_2_13, A11.4_2_21, A11.4_2_22, A11.4_2_23, A11.4_2_14, A11.4_2_24, A11.4_2_96, A11.4_2_97, A11.4_2_98, A11.4_2_99) <> 100.0) V_A11_4_2_R2 = 1.




* Question A11A.


* [ERROR] Each outcome percentage must be a whole number from 0 through 100.
!Numeric svar=A11A min=0 max=100.
COMPUTE V_A11A_R1 = 0.
IF ((NOT MISSING(A11A) AND (A11A < 0.0 OR A11A > 100.0))) V_A11A_R1 = 1.



* [ERROR] Complete remission and failure percentages in each population column must total 100.
!Sum_to_var svar=A11A.
COMPUTE V_A11A_R2 = 0.
IF (SUM(A11A_1, A11A_2) <> 100.0) V_A11A_R2 = 1.




* Question A12A.


* [ERROR] The percent tested for MRD must be a whole number from 0 through 100.
!Numeric svar=A12A min=0 max=100.
COMPUTE V_A12A_R1 = 0.
IF ((NOT MISSING(A12A) AND (A12A < 0.0 OR A12A > 100.0))) V_A12A_R1 = 1.




* Question A12.


* [ERROR] Each MRD-negative percentage must be a whole number from 0 through 100.
!Numeric svar=A12 min=0 max=100.
COMPUTE V_A12_R1 = 0.
IF ((NOT MISSING(A12) AND (A12 < 0.0 OR A12 > 100.0))) V_A12_R1 = 1.




* Question A12.1.


* [ERROR] Reported percentages must be whole numbers from 0 through 100.
!Numeric svar=A12.1 min=0 max=100.
COMPUTE V_A12_1_R1 = 0.
IF ((NOT MISSING(A12.1) AND (A12.1 < 0.0 OR A12.1 > 100.0))) V_A12_1_R1 = 1.




* Question A12.1_1.
* No validation generated: Placeholder field with no respondent-facing content or validation evidence.



* Question A12.1_2.


* [ERROR] The displayed consolidation/intensification regimen grid is required when shown.
COMPUTE V_A12_1_2_R1 = 0.
IF (MISSING(A12.1_2)) V_A12_1_2_R1 = 1.



* [ERROR] The regimen percentages in each displayed population column must total 100.
!Sum_to_var svar=A12.1_2.
COMPUTE V_A12_1_2_R2 = 0.
IF (SUM(A12.1_2_38, A12.1_2_39, A12.1_2_40, A12.1_2_41, A12.1_2_42, A12.1_2_43, A12.1_2_44, A12.1_2_45, A12.1_2_46, A12.1_2_47, A12.1_2_48, A12.1_2_49, A12.1_2_50, A12.1_2_51, A12.1_2_52, A12.1_2_53, A12.1_2_54, A12.1_2_55, A12.1_2_56, A12.1_2_57, A12.1_2_58, A12.1_2_59, A12.1_2_60, A12.1_2_96, A12.1_2_97, A12.1_2_98, A12.1_2_99) <> 100.0) V_A12_1_2_R2 = 1.




* Question A12.2.


* [ERROR] Reported percentages must be whole numbers from 0 through 100.
!Numeric svar=A12.2 min=0 max=100.
COMPUTE V_A12_2_R1 = 0.
IF ((NOT MISSING(A12.2) AND (A12.2 < 0.0 OR A12.2 > 100.0))) V_A12_2_R1 = 1.




* Question A12.2_1.
* No validation generated: Placeholder field with no respondent-facing content or validation evidence.



* Question A12.2_2.


* [ERROR] The displayed consolidation regimen grid is required when shown.
COMPUTE V_A12_2_2_R1 = 0.
IF (MISSING(A12.2_2)) V_A12_2_2_R1 = 1.



* [ERROR] The regimen percentages in each displayed population column must total 100.
!Sum_to_var svar=A12.2_2.
COMPUTE V_A12_2_2_R2 = 0.
IF (SUM(A12.2_2_2, A12.2_2_22, A12.2_2_23, A12.2_2_24, A12.2_2_25, A12.2_2_26, A12.2_2_27, A12.2_2_28, A12.2_2_29, A12.2_2_3, A12.2_2_4, A12.2_2_6, A12.2_2_7, A12.2_2_8, A12.2_2_10, A12.2_2_13, A12.2_2_14, A12.2_2_21, A12.2_2_16, A12.2_2_19, A12.2_2_20, A12.2_2_96, A12.2_2_97, A12.2_2_98, A12.2_2_99) <> 100.0) V_A12_2_2_R2 = 1.




* Question A12.3.


* [ERROR] Reported percentages must be whole numbers from 0 through 100.
!Numeric svar=A12.3 min=0 max=100.
COMPUTE V_A12_3_R1 = 0.
IF ((NOT MISSING(A12.3) AND (A12.3 < 0.0 OR A12.3 > 100.0))) V_A12_3_R1 = 1.




* Question A12.3_1.
* No validation generated: The supplied canonical item is an unmapped placeholder with no response structure or validation evidence.



* Question A12.3_2.


* [ERROR] Require the regimen allocation grid because the question is marked required.
COMPUTE V_A12_3_2_MANDATORY = 0.
IF (MISSING(A12.3_2)) V_A12_3_2_MANDATORY = 1.



* [ERROR] Require the reported patient percentages in the regimen grid to total 100 percent.
COMPUTE V_A12_3_2_TOTAL = 0.
IF (SUM(A12.3_2_1, A12.3_2_2, A12.3_2_21, A12.3_2_22, A12.3_2_23, A12.3_2_24, A12.3_2_25, A12.3_2_26, A12.3_2_3, A12.3_2_4, A12.3_2_5, A12.3_2_6, A12.3_2_7, A12.3_2_10, A12.3_2_14, A12.3_2_27, A12.3_2_17, A12.3_2_28, A12.3_2_29, A12.3_2_19, A12.3_2_20, A12.3_2_96, A12.3_2_97, A12.3_2_98, A12.3_2_99) <> 100.0) V_A12_3_2_TOTAL = 1.




* Question A12.4.
* No validation generated: This is an optional grid instruction/container; the supplied item does not identify an answer variable for the percentage and months cells.



* Question A12.4_1.
* No validation generated: The supplied canonical item is an unmapped placeholder with no response structure or validation evidence.



* Question A12.4_2.


* [ERROR] Require the consolidation regimen grid because the question is marked required.
COMPUTE V_A12_4_2_MANDATORY = 0.
IF (MISSING(A12.4_2)) V_A12_4_2_MANDATORY = 1.



* [ERROR] Require the reported patient percentages in the consolidation regimen grid to total 100 percent.
COMPUTE V_A12_4_2_TOTAL = 0.
IF (SUM(A12.4_2_1, A12.4_2_2, A12.4_2_23, A12.4_2_24, A12.4_2_3, A12.4_2_4, A12.4_2_5, A12.4_2_6, A12.4_2_25, A12.4_2_26, A12.4_2_27, A12.4_2_28, A12.4_2_29, A12.4_2_30, A12.4_2_31, A12.4_2_32, A12.4_2_33, A12.4_2_7, A12.4_2_10, A12.4_2_11, A12.4_2_12, A12.4_2_13, A12.4_2_14, A12.4_2_15, A12.4_2_34, A12.4_2_16, A12.4_2_21, A12.4_2_17, A12.4_2_22, A12.4_2_35, A12.4_2_19, A12.4_2_36, A12.4_2_20, A12.4_2_37, A12.4_2_96, A12.4_2_97, A12.4_2_98, A12.4_2_99) <> 100.0) V_A12_4_2_TOTAL = 1.




* Question A12.1A.


* [ERROR] Limit the reported number of blinatumomab cycles to the stated range of 0 through 100.
COMPUTE V_A12_1A_RANGE = 0.
IF ((NOT MISSING(A12.1A) AND (A12.1A < 0.0 OR A12.1A > 100.0))) V_A12_1A_RANGE = 1.




* Question A13.1.
* No validation generated: This is an optional grid instruction/container; the supplied item does not identify an answer variable for the percentage and months cells.



* Question A13.1_1.
* No validation generated: The supplied canonical item is an unmapped placeholder with no response structure or validation evidence.



* Question A13.1_2.


* [ERROR] Require the CNS prophylaxis regimen grid because the question is marked required.
COMPUTE V_A13_1_2_MANDATORY = 0.
IF (MISSING(A13.1_2)) V_A13_1_2_MANDATORY = 1.



* [ERROR] Require the reported patient percentages in the CNS prophylaxis grid to total 100 percent.
COMPUTE V_A13_1_2_TOTAL = 0.
IF (SUM(A13.1_2_8, A13.1_2_21, A13.1_2_19, A13.1_2_20, A13.1_2_10, A13.1_2_22, A13.1_2_23, A13.1_2_24, A13.1_2_25, A13.1_2_96, A13.1_2_97, A13.1_2_98, A13.1_2_99) <> 100.0) V_A13_1_2_TOTAL = 1.




* Question A13.2.
* No validation generated: This is an optional grid instruction/container; the supplied item does not identify an answer variable for the percentage and months cells.



* Question A13.2_1.
* No validation generated: The supplied canonical item is an unmapped placeholder with no response structure or validation evidence.



* Question A13.2_2.


* [ERROR] Require the CNS prophylaxis regimen grid because the question is marked required.
COMPUTE V_A13_2_2_MANDATORY = 0.
IF (MISSING(A13.2_2)) V_A13_2_2_MANDATORY = 1.



* [ERROR] Require the reported patient percentages in the CNS prophylaxis grid to total 100 percent.
COMPUTE V_A13_2_2_TOTAL = 0.
IF (SUM(A13.2_2_8, A13.2_2_22, A13.2_2_20, A13.2_2_21, A13.2_2_10, A13.2_2_23, A13.2_2_24, A13.2_2_25, A13.2_2_26, A13.2_2_96, A13.2_2_97, A13.2_2_98, A13.2_2_99) <> 100.0) V_A13_2_2_TOTAL = 1.




* Question A13.3.
* No validation generated: This is an optional grid instruction/container; the supplied item does not identify an answer variable for the percentage and months cells.



* Question A13.3_1.
* No validation generated: The supplied canonical item is an unmapped placeholder with no response structure or validation evidence.



* Question A13.3_2.


* [ERROR] Require the CNS prophylaxis regimen grid because the question is marked required.
COMPUTE V_A13_3_2_MANDATORY = 0.
IF (MISSING(A13.3_2)) V_A13_3_2_MANDATORY = 1.



* [ERROR] Require the reported patient percentages in the CNS prophylaxis grid to total 100 percent.
COMPUTE V_A13_3_2_TOTAL = 0.
IF (SUM(A13.3_2_9, A13.3_2_10, A13.3_2_7, A13.3_2_8, A13.3_2_3, A13.3_2_4, A13.3_2_11, A13.3_2_12, A13.3_2_13, A13.3_2_96, A13.3_2_97, A13.3_2_98, A13.3_2_99) <> 100.0) V_A13_3_2_TOTAL = 1.




* Question A13.4.
* No validation generated: This is an optional grid instruction/container; the supplied item does not identify an answer variable for the percentage and months cells.



* Question A13.4_1.
* No validation generated: The supplied canonical item is an unmapped placeholder with no response structure or validation evidence.



* Question A13.4_2.


* [ERROR] Require the CNS prophylaxis regimen grid because the question is marked required.
COMPUTE V_A13_4_2_MANDATORY = 0.
IF (MISSING(A13.4_2)) V_A13_4_2_MANDATORY = 1.



* [ERROR] Require the reported patient percentages in the CNS prophylaxis grid to total 100 percent.
COMPUTE V_A13_4_2_TOTAL = 0.
IF (SUM(A13.4_2_9, A13.4_2_10, A13.4_2_7, A13.4_2_8, A13.4_2_3, A13.4_2_4, A13.4_2_11, A13.4_2_12, A13.4_2_13, A13.4_2_96, A13.4_2_97, A13.4_2_98, A13.4_2_99) <> 100.0) V_A13_4_2_TOTAL = 1.




* Question A14.1.
* No validation generated: This is an optional grid instruction/container; the supplied item does not identify an answer variable for the percentage and months cells.



* Question A14.1_1.
* No validation generated: The supplied canonical item is an unmapped placeholder with no response structure or validation evidence.



* Question A14.1_2.


* [ERROR] Require the maintenance regimen grid because the question is marked required.
COMPUTE V_A14_1_2_MANDATORY = 0.
IF (MISSING(A14.1_2)) V_A14_1_2_MANDATORY = 1.



* [ERROR] Require the reported patient percentages in the maintenance regimen grid to total 100 percent.
COMPUTE V_A14_1_2_TOTAL = 0.
IF (SUM(A14.1_2_25, A14.1_2_26, A14.1_2_27, A14.1_2_28, A14.1_2_29, A14.1_2_30, A14.1_2_31, A14.1_2_32, A14.1_2_33, A14.1_2_34, A14.1_2_96, A14.1_2_97, A14.1_2_98, A14.1_2_99) <> 100.0) V_A14_1_2_TOTAL = 1.




* Question A14.2.
* No validation generated: This is an optional grid instruction/container; the supplied item does not identify an answer variable for the percentage and months cells.



* Question A14.2_1.
* No validation generated: The supplied canonical item is an unmapped placeholder with no response structure or validation evidence.



* Question A14.2_2.


* [ERROR] Require the maintenance regimen grid because the question is marked required.
COMPUTE V_A14_2_2_MANDATORY = 0.
IF (MISSING(A14.2_2)) V_A14_2_2_MANDATORY = 1.



* [ERROR] Require the reported patient percentages in the maintenance regimen grid to total 100 percent.
COMPUTE V_A14_2_2_TOTAL = 0.
IF (SUM(A14.2_2_13, A14.2_2_22, A14.2_2_18, A14.2_2_23, A14.2_2_19, A14.2_2_24, A14.2_2_96, A14.2_2_97, A14.2_2_98, A14.2_2_99) <> 100.0) V_A14_2_2_TOTAL = 1.




* Question A14.3.
* No validation generated: The supplied item is an optional grid instruction, but no corresponding answer-grid variables are included in this batch.



* Question A14.3_1.
* No validation generated: Placeholder variable with no question text, options, required status, or validation evidence.



* Question A14.3_2.


* [ERROR] The displayed percentage allocation must total 100 percent.
!Sum_to_var svar=A14.3_2.
COMPUTE V_A14_3_2_R2 = 0.
IF (SUM(A14.3_2_1, A14.3_2_2, A14.3_2_3, A14.3_2_4, A14.3_2_5, A14.3_2_6, A14.3_2_9, A14.3_2_10, A14.3_2_96, A14.3_2_97, A14.3_2_98, A14.3_2_99) <> 100.0) V_A14_3_2_R2 = 1.



* [ERROR] The required regimen allocation question must be answered when displayed.
COMPUTE V_A14_3_2_R3 = 0.
IF (MISSING(A14.3_2)) V_A14_3_2_R3 = 1.




* Question A14.4.
* No validation generated: Section-level parent question has no directly answerable response variable; validation evidence applies to the associated grid variable A14.4_2.



* Question A14.4_1.
* No validation generated: Placeholder variable with no question text, options, required status, or validation evidence.



* Question A14.4_2.


* [ERROR] The displayed percentage allocation must total 100 percent.
!Sum_to_var svar=A14.4_2.
COMPUTE V_A14_4_2_R2 = 0.
IF (SUM(A14.4_2_1, A14.4_2_2, A14.4_2_3, A14.4_2_4, A14.4_2_5, A14.4_2_6, A14.4_2_9, A14.4_2_10, A14.4_2_11, A14.4_2_96, A14.4_2_97, A14.4_2_98, A14.4_2_99) <> 100.0) V_A14_4_2_R2 = 1.



* [ERROR] The required maintenance regimen allocation question must be answered when displayed.
COMPUTE V_A14_4_2_R3 = 0.
IF (MISSING(A14.4_2)) V_A14_4_2_R3 = 1.




* Question A15.


* [ERROR] Each displayed treatment-outcome column must total 100 percent.
!Sum_to_var svar=A15.
COMPUTE V_A15_R2 = 0.
IF (SUM(A15_4, A15_2, A15_3, A15_1) <> 100.0) V_A15_R2 = 1.



* [ERROR] The required treatment-outcome allocation must be answered when displayed.
COMPUTE V_A15_R3 = 0.
IF (MISSING(A15)) V_A15_R3 = 1.




* Question A16.


* [ERROR] Each displayed timing-allocation column must total 100 percent.
!Sum_to_var svar=A16.
COMPUTE V_A16_R2 = 0.
IF (SUM(A16_1, A16_2, A16_3) <> 100.0) V_A16_R2 = 1.



* [ERROR] The required timing-allocation question must be answered when displayed.
COMPUTE V_A16_R3 = 0.
IF (MISSING(A16)) V_A16_R3 = 1.




* Question A17.


* [ERROR] Each displayed modality column must total 100 percent.
!Sum_to_var svar=A17.
COMPUTE V_A17_R2 = 0.
IF (SUM(A17_2, A17_3, A17_4, A17_5, A17_6, A17_99, A17_18) <> 100.0) V_A17_R2 = 1.



* [ERROR] The required second-line modality allocation must be answered when displayed.
COMPUTE V_A17_R3 = 0.
IF (MISSING(A17)) V_A17_R3 = 1.




* Question A18.


* [ERROR] Each displayed HCT column must total 100 percent.
!Sum_to_var svar=A18.
COMPUTE V_A18_R2 = 0.
IF (SUM(A18_1, A18_2) <> 100.0) V_A18_R2 = 1.



* [ERROR] The required HCT allocation must be answered when displayed.
COMPUTE V_A18_R3 = 0.
IF (MISSING(A18)) V_A18_R3 = 1.




* Question A18A.
* No validation generated: The model proposed only incomplete rules; they were omitted during deterministic validation.



* Question A18B.


* [ERROR] The CAR-T outcome percentages must total 100 percent.
!Sum_to_var svar=A18B.
COMPUTE V_A18B_R2 = 0.
IF (SUM(A18B_1, A18B_2) <> 100.0) V_A18B_R2 = 1.



* [ERROR] The required CAR-T outcome allocation must be answered.
COMPUTE V_A18B_R3 = 0.
IF (MISSING(A18B)) V_A18B_R3 = 1.




* Question A18.1.


* [ERROR] Each displayed response-outcome column must total 100 percent.
!Sum_to_var svar=A18.1.
COMPUTE V_A18_1_R2 = 0.
IF (SUM(A18.1_1, A18.1_2, A18.1_3, A18.1_4, A18.1_5) <> 100.0) V_A18_1_R2 = 1.



* [ERROR] The required response-outcome allocation must be answered when displayed.
COMPUTE V_A18_1_R3 = 0.
IF (MISSING(A18.1)) V_A18_1_R3 = 1.




* Question A19.1.
* No validation generated: Section-level parent question has no directly answerable response variable; validation evidence applies to the associated regimen grid variable A19.1_2.



* Question A19.1_1.
* No validation generated: Placeholder variable with no question text, options, required status, or validation evidence.



* Question A19.1_2.


* [ERROR] Each displayed regimen percentage column must total 100 percent.
!Sum_to_var svar=A19.1_2.
COMPUTE V_A19_1_2_R2 = 0.
IF (SUM(A19.1_2_33, A19.1_2_34, A19.1_2_51, A19.1_2_35, A19.1_2_36, A19.1_2_37, A19.1_2_38, A19.1_2_53, A19.1_2_39, A19.1_2_40, A19.1_2_41, A19.1_2_42, A19.1_2_43, A19.1_2_44, A19.1_2_45, A19.1_2_46, A19.1_2_47, A19.1_2_48, A19.1_2_49, A19.1_2_50, A19.1_2_96, A19.1_2_97, A19.1_2_98, A19.1_2_99) <> 100.0) V_A19_1_2_R2 = 1.



* [ERROR] The required second-line regimen allocation must be answered when displayed.
COMPUTE V_A19_1_2_R3 = 0.
IF (MISSING(A19.1_2)) V_A19_1_2_R3 = 1.




* Question A19.2.
* No validation generated: Section-level parent question has no directly answerable response variable; validation evidence applies to the associated regimen grid variable A19.2_2.



* Question A19.2_1.
* No validation generated: Placeholder variable with no question text, options, required status, or validation evidence.



* Question A19.2_2.


* [ERROR] Each displayed regimen percentage column must total 100 percent.
!Sum_to_var svar=A19.2_2.
COMPUTE V_A19_2_2_R2 = 0.
IF (SUM(A19.2_2_1, A19.2_2_2, A19.2_2_4, A19.2_2_23, A19.2_2_24, A19.2_2_5, A19.2_2_25, A19.2_2_6, A19.2_2_8, A19.2_2_9, A19.2_2_10, A19.2_2_11, A19.2_2_12, A19.2_2_15, A19.2_2_26, A19.2_2_16, A19.2_2_17, A19.2_2_18, A19.2_2_27, A19.2_2_20, A19.2_2_21, A19.2_2_28, A19.2_2_22, A19.2_2_96, A19.2_2_97, A19.2_2_98, A19.2_2_99) <> 100.0) V_A19_2_2_R2 = 1.



* [ERROR] The required second-line regimen allocation must be answered when displayed.
COMPUTE V_A19_2_2_R3 = 0.
IF (MISSING(A19.2_2)) V_A19_2_2_R3 = 1.




* Question A19.3.
* No validation generated: Section-level parent question has no directly answerable response variable; validation evidence applies to the associated regimen grid variable A19.3_2.



* Question A19.3_1.
* No validation generated: Placeholder variable with no question text, options, required status, or validation evidence.



* Question A19.3_2.


* [ERROR] Each displayed regimen percentage column must total 100 percent.
!Sum_to_var svar=A19.3_2.
COMPUTE V_A19_3_2_R2 = 0.
IF (SUM(A19.3_2_1, A19.3_2_23, A19.3_2_2, A19.3_2_3, A19.3_2_4, A19.3_2_6, A19.3_2_7, A19.3_2_26, A19.3_2_11, A19.3_2_12, A19.3_2_13, A19.3_2_16, A19.3_2_17, A19.3_2_19, A19.3_2_24, A19.3_2_25, A19.3_2_22, A19.3_2_96, A19.3_2_97, A19.3_2_98, A19.3_2_99) <> 100.0) V_A19_3_2_R2 = 1.



* [ERROR] The required second-line regimen allocation must be answered when displayed.
COMPUTE V_A19_3_2_R3 = 0.
IF (MISSING(A19.3_2)) V_A19_3_2_R3 = 1.




* Question A19.4.
* No validation generated: Section-level parent question has no directly answerable response variable; validation evidence applies to the associated regimen grid variable A19.4_2.



* Question A19.4_1.
* No validation generated: Placeholder variable with no question text, options, required status, or validation evidence.



* Question A19.4_2.


* [ERROR] Each displayed regimen percentage column must total 100 percent.
!Sum_to_var svar=A19.4_2.
COMPUTE V_A19_4_2_R2 = 0.
IF (SUM(A19.4_2_1, A19.4_2_2, A19.4_2_28, A19.4_2_29, A19.4_2_30, A19.4_2_3, A19.4_2_4, A19.4_2_6, A19.4_2_7, A19.4_2_24, A19.4_2_9, A19.4_2_11, A19.4_2_12, A19.4_2_13, A19.4_2_15, A19.4_2_31, A19.4_2_26, A19.4_2_32, A19.4_2_16, A19.4_2_33, A19.4_2_17, A19.4_2_34, A19.4_2_18, A19.4_2_19, A19.4_2_35, A19.4_2_27, A19.4_2_36, A19.4_2_37, A19.4_2_96, A19.4_2_97, A19.4_2_98, A19.4_2_99) <> 100.0) V_A19_4_2_R2 = 1.



* [ERROR] The required second-line regimen allocation must be answered when displayed.
COMPUTE V_A19_4_2_R3 = 0.
IF (MISSING(A19.4_2)) V_A19_4_2_R3 = 1.




* Question A19A.
* No validation generated: The model proposed only incomplete rules; they were omitted during deterministic validation.



* Question A20.


* [ERROR] Responses must be whole percentages from 0 through 100.
COMPUTE V_A20_R1 = 0.
IF ((NOT MISSING(A20) AND (A20 < 0.0 OR A20 > 100.0))) V_A20_R1 = 1.



* [ERROR] Each treatment-outcome breakdown must total 100 percent.
COMPUTE V_A20_R2 = 0.
IF (SUM(A20_4, A20_2, A20_3, A20_1) <> 100.0) V_A20_R2 = 1.



* [ERROR] The pediatric breakdown applies only when pediatric patients receiving the relevant therapy are reported.
COMPUTE V_A20_R3 = 0.
IF (((A15_1_4 > 0) AND (MISSING(A20))) OR ((NOT (A15_1_4 > 0)) AND (NOT MISSING(A20)))) V_A20_R3 = 1.



* [ERROR] The adult and AYA breakdown applies only when adult or AYA patients receiving the relevant therapy are reported.
COMPUTE V_A20_R4 = 0.
IF (((A15_2_4 > 0) AND (MISSING(A20))) OR ((NOT (A15_2_4 > 0)) AND (NOT MISSING(A20)))) V_A20_R4 = 1.




* Question A21.


* [ERROR] Responses must be whole percentages from 0 through 100.
COMPUTE V_A21_R1 = 0.
IF ((NOT MISSING(A21) AND (A21 < 0.0 OR A21 > 100.0))) V_A21_R1 = 1.



* [ERROR] The three timing categories must total 100 percent.
COMPUTE V_A21_R2 = 0.
IF (SUM(A21_1, A21_2, A21_3) <> 100.0) V_A21_R2 = 1.



* [ERROR] The pediatric timing breakdown applies when pediatric third-line patients are reported.
COMPUTE V_A21_R3 = 0.
IF (((A20_1_4 > 0) AND (MISSING(A21))) OR ((NOT (A20_1_4 > 0)) AND (NOT MISSING(A21)))) V_A21_R3 = 1.



* [ERROR] The adult and AYA timing breakdown applies when adult or AYA third-line patients are reported.
COMPUTE V_A21_R4 = 0.
IF (((A20_2_4 > 0) AND (MISSING(A21))) OR ((NOT (A20_2_4 > 0)) AND (NOT MISSING(A21)))) V_A21_R4 = 1.




* Question A22.


* [ERROR] Responses must be whole percentages from 0 through 100.
COMPUTE V_A22_R1 = 0.
IF ((NOT MISSING(A22) AND (A22 < 0.0 OR A22 > 100.0))) V_A22_R1 = 1.



* [ERROR] The third-line modality allocation must total 100 percent.
COMPUTE V_A22_R2 = 0.
IF (SUM(A22_2, A22_3, A22_4, A22_5, A22_6, A22_99) <> 100.0) V_A22_R2 = 1.




* Question A23.


* [ERROR] Responses must be whole percentages from 0 through 100.
COMPUTE V_A23_R1 = 0.
IF ((NOT MISSING(A23) AND (A23 < 0.0 OR A23 > 100.0))) V_A23_R1 = 1.



* [ERROR] The autologous and allogeneic HCT allocation must total 100 percent.
COMPUTE V_A23_R2 = 0.
IF (SUM(A23_1, A23_2) <> 100.0) V_A23_R2 = 1.




* Question A23A.


* [ERROR] The eligibility estimate must be a whole percentage from 0 through 100.
COMPUTE V_A23A_R1 = 0.
IF ((NOT MISSING(A23A) AND (A23A < 0.0 OR A23A > 100.0))) V_A23A_R1 = 1.




* Question A23B.


* [ERROR] Responses must be whole percentages from 0 through 100.
COMPUTE V_A23B_R1 = 0.
IF ((NOT MISSING(A23B) AND (A23B < 0.0 OR A23B > 100.0))) V_A23B_R1 = 1.



* [ERROR] The receive-CAR-T and do-not-receive-CAR-T categories must total 100 percent.
COMPUTE V_A23B_R2 = 0.
IF (SUM(A23B_1, A23B_2) <> 100.0) V_A23B_R2 = 1.




* Question A23.1.


* [ERROR] Responses must be whole percentages from 0 through 100.
COMPUTE V_A23_1_R1 = 0.
IF ((NOT MISSING(A23.1) AND (A23.1 < 0.0 OR A23.1 > 100.0))) V_A23_1_R1 = 1.



* [ERROR] The response-outcome categories must total 100 percent.
COMPUTE V_A23_1_R2 = 0.
IF (SUM(A23.1_1, A23.1_2, A23.1_3, A23.1_4, A23.1_5) <> 100.0) V_A23_1_R2 = 1.




* Question A24.1.
* No validation generated: Container question; response fields and their ranges are defined in A24.1_1 and A24.1_2.



* Question A24.1_1.
* No validation generated: Placeholder field has no response definition or validation evidence.



* Question A24.1_2.


* [ERROR] Displayed percentage and month response fields must remain within the documented 0-100 response scale.
COMPUTE V_A24_1_2_R1 = 0.
IF ((NOT MISSING(A24.1_2) AND (A24.1_2 < 0.0 OR A24.1_2 > 100.0))) V_A24_1_2_R1 = 1.



* [ERROR] Each displayed percentage-treatment allocation must total 100 percent.
COMPUTE V_A24_1_2_R2 = 0.
IF (SUM(A24.1_2_35, A24.1_2_36, A24.1_2_53, A24.1_2_37, A24.1_2_38, A24.1_2_39, A24.1_2_40, A24.1_2_54, A24.1_2_41, A24.1_2_42, A24.1_2_43, A24.1_2_44, A24.1_2_45, A24.1_2_46, A24.1_2_47, A24.1_2_48, A24.1_2_49, A24.1_2_50, A24.1_2_51, A24.1_2_52, A24.1_2_96, A24.1_2_97, A24.1_2_98, A24.1_2_99) <> 100.0) V_A24_1_2_R2 = 1.




* Question A24.2.
* No validation generated: Container question; response fields and their ranges are defined in A24.2_1 and A24.2_2.



* Question A24.2_1.
* No validation generated: Placeholder field has no response definition or validation evidence.



* Question A24.2_2.


* [ERROR] Displayed percentage and month response fields must remain within the documented 0-100 response scale.
COMPUTE V_A24_2_2_R1 = 0.
IF ((NOT MISSING(A24.2_2) AND (A24.2_2 < 0.0 OR A24.2_2 > 100.0))) V_A24_2_2_R1 = 1.



* [ERROR] Each displayed percentage-treatment allocation must total 100 percent.
COMPUTE V_A24_2_2_R2 = 0.
IF (SUM(A24.2_2_1, A24.2_2_2, A24.2_2_4, A24.2_2_26, A24.2_2_27, A24.2_2_5, A24.2_2_6, A24.2_2_28, A24.2_2_8, A24.2_2_9, A24.2_2_10, A24.2_2_12, A24.2_2_13, A24.2_2_15, A24.2_2_29, A24.2_2_16, A24.2_2_17, A24.2_2_18, A24.2_2_19, A24.2_2_30, A24.2_2_22, A24.2_2_31, A24.2_2_25, A24.2_2_96, A24.2_2_97, A24.2_2_98, A24.2_2_99) <> 100.0) V_A24_2_2_R2 = 1.




* Question A24.3.
* No validation generated: Container question; response fields and their ranges are defined in A24.3_1 and A24.3_2.



* Question A24.3_1.
* No validation generated: Placeholder field has no response definition or validation evidence.



* Question A24.3_2.


* [ERROR] Displayed percentage and month response fields must remain within the documented 0-100 response scale.
COMPUTE V_A24_3_2_R1 = 0.
IF ((NOT MISSING(A24.3_2) AND (A24.3_2 < 0.0 OR A24.3_2 > 100.0))) V_A24_3_2_R1 = 1.



* [ERROR] Each displayed percentage-treatment allocation must total 100 percent.
COMPUTE V_A24_3_2_R2 = 0.
IF (SUM(A24.3_2_1, A24.3_2_27, A24.3_2_2, A24.3_2_3, A24.3_2_4, A24.3_2_6, A24.3_2_7, A24.3_2_28, A24.3_2_8, A24.3_2_9, A24.3_2_12, A24.3_2_13, A24.3_2_14, A24.3_2_15, A24.3_2_16, A24.3_2_17, A24.3_2_18, A24.3_2_24, A24.3_2_25, A24.3_2_23, A24.3_2_26, A24.3_2_96, A24.3_2_97, A24.3_2_98, A24.3_2_99) <> 100.0) V_A24_3_2_R2 = 1.




* Question A24.4.
* No validation generated: Container question; response fields and their ranges are defined in A24.4_1 and A24.4_2.



* Question A24.4_1.
* No validation generated: Placeholder field has no response definition or validation evidence.



* Question A24.4_2.


* [ERROR] Displayed percentage and month response fields must remain within the documented 0-100 response scale.
COMPUTE V_A24_4_2_R1 = 0.
IF ((NOT MISSING(A24.4_2) AND (A24.4_2 < 0.0 OR A24.4_2 > 100.0))) V_A24_4_2_R1 = 1.



* [ERROR] Each displayed percentage-treatment allocation must total 100 percent.
COMPUTE V_A24_4_2_R2 = 0.
IF (SUM(A24.4_2_2, A24.4_2_29, A24.4_2_30, A24.4_2_31, A24.4_2_3, A24.4_2_4, A24.4_2_6, A24.4_2_32, A24.4_2_8, A24.4_2_24, A24.4_2_9, A24.4_2_12, A24.4_2_13, A24.4_2_14, A24.4_2_16, A24.4_2_25, A24.4_2_33, A24.4_2_26, A24.4_2_34, A24.4_2_35, A24.4_2_18, A24.4_2_36, A24.4_2_21, A24.4_2_28, A24.4_2_37, A24.4_2_38, A24.4_2_96, A24.4_2_97, A24.4_2_98, A24.4_2_99) <> 100.0) V_A24_4_2_R2 = 1.




* Question A25.


* [ERROR] Responses must be whole percentages from 0 through 100.
COMPUTE V_A25_R1 = 0.
IF ((NOT MISSING(A25) AND (A25 < 0.0 OR A25 > 100.0))) V_A25_R1 = 1.



* [ERROR] Each second-relapse treatment-outcome breakdown must total 100 percent.
COMPUTE V_A25_R2 = 0.
IF (SUM(A25_4, A25_2, A25_3, A25_1) <> 100.0) V_A25_R2 = 1.




* Question A28A.
* No validation generated: Routing-only placeholder with no respondent-entered response or validation evidence.



* Question A28B.
* No validation generated: Routing-only placeholder with no respondent-entered response or validation evidence.



* Question A29.


* [ERROR] Progression-free-survival responses must be whole numbers from 0 through 100 as documented.
COMPUTE V_A29_R1 = 0.
IF ((NOT MISSING(A29) AND (A29 < 0.0 OR A29 > 100.0))) V_A29_R1 = 1.




* Question A40.


* [ERROR] Responses must be whole percentages from 0 through 100.
COMPUTE V_A40_R1 = 0.
IF ((NOT MISSING(A40) AND (A40 < 0.0 OR A40 > 100.0))) V_A40_R1 = 1.



* [ERROR] The initial-treatment modality allocation must total 100 percent.
COMPUTE V_A40_R2 = 0.
IF (SUM(A40_1, A40_2, A40_3, A40_4, A40_5, A40_6, A40_99) <> 100.0) V_A40_R2 = 1.




* Question A41.


* [ERROR] Responses must be whole percentages from 0 through 100.
COMPUTE V_A41_R1 = 0.
IF ((NOT MISSING(A41) AND (A41 < 0.0 OR A41 > 100.0))) V_A41_R1 = 1.



* [ERROR] The autologous and allogeneic HCT allocation must total 100 percent.
COMPUTE V_A41_R2 = 0.
IF (SUM(A41_1, A41_2) <> 100.0) V_A41_R2 = 1.




* Question A41.1.


* [ERROR] Responses must be whole-number percentages from 0 through 100.
COMPUTE V_A41_1_R1 = 0.
IF ((NOT MISSING(A41.1) AND (A41.1 < 0.0 OR A41.1 > 100.0))) V_A41_1_R1 = 1.




* Question A41.2.


* [ERROR] Responses must be whole numbers from 0 through 99 months.
COMPUTE V_A41_2_R1 = 0.
IF ((NOT MISSING(A41.2) AND (A41.2 < 0.0 OR A41.2 > 99.0))) V_A41_2_R1 = 1.




* Question A42.


* [ERROR] Each timeframe response must be a whole-number percentage from 0 through 100.
COMPUTE V_A42_R1 = 0.
IF ((NOT MISSING(A42) AND (A42 < 0.0 OR A42 > 100.0))) V_A42_R1 = 1.



* [ERROR] The timeframe percentages must total 100%.
!Sum_to_var svar=A42.
COMPUTE V_A42_R2 = 0.
IF (SUM(A42_1, A42_2, A42_3, A42_4, A42_5) <> 100.0) V_A42_R2 = 1.




* Question A45.


* [ERROR] Each therapy percentage must be a whole number from 0 through 100.
COMPUTE V_A45_R1 = 0.
IF ((NOT MISSING(A45) AND (A45 < 0.0 OR A45 > 100.0))) V_A45_R1 = 1.




* Question A46.1.
* No validation generated: This is a matrix question header; the supplied component-level variables and their distinct percentage and month fields are not separately identified.



* Question A46.1_1.
* No validation generated: The supplied question contains only an identifier and provides no response format, codes, range, or other validation evidence.



* Question A46.1_2.


* [ERROR] The displayed regimen percentages must total 100% for each age group.
!Sum_to_var svar=A46.1_2.
COMPUTE V_A46_1_2_R1 = 0.
IF (SUM(A46.1_2_46, A46.1_2_47, A46.1_2_48, A46.1_2_49, A46.1_2_50, A46.1_2_51, A46.1_2_52, A46.1_2_53, A46.1_2_54, A46.1_2_55, A46.1_2_56, A46.1_2_57, A46.1_2_58, A46.1_2_59, A46.1_2_60, A46.1_2_61, A46.1_2_62, A46.1_2_63, A46.1_2_64, A46.1_2_65, A46.1_2_66, A46.1_2_67, A46.1_2_68, A46.1_2_69, A46.1_2_70, A46.1_2_71, A46.1_2_72, A46.1_2_73, A46.1_2_74, A46.1_2_75, A46.1_2_76, A46.1_2_77, A46.1_2_78, A46.1_2_79, A46.1_2_80, A46.1_2_81, A46.1_2_82, A46.1_2_83, A46.1_2_84, A46.1_2_85, A46.1_2_86, A46.1_2_96, A46.1_2_97, A46.1_2_98, A46.1_2_99) <> 100.0) V_A46_1_2_R1 = 1.




* Question A46.2.
* No validation generated: This is a matrix question header; the supplied component-level variables and their distinct percentage and month fields are not separately identified.



* Question A46.2_1.
* No validation generated: The supplied question contains only an identifier and provides no response format, codes, range, or other validation evidence.



* Question A46.2_2.


* [ERROR] The displayed regimen percentages must total 100% for each age group.
!Sum_to_var svar=A46.2_2.
COMPUTE V_A46_2_2_R1 = 0.
IF (SUM(A46.2_2_25, A46.2_2_26, A46.2_2_27, A46.2_2_28, A46.2_2_35, A46.2_2_5, A46.2_2_29, A46.2_2_11, A46.2_2_16, A46.2_2_17, A46.2_2_23, A46.2_2_30, A46.2_2_31, A46.2_2_32, A46.2_2_36, A46.2_2_33, A46.2_2_34, A46.2_2_21, A46.2_2_24, A46.2_2_10, A46.2_2_37, A46.2_2_38, A46.2_2_18, A46.2_2_39, A46.2_2_40, A46.2_2_19, A46.2_2_41, A46.2_2_42, A46.2_2_43, A46.2_2_2, A46.2_2_3, A46.2_2_4, A46.2_2_15, A46.2_2_96, A46.2_2_97, A46.2_2_98, A46.2_2_99) <> 100.0) V_A46_2_2_R1 = 1.




* Question A46.3.
* No validation generated: This is a matrix question header; the supplied component-level variables and their distinct percentage and month fields are not separately identified.



* Question A46.3_1.
* No validation generated: The supplied question contains only an identifier and provides no response format, codes, range, or other validation evidence.



* Question A46.3_2.


* [ERROR] The displayed regimen percentages must total 100% for each age group.
!Sum_to_var svar=A46.3_2.
COMPUTE V_A46_3_2_R1 = 0.
IF (SUM(A46.3_2_20, A46.3_2_21, A46.3_2_4, A46.3_2_22, A46.3_2_7, A46.3_2_23, A46.3_2_24, A46.3_2_15, A46.3_2_16, A46.3_2_25, A46.3_2_26, A46.3_2_27, A46.3_2_3, A46.3_2_28, A46.3_2_29, A46.3_2_30, A46.3_2_12, A46.3_2_11, A46.3_2_31, A46.3_2_32, A46.3_2_33, A46.3_2_34, A46.3_2_35, A46.3_2_36, A46.3_2_37, A46.3_2_38, A46.3_2_39, A46.3_2_1, A46.3_2_2, A46.3_2_5, A46.3_2_6, A46.3_2_96, A46.3_2_97, A46.3_2_98, A46.3_2_99) <> 100.0) V_A46_3_2_R1 = 1.




* Question A46.4.
* No validation generated: This is a matrix question header; the supplied component-level variables and their distinct percentage and month fields are not separately identified.



* Question A46.4_1.
* No validation generated: The supplied question contains only an identifier and provides no response format, codes, range, or other validation evidence.



* Question A46.4_2.


* [ERROR] The displayed regimen percentages must total 100% for each age group.
!Sum_to_var svar=A46.4_2.
COMPUTE V_A46_4_2_R1 = 0.
IF (SUM(A46.4_2_23, A46.4_2_24, A46.4_2_4, A46.4_2_7, A46.4_2_25, A46.4_2_26, A46.4_2_27, A46.4_2_15, A46.4_2_28, A46.4_2_16, A46.4_2_3, A46.4_2_29, A46.4_2_30, A46.4_2_31, A46.4_2_32, A46.4_2_33, A46.4_2_34, A46.4_2_12, A46.4_2_35, A46.4_2_11, A46.4_2_36, A46.4_2_40, A46.4_2_37, A46.4_2_42, A46.4_2_43, A46.4_2_44, A46.4_2_38, A46.4_2_41, A46.4_2_39, A46.4_2_1, A46.4_2_2, A46.4_2_5, A46.4_2_6, A46.4_2_96, A46.4_2_97, A46.4_2_98, A46.4_2_99) <> 100.0) V_A46_4_2_R1 = 1.




* Question A46A.


* [ERROR] The rituximab percentage must be a whole number from 0 through 100.
COMPUTE V_A46A_R1 = 0.
IF ((NOT MISSING(A46A) AND (A46A < 0.0 OR A46A > 100.0))) V_A46A_R1 = 1.




* Question A46C.


* [ERROR] Each outcome percentage must be a whole number from 0 through 100.
COMPUTE V_A46C_R1 = 0.
IF ((NOT MISSING(A46C) AND (A46C < 0.0 OR A46C > 100.0))) V_A46C_R1 = 1.



* [ERROR] Complete remission and failure-to-achieve-remission percentages must total 100%.
!Sum_to_var svar=A46C.
COMPUTE V_A46C_R2 = 0.
IF (SUM(A46C_1, A46C_2) <> 100.0) V_A46C_R2 = 1.




* Question A46D.
* No validation generated: The question identifies percentage fields but does not explicitly provide a numeric range or separately identified component variables.



* Question A46B.


* [ERROR] Each MRD-negative percentage must be a whole number from 0 through 100.
COMPUTE V_A46B_R1 = 0.
IF ((NOT MISSING(A46B) AND (A46B < 0.0 OR A46B > 100.0))) V_A46B_R1 = 1.




* Question A47.1.
* No validation generated: This is a matrix question header; the supplied component-level variables and their distinct percentage and month fields are not separately identified.



* Question A47.1_1.
* No validation generated: The supplied question contains only an identifier and provides no response format, codes, range, or other validation evidence.



* Question A47.1_2.


* [ERROR] The displayed consolidation or intensification regimen percentages must total 100% for each age group.
!Sum_to_var svar=A47.1_2.
COMPUTE V_A47_1_2_R1 = 0.
IF (SUM(A47.1_2_50, A47.1_2_51, A47.1_2_52, A47.1_2_53, A47.1_2_54, A47.1_2_55, A47.1_2_56, A47.1_2_57, A47.1_2_58, A47.1_2_59, A47.1_2_60, A47.1_2_61, A47.1_2_62, A47.1_2_63, A47.1_2_64, A47.1_2_65, A47.1_2_66, A47.1_2_67, A47.1_2_68, A47.1_2_69, A47.1_2_70, A47.1_2_71, A47.1_2_72, A47.1_2_73, A47.1_2_74, A47.1_2_75, A47.1_2_76, A47.1_2_77, A47.1_2_78, A47.1_2_79, A47.1_2_80, A47.1_2_81, A47.1_2_82, A47.1_2_83, A47.1_2_84, A47.1_2_85, A47.1_2_86, A47.1_2_87, A47.1_2_88, A47.1_2_96, A47.1_2_97, A47.1_2_98, A47.1_2_99) <> 100.0) V_A47_1_2_R1 = 1.




* Question A47.2.
* No validation generated: This is a matrix question header; the supplied component-level variables and their distinct percentage and month fields are not separately identified.



* Question A47.2_1.
* No validation generated: The supplied question contains only an identifier and provides no response format, codes, range, or other validation evidence.



* Question A47.2_2.


* [ERROR] The entered percentage allocations must total 100%.
COMPUTE V_A47_2_2_PCT_TOTAL = 0.
IF (SUM(A47.2_2_1, A47.2_2_5, A47.2_2_31, A47.2_2_32, A47.2_2_33, A47.2_2_34, A47.2_2_13, A47.2_2_19, A47.2_2_27, A47.2_2_28, A47.2_2_29, A47.2_2_30, A47.2_2_35, A47.2_2_36, A47.2_2_37, A47.2_2_38, A47.2_2_12, A47.2_2_39, A47.2_2_40, A47.2_2_23, A47.2_2_41, A47.2_2_42, A47.2_2_24, A47.2_2_43, A47.2_2_44, A47.2_2_45, A47.2_2_2, A47.2_2_3, A47.2_2_4, A47.2_2_10, A47.2_2_96, A47.2_2_97, A47.2_2_98, A47.2_2_99) <> 100.0) V_A47_2_2_PCT_TOTAL = 1.




* Question A47.3.


* [ERROR] The entered percentage allocations must total 100%.
COMPUTE V_A47_3_PCT_TOTAL = 0.
IF (SUM(A47.3) <> 100.0) V_A47_3_PCT_TOTAL = 1.




* Question A47.3_1.
* No validation generated: Parser-generated placeholder with no response data or standalone validation evidence; validation is represented by the associated A47.3 matrix.



* Question A47.3_2.


* [ERROR] The required consolidation-therapy matrix must be answered when displayed.
COMPUTE V_A47_3_2_REQUIRED = 0.
IF (MISSING(A47.3_2)) V_A47_3_2_REQUIRED = 1.



* [ERROR] The entered percentage allocations must total 100%.
COMPUTE V_A47_3_2_PCT_TOTAL = 0.
IF (SUM(A47.3_2_25, A47.3_2_26, A47.3_2_8, A47.3_2_9, A47.3_2_27, A47.3_2_28, A47.3_2_29, A47.3_2_30, A47.3_2_31, A47.3_2_21, A47.3_2_37, A47.3_2_32, A47.3_2_33, A47.3_2_34, A47.3_2_35, A47.3_2_36, A47.3_2_19, A47.3_2_18, A47.3_2_38, A47.3_2_39, A47.3_2_40, A47.3_2_41, A47.3_2_42, A47.3_2_43, A47.3_2_44, A47.3_2_45, A47.3_2_46, A47.3_2_1, A47.3_2_2, A47.3_2_3, A47.3_2_4, A47.3_2_5, A47.3_2_7, A47.3_2_10, A47.3_2_11, A47.3_2_17, A47.3_2_20, A47.3_2_96, A47.3_2_97, A47.3_2_98, A47.3_2_99) <> 100.0) V_A47_3_2_PCT_TOTAL = 1.




* Question A47.4.


* [ERROR] The entered percentage allocations must total 100%.
COMPUTE V_A47_4_PCT_TOTAL = 0.
IF (SUM(A47.4) <> 100.0) V_A47_4_PCT_TOTAL = 1.




* Question A47.4_1.
* No validation generated: Parser-generated placeholder with no response data or standalone validation evidence; validation is represented by the associated A47.4 matrix.



* Question A47.4_2.


* [ERROR] The required consolidation-therapy matrix must be answered when displayed.
COMPUTE V_A47_4_2_REQUIRED = 0.
IF (MISSING(A47.4_2)) V_A47_4_2_REQUIRED = 1.



* [ERROR] The entered percentage allocations must total 100%.
COMPUTE V_A47_4_2_PCT_TOTAL = 0.
IF (SUM(A47.4_2_25, A47.4_2_8, A47.4_2_9, A47.4_2_26, A47.4_2_27, A47.4_2_28, A47.4_2_29, A47.4_2_34, A47.4_2_24, A47.4_2_30, A47.4_2_31, A47.4_2_32, A47.4_2_33, A47.4_2_19, A47.4_2_35, A47.4_2_18, A47.4_2_36, A47.4_2_37, A47.4_2_40, A47.4_2_42, A47.4_2_43, A47.4_2_44, A47.4_2_38, A47.4_2_39, A47.4_2_41, A47.4_2_1, A47.4_2_2, A47.4_2_3, A47.4_2_5, A47.4_2_7, A47.4_2_10, A47.4_2_17, A47.4_2_22, A47.4_2_20, A47.4_2_96, A47.4_2_97, A47.4_2_98, A47.4_2_99) <> 100.0) V_A47_4_2_PCT_TOTAL = 1.




* Question A48.1.


* [ERROR] The entered percentage allocations must total 100%.
COMPUTE V_A48_1_PCT_TOTAL = 0.
IF (SUM(A48.1) <> 100.0) V_A48_1_PCT_TOTAL = 1.




* Question A48.1_1.
* No validation generated: Parser-generated placeholder with no response data or standalone validation evidence; validation is represented by the associated A48.1 matrix.



* Question A48.1_2.


* [ERROR] The required CNS-prophylaxis matrix must be answered when displayed.
COMPUTE V_A48_1_2_REQUIRED = 0.
IF (MISSING(A48.1_2)) V_A48_1_2_REQUIRED = 1.



* [ERROR] The entered percentage allocations must total 100%.
COMPUTE V_A48_1_2_PCT_TOTAL = 0.
IF (SUM(A48.1_2_8, A48.1_2_24, A48.1_2_21, A48.1_2_25, A48.1_2_10, A48.1_2_26, A48.1_2_27, A48.1_2_28, A48.1_2_29, A48.1_2_96, A48.1_2_97, A48.1_2_98, A48.1_2_99) <> 100.0) V_A48_1_2_PCT_TOTAL = 1.




* Question A48.2.


* [ERROR] The entered percentage allocations must total 100%.
COMPUTE V_A48_2_PCT_TOTAL = 0.
IF (SUM(A48.2) <> 100.0) V_A48_2_PCT_TOTAL = 1.




* Question A48.2_1.
* No validation generated: Parser-generated placeholder with no response data or standalone validation evidence; validation is represented by the associated A48.2 matrix.



* Question A48.2_2.


* [ERROR] The required CNS-prophylaxis matrix must be answered when displayed.
COMPUTE V_A48_2_2_REQUIRED = 0.
IF (MISSING(A48.2_2)) V_A48_2_2_REQUIRED = 1.



* [ERROR] The entered percentage allocations must total 100%.
COMPUTE V_A48_2_2_PCT_TOTAL = 0.
IF (SUM(A48.2_2_8, A48.2_2_25, A48.2_2_22, A48.2_2_26, A48.2_2_10, A48.2_2_27, A48.2_2_28, A48.2_2_29, A48.2_2_30, A48.2_2_96, A48.2_2_97, A48.2_2_98, A48.2_2_99) <> 100.0) V_A48_2_2_PCT_TOTAL = 1.




* Question A48.3.


* [ERROR] The entered percentage allocations must total 100%.
COMPUTE V_A48_3_PCT_TOTAL = 0.
IF (SUM(A48.3) <> 100.0) V_A48_3_PCT_TOTAL = 1.




* Question A48.3_1.
* No validation generated: Parser-generated placeholder with no response data or standalone validation evidence; validation is represented by the associated A48.3 matrix.



* Question A48.3_2.


* [ERROR] The required CNS-prophylaxis matrix must be answered when displayed.
COMPUTE V_A48_3_2_REQUIRED = 0.
IF (MISSING(A48.3_2)) V_A48_3_2_REQUIRED = 1.



* [ERROR] The entered percentage allocations must total 100%.
COMPUTE V_A48_3_2_PCT_TOTAL = 0.
IF (SUM(A48.3_2_13, A48.3_2_14, A48.3_2_9, A48.3_2_10, A48.3_2_3, A48.3_2_4, A48.3_2_15, A48.3_2_16, A48.3_2_17, A48.3_2_96, A48.3_2_97, A48.3_2_98, A48.3_2_99) <> 100.0) V_A48_3_2_PCT_TOTAL = 1.




* Question A48.4.


* [ERROR] The entered percentage allocations must total 100%.
COMPUTE V_A48_4_PCT_TOTAL = 0.
IF (SUM(A48.4) <> 100.0) V_A48_4_PCT_TOTAL = 1.




* Question A48.4_1.
* No validation generated: Parser-generated placeholder with no response data or standalone validation evidence; validation is represented by the associated A48.4 matrix.



* Question A48.4_2.


* [ERROR] The required CNS-prophylaxis matrix must be answered when displayed.
COMPUTE V_A48_4_2_REQUIRED = 0.
IF (MISSING(A48.4_2)) V_A48_4_2_REQUIRED = 1.



* [ERROR] The entered percentage allocations must total 100%.
COMPUTE V_A48_4_2_PCT_TOTAL = 0.
IF (SUM(A48.4_2_12, A48.4_2_13, A48.4_2_9, A48.4_2_10, A48.4_2_3, A48.4_2_4, A48.4_2_14, A48.4_2_15, A48.4_2_16, A48.4_2_96, A48.4_2_97, A48.4_2_98, A48.4_2_99) <> 100.0) V_A48_4_2_PCT_TOTAL = 1.




* Question A49.1.


* [ERROR] The entered percentage allocations must total 100%.
COMPUTE V_A49_1_PCT_TOTAL = 0.
IF (SUM(A49.1) <> 100.0) V_A49_1_PCT_TOTAL = 1.




* Question A49.1_1.
* No validation generated: Parser-generated placeholder with no response data or standalone validation evidence; validation is represented by the associated A49.1 matrix.



* Question A49.1_2.


* [ERROR] The required maintenance-therapy matrix must be answered when displayed.
COMPUTE V_A49_1_2_REQUIRED = 0.
IF (MISSING(A49.1_2)) V_A49_1_2_REQUIRED = 1.



* [ERROR] The entered percentage allocations must total 100%.
COMPUTE V_A49_1_2_PCT_TOTAL = 0.
IF (SUM(A49.1_2_40, A49.1_2_41, A49.1_2_42, A49.1_2_43, A49.1_2_44, A49.1_2_45, A49.1_2_46, A49.1_2_47, A49.1_2_48, A49.1_2_49, A49.1_2_50, A49.1_2_51, A49.1_2_52, A49.1_2_53, A49.1_2_54, A49.1_2_55, A49.1_2_56, A49.1_2_57, A49.1_2_58, A49.1_2_59, A49.1_2_60, A49.1_2_96, A49.1_2_97, A49.1_2_98, A49.1_2_99) <> 100.0) V_A49_1_2_PCT_TOTAL = 1.




* Question A49.2.


* [ERROR] The entered percentage allocations must total 100%.
COMPUTE V_A49_2_PCT_TOTAL = 0.
IF (SUM(A49.2) <> 100.0) V_A49_2_PCT_TOTAL = 1.




* Question A49.2_1.
* No validation generated: Parser-generated placeholder with no response data or standalone validation evidence; validation is represented by the associated A49.2 matrix.



* Question A49.2_2.


* [ERROR] The required maintenance-therapy matrix must be answered when displayed.
COMPUTE V_A49_2_2_REQUIRED = 0.
IF (MISSING(A49.2_2)) V_A49_2_2_REQUIRED = 1.



* [ERROR] The entered percentage allocations must total 100%.
COMPUTE V_A49_2_2_PCT_TOTAL = 0.
IF (SUM(A49.2_2_28, A49.2_2_29, A49.2_2_30, A49.2_2_18, A49.2_2_26, A49.2_2_25, A49.2_2_27, A49.2_2_11, A49.2_2_31, A49.2_2_32, A49.2_2_23, A49.2_2_33, A49.2_2_34, A49.2_2_24, A49.2_2_35, A49.2_2_36, A49.2_2_37, A49.2_2_14, A49.2_2_20, A49.2_2_21, A49.2_2_22, A49.2_2_96, A49.2_2_97, A49.2_2_98, A49.2_2_99) <> 100.0) V_A49_2_2_PCT_TOTAL = 1.




* Question A49.3.
* No validation generated: Parent display question; response fields and their validation evidence are represented by A49.3_1 and A49.3_2.



* Question A49.3_1.
* No validation generated: Canonical field has no response definition or validation evidence beyond its parent display instruction.



* Question A49.3_2.


* [ERROR] Percent-of-patients entries must be whole numbers from 0 through 100.
COMPUTE V_A49_3_2_RANGE_PERCENT = 0.
IF ((NOT MISSING(A49.3_2) AND (A49.3_2 < 0.0 OR A49.3_2 > 100.0))) V_A49_3_2_RANGE_PERCENT = 1.



* [ERROR] Actual-month entries must be whole numbers from 1 through 99.
COMPUTE V_A49_3_2_RANGE_MONTHS = 0.
IF ((NOT MISSING(A49.3_2) AND (A49.3_2 < 1.0 OR A49.3_2 > 99.0))) V_A49_3_2_RANGE_MONTHS = 1.



* [ERROR] Displayed percentage allocations must total 100 percent.
COMPUTE V_A49_3_2_TOTAL = 0.
IF (SUM(A49.3_2_8, A49.3_2_15, A49.3_2_16, A49.3_2_10, A49.3_2_9, A49.3_2_17, A49.3_2_18, A49.3_2_19, A49.3_2_5, A49.3_2_20, A49.3_2_21, A49.3_2_22, A49.3_2_23, A49.3_2_24, A49.3_2_25, A49.3_2_26, A49.3_2_27, A49.3_2_28, A49.3_2_1, A49.3_2_2, A49.3_2_3, A49.3_2_4, A49.3_2_6, A49.3_2_7, A49.3_2_11, A49.3_2_12, A49.3_2_96, A49.3_2_97, A49.3_2_98, A49.3_2_99) <> 100.0) V_A49_3_2_TOTAL = 1.




* Question A49.4.
* No validation generated: Parent display question; response fields and their validation evidence are represented by A49.4_1 and A49.4_2.



* Question A49.4_1.
* No validation generated: Canonical field has no response definition or validation evidence beyond its parent display instruction.



* Question A49.4_2.


* [ERROR] Percent-of-patients entries must be whole numbers from 0 through 100.
COMPUTE V_A49_4_2_RANGE_PERCENT = 0.
IF ((NOT MISSING(A49.4_2) AND (A49.4_2 < 0.0 OR A49.4_2 > 100.0))) V_A49_4_2_RANGE_PERCENT = 1.



* [ERROR] Actual-month entries must be whole numbers from 1 through 99.
COMPUTE V_A49_4_2_RANGE_MONTHS = 0.
IF ((NOT MISSING(A49.4_2) AND (A49.4_2 < 1.0 OR A49.4_2 > 99.0))) V_A49_4_2_RANGE_MONTHS = 1.



* [ERROR] Displayed percentage allocations must total 100 percent.
COMPUTE V_A49_4_2_TOTAL = 0.
IF (SUM(A49.4_2_8, A49.4_2_16, A49.4_2_17, A49.4_2_10, A49.4_2_9, A49.4_2_18, A49.4_2_19, A49.4_2_20, A49.4_2_5, A49.4_2_21, A49.4_2_22, A49.4_2_25, A49.4_2_27, A49.4_2_28, A49.4_2_29, A49.4_2_23, A49.4_2_24, A49.4_2_26, A49.4_2_1, A49.4_2_2, A49.4_2_3, A49.4_2_4, A49.4_2_6, A49.4_2_7, A49.4_2_11, A49.4_2_12, A49.4_2_15, A49.4_2_96, A49.4_2_97, A49.4_2_98, A49.4_2_99) <> 100.0) V_A49_4_2_TOTAL = 1.




* Question A50.


* [ERROR] Treatment-outcome percentages must be whole numbers from 0 through 100.
COMPUTE V_A50_RANGE = 0.
IF ((NOT MISSING(A50) AND (A50 < 0.0 OR A50 > 100.0))) V_A50_RANGE = 1.



* [ERROR] Each displayed treatment-outcome distribution must total 100 percent.
COMPUTE V_A50_TOTAL = 0.
IF (SUM(A50_4, A50_2, A50_3, A50_1) <> 100.0) V_A50_TOTAL = 1.




* Question A51.


* [ERROR] Timing-distribution percentages must be whole numbers from 0 through 100.
COMPUTE V_A51_RANGE = 0.
IF ((NOT MISSING(A51) AND (A51 < 0.0 OR A51 > 100.0))) V_A51_RANGE = 1.



* [ERROR] Each timing distribution must total 100 percent.
COMPUTE V_A51_TOTAL = 0.
IF (SUM(A51_1, A51_2, A51_3) <> 100.0) V_A51_TOTAL = 1.




* Question A52.


* [ERROR] Therapy-modality percentages must be whole numbers from 0 through 100.
COMPUTE V_A52_RANGE = 0.
IF ((NOT MISSING(A52) AND (A52 < 0.0 OR A52 > 100.0))) V_A52_RANGE = 1.



* [ERROR] Each therapy-modality distribution must total 100 percent.
COMPUTE V_A52_TOTAL = 0.
IF (SUM(A52_2, A52_3, A52_4, A52_5, A52_6, A52_99) <> 100.0) V_A52_TOTAL = 1.




* Question A53.


* [ERROR] HCT-type percentages must be whole numbers from 0 through 100.
COMPUTE V_A53_RANGE = 0.
IF ((NOT MISSING(A53) AND (A53 < 0.0 OR A53 > 100.0))) V_A53_RANGE = 1.



* [ERROR] Autologous and allogeneic HCT percentages must total 100 percent.
COMPUTE V_A53_TOTAL = 0.
IF (SUM(A53_1, A53_2) <> 100.0) V_A53_TOTAL = 1.




* Question A53A.


* [ERROR] CAR-T physical-eligibility percentage must be a whole number from 0 through 100.
COMPUTE V_A53A_RANGE = 0.
IF ((NOT MISSING(A53A) AND (A53A < 0.0 OR A53A > 100.0))) V_A53A_RANGE = 1.




* Question A53B.


* [ERROR] CAR-T receipt percentages must be whole numbers from 0 through 100.
COMPUTE V_A53B_RANGE = 0.
IF ((NOT MISSING(A53B) AND (A53B < 0.0 OR A53B > 100.0))) V_A53B_RANGE = 1.



* [ERROR] CAR-T receipt and non-receipt percentages must total 100 percent.
COMPUTE V_A53B_TOTAL = 0.
IF (SUM(A53B_1, A53B_2) <> 100.0) V_A53B_TOTAL = 1.




* Question A53.1.


* [ERROR] Response-outcome percentages must be whole numbers from 0 through 100.
COMPUTE V_A53_1_RANGE = 0.
IF ((NOT MISSING(A53.1) AND (A53.1 < 0.0 OR A53.1 > 100.0))) V_A53_1_RANGE = 1.



* [ERROR] The response-outcome distribution must total 100 percent.
COMPUTE V_A53_1_TOTAL = 0.
IF (SUM(A53.1_1, A53.1_2, A53.1_3, A53.1_4, A53.1_5) <> 100.0) V_A53_1_TOTAL = 1.




* Question A54.1.
* No validation generated: Parent display question; response fields and their validation evidence are represented by A54.1_1 and A54.1_2.



* Question A54.1_1.
* No validation generated: Canonical field has no response definition or validation evidence beyond its parent display instruction.



* Question A54.1_2.


* [ERROR] Percent-of-patients entries must be whole numbers from 0 through 100.
COMPUTE V_A54_1_2_RANGE_PERCENT = 0.
IF ((NOT MISSING(A54.1_2) AND (A54.1_2 < 0.0 OR A54.1_2 > 100.0))) V_A54_1_2_RANGE_PERCENT = 1.



* [ERROR] Actual-month entries must be whole numbers from 1 through 99.
COMPUTE V_A54_1_2_RANGE_MONTHS = 0.
IF ((NOT MISSING(A54.1_2) AND (A54.1_2 < 1.0 OR A54.1_2 > 99.0))) V_A54_1_2_RANGE_MONTHS = 1.



* [ERROR] Displayed percentage allocations must total 100 percent.
COMPUTE V_A54_1_2_TOTAL = 0.
IF (SUM(A54.1_2_45, A54.1_2_46, A54.1_2_47, A54.1_2_93, A54.1_2_48, A54.1_2_49, A54.1_2_94, A54.1_2_50, A54.1_2_51, A54.1_2_52, A54.1_2_53, A54.1_2_54, A54.1_2_55, A54.1_2_56, A54.1_2_57, A54.1_2_58, A54.1_2_59, A54.1_2_60, A54.1_2_61, A54.1_2_62, A54.1_2_63, A54.1_2_64, A54.1_2_65, A54.1_2_66, A54.1_2_67, A54.1_2_68, A54.1_2_69, A54.1_2_70, A54.1_2_71, A54.1_2_72, A54.1_2_73, A54.1_2_74, A54.1_2_75, A54.1_2_76, A54.1_2_77, A54.1_2_78, A54.1_2_79, A54.1_2_80, A54.1_2_81, A54.1_2_82, A54.1_2_83, A54.1_2_84, A54.1_2_85, A54.1_2_86, A54.1_2_87, A54.1_2_88, A54.1_2_89, A54.1_2_90, A54.1_2_91, A54.1_2_92, A54.1_2_96, A54.1_2_97, A54.1_2_98, A54.1_2_99) <> 100.0) V_A54_1_2_TOTAL = 1.




* Question A54.2.
* No validation generated: Parent display question; response fields and their validation evidence are represented by A54.2_1 and A54.2_2.



* Question A54.2_1.
* No validation generated: Canonical field has no response definition or validation evidence beyond its parent display instruction.



* Question A54.2_2.


* [ERROR] Percent-of-patients entries must be whole numbers from 0 through 100.
COMPUTE V_A54_2_2_RANGE_PERCENT = 0.
IF ((NOT MISSING(A54.2_2) AND (A54.2_2 < 0.0 OR A54.2_2 > 100.0))) V_A54_2_2_RANGE_PERCENT = 1.



* [ERROR] Actual-month entries must be whole numbers from 1 through 99.
COMPUTE V_A54_2_2_RANGE_MONTHS = 0.
IF ((NOT MISSING(A54.2_2) AND (A54.2_2 < 1.0 OR A54.2_2 > 99.0))) V_A54_2_2_RANGE_MONTHS = 1.



* [ERROR] Displayed percentage allocations must total 100 percent.
COMPUTE V_A54_2_2_TOTAL = 0.
IF (SUM(A54.2_2_1, A54.2_2_2, A54.2_2_3, A54.2_2_4, A54.2_2_39, A54.2_2_5, A54.2_2_6, A54.2_2_7, A54.2_2_8, A54.2_2_9, A54.2_2_10, A54.2_2_11, A54.2_2_12, A54.2_2_13, A54.2_2_40, A54.2_2_14, A54.2_2_15, A54.2_2_16, A54.2_2_17, A54.2_2_18, A54.2_2_19, A54.2_2_20, A54.2_2_21, A54.2_2_22, A54.2_2_41, A54.2_2_23, A54.2_2_24, A54.2_2_25, A54.2_2_26, A54.2_2_27, A54.2_2_28, A54.2_2_29, A54.2_2_30, A54.2_2_31, A54.2_2_42, A54.2_2_32, A54.2_2_33, A54.2_2_34, A54.2_2_35, A54.2_2_36, A54.2_2_37, A54.2_2_38, A54.2_2_96, A54.2_2_97, A54.2_2_98, A54.2_2_99) <> 100.0) V_A54_2_2_TOTAL = 1.




* Question A54.3.
* No validation generated: Parent display question; response fields and their validation evidence are represented by A54.3_1 and A54.3_2.



* Question A54.3_1.
* No validation generated: Canonical field has no response definition or validation evidence beyond its parent display instruction.



* Question A54.3_2.


* [ERROR] Percent-of-patients entries must be whole numbers from 0 through 100.
COMPUTE V_A54_3_2_RANGE_PERCENT = 0.
IF ((NOT MISSING(A54.3_2) AND (A54.3_2 < 0.0 OR A54.3_2 > 100.0))) V_A54_3_2_RANGE_PERCENT = 1.



* [ERROR] Actual-month entries must be whole numbers from 1 through 99.
COMPUTE V_A54_3_2_RANGE_MONTHS = 0.
IF ((NOT MISSING(A54.3_2) AND (A54.3_2 < 1.0 OR A54.3_2 > 99.0))) V_A54_3_2_RANGE_MONTHS = 1.



* [ERROR] Displayed percentage allocations must total 100 percent.
COMPUTE V_A54_3_2_TOTAL = 0.
IF (SUM(A54.3_2_1, A54.3_2_2, A54.3_2_3, A54.3_2_4, A54.3_2_5, A54.3_2_6, A54.3_2_7, A54.3_2_8, A54.3_2_9, A54.3_2_10, A54.3_2_11, A54.3_2_12, A54.3_2_13, A54.3_2_14, A54.3_2_15, A54.3_2_16, A54.3_2_17, A54.3_2_18, A54.3_2_19, A54.3_2_20, A54.3_2_21, A54.3_2_22, A54.3_2_23, A54.3_2_24, A54.3_2_25, A54.3_2_26, A54.3_2_27, A54.3_2_28, A54.3_2_29, A54.3_2_30, A54.3_2_31, A54.3_2_32, A54.3_2_33, A54.3_2_34, A54.3_2_35, A54.3_2_37, A54.3_2_38, A54.3_2_39, A54.3_2_40, A54.3_2_41, A54.3_2_42, A54.3_2_43, A54.3_2_96, A54.3_2_97, A54.3_2_98, A54.3_2_99) <> 100.0) V_A54_3_2_TOTAL = 1.




* Question A54.4.
* No validation generated: Parent display question; response fields and their validation evidence are represented by A54.4_1 and A54.4_2.



* Question A54.4_1.
* No validation generated: Canonical field has no response definition or validation evidence beyond its parent display instruction.



* Question A54.4_2.


* [ERROR] Percent-of-patients entries must be whole numbers from 0 through 100.
COMPUTE V_A54_4_2_RANGE_PERCENT = 0.
IF ((NOT MISSING(A54.4_2) AND (A54.4_2 < 0.0 OR A54.4_2 > 100.0))) V_A54_4_2_RANGE_PERCENT = 1.



* [ERROR] Actual-month entries must be whole numbers from 1 through 99.
COMPUTE V_A54_4_2_RANGE_MONTHS = 0.
IF ((NOT MISSING(A54.4_2) AND (A54.4_2 < 1.0 OR A54.4_2 > 99.0))) V_A54_4_2_RANGE_MONTHS = 1.



* [ERROR] Displayed percentage allocations must total 100 percent.
COMPUTE V_A54_4_2_TOTAL = 0.
IF (SUM(A54.4_2_1, A54.4_2_2, A54.4_2_3, A54.4_2_4, A54.4_2_5, A54.4_2_6, A54.4_2_7, A54.4_2_8, A54.4_2_9, A54.4_2_10, A54.4_2_11, A54.4_2_12, A54.4_2_13, A54.4_2_14, A54.4_2_15, A54.4_2_16, A54.4_2_17, A54.4_2_18, A54.4_2_19, A54.4_2_20, A54.4_2_21, A54.4_2_22, A54.4_2_23, A54.4_2_24, A54.4_2_25, A54.4_2_26, A54.4_2_27, A54.4_2_36, A54.4_2_34, A54.4_2_35, A54.4_2_28, A54.4_2_29, A54.4_2_30, A54.4_2_31, A54.4_2_32, A54.4_2_33, A54.4_2_96, A54.4_2_97, A54.4_2_98, A54.4_2_99) <> 100.0) V_A54_4_2_TOTAL = 1.




* Question A54A.
* No validation generated: The model proposed only incomplete rules; they were omitted during deterministic validation.



* Question A55.


* [ERROR] Required treatment-outcome percentages must be answered.
COMPUTE V_A55_R1 = 0.
IF (MISSING(A55)) V_A55_R1 = 1.



* [ERROR] Each treatment-outcome breakdown must total 100 percent.
!Sum_to_var svar=A55.
COMPUTE V_A55_R3 = 0.
IF (SUM(A55_4, A55_2, A55_3, A55_1) <> 100.0) V_A55_R3 = 1.




* Question A56.


* [ERROR] Required timing percentages must be answered.
COMPUTE V_A56_R1 = 0.
IF (MISSING(A56)) V_A56_R1 = 1.



* [ERROR] The timing-category percentages must total 100 percent.
!Sum_to_var svar=A56.
COMPUTE V_A56_R3 = 0.
IF (SUM(A56_1, A56_2, A56_3, A56_57) <> 100.0) V_A56_R3 = 1.




* Question A57.


* [ERROR] Required third-line modality percentages must be answered.
COMPUTE V_A57_R1 = 0.
IF (MISSING(A57)) V_A57_R1 = 1.



* [ERROR] Third-line modality percentages must total 100 percent.
!Sum_to_var svar=A57.
COMPUTE V_A57_R3 = 0.
IF (SUM(A57_2, A57_3, A57_4, A57_5, A57_6, A57_99) <> 100.0) V_A57_R3 = 1.




* Question A58.


* [ERROR] Required HCT percentages must be answered.
COMPUTE V_A58_R1 = 0.
IF (MISSING(A58)) V_A58_R1 = 1.



* [ERROR] HCT percentages must total 100 percent.
!Sum_to_var svar=A58.
COMPUTE V_A58_R3 = 0.
IF (SUM(A58_1, A58_2) <> 100.0) V_A58_R3 = 1.




* Question A58A.
* No validation generated: The model proposed only incomplete rules; they were omitted during deterministic validation.



* Question A58B.


* [ERROR] Required CAR-T outcome percentages must be answered.
COMPUTE V_A58B_R1 = 0.
IF (MISSING(A58B)) V_A58B_R1 = 1.



* [ERROR] The two CAR-T outcome percentages must total 100 percent.
!Sum_to_var svar=A58B.
COMPUTE V_A58B_R3 = 0.
IF (SUM(A58B_1, A58B_2) <> 100.0) V_A58B_R3 = 1.




* Question A58.1.


* [ERROR] Required response-outcome percentages must be answered.
COMPUTE V_A58_1_R1 = 0.
IF (MISSING(A58.1)) V_A58_1_R1 = 1.



* [ERROR] Response-outcome percentages must total 100 percent.
!Sum_to_var svar=A58.1.
COMPUTE V_A58_1_R3 = 0.
IF (SUM(A58.1_1, A58.1_2, A58.1_3, A58.1_4, A58.1_5) <> 100.0) V_A58_1_R3 = 1.




* Question A59.1.
* No validation generated: The question describes row-level percentage/month consistency checks, but the canonical batch does not expose the underlying row and column variables needed to express them safely.



* Question A59.1_1.
* No validation generated: This is an unlabeled structural placeholder with no response definition or validation evidence.



* Question A59.1_2.


* [ERROR] Required regimen-grid responses must be answered.
COMPUTE V_A59_1_2_R1 = 0.
IF (MISSING(A59.1_2)) V_A59_1_2_R1 = 1.



* [ERROR] The regimen percentage allocations must total 100 percent for each displayed population.
!Sum_to_var svar=A59.1_2.
COMPUTE V_A59_1_2_R2 = 0.
IF (SUM(A59.1_2_50, A59.1_2_51, A59.1_2_52, A59.1_2_103, A59.1_2_53, A59.1_2_54, A59.1_2_104, A59.1_2_55, A59.1_2_56, A59.1_2_57, A59.1_2_58, A59.1_2_59, A59.1_2_60, A59.1_2_61, A59.1_2_62, A59.1_2_63, A59.1_2_64, A59.1_2_65, A59.1_2_66, A59.1_2_67, A59.1_2_68, A59.1_2_69, A59.1_2_70, A59.1_2_71, A59.1_2_72, A59.1_2_73, A59.1_2_74, A59.1_2_75, A59.1_2_76, A59.1_2_77, A59.1_2_78, A59.1_2_79, A59.1_2_80, A59.1_2_81, A59.1_2_82, A59.1_2_83, A59.1_2_84, A59.1_2_85, A59.1_2_86, A59.1_2_87, A59.1_2_88, A59.1_2_90, A59.1_2_91, A59.1_2_92, A59.1_2_93, A59.1_2_94, A59.1_2_95, A59.1_2_100, A59.1_2_101, A59.1_2_102, A59.1_2_96, A59.1_2_97, A59.1_2_98, A59.1_2_99) <> 100.0) V_A59_1_2_R2 = 1.




* Question A59.2.
* No validation generated: The question describes row-level percentage/month consistency checks, but the canonical batch does not expose the underlying row and column variables needed to express them safely.



* Question A59.2_1.
* No validation generated: This is an unlabeled structural placeholder with no response definition or validation evidence.



* Question A59.2_2.


* [ERROR] Required regimen-grid responses must be answered.
COMPUTE V_A59_2_2_R1 = 0.
IF (MISSING(A59.2_2)) V_A59_2_2_R1 = 1.



* [ERROR] The regimen percentage allocations must total 100 percent for each displayed population.
!Sum_to_var svar=A59.2_2.
COMPUTE V_A59_2_2_R2 = 0.
IF (SUM(A59.2_2_1, A59.2_2_2, A59.2_2_3, A59.2_2_4, A59.2_2_40, A59.2_2_5, A59.2_2_6, A59.2_2_7, A59.2_2_8, A59.2_2_9, A59.2_2_10, A59.2_2_11, A59.2_2_12, A59.2_2_13, A59.2_2_41, A59.2_2_14, A59.2_2_15, A59.2_2_16, A59.2_2_17, A59.2_2_18, A59.2_2_19, A59.2_2_20, A59.2_2_21, A59.2_2_22, A59.2_2_42, A59.2_2_23, A59.2_2_24, A59.2_2_25, A59.2_2_26, A59.2_2_27, A59.2_2_28, A59.2_2_29, A59.2_2_30, A59.2_2_31, A59.2_2_32, A59.2_2_43, A59.2_2_33, A59.2_2_34, A59.2_2_35, A59.2_2_36, A59.2_2_37, A59.2_2_38, A59.2_2_39, A59.2_2_96, A59.2_2_97, A59.2_2_98, A59.2_2_99) <> 100.0) V_A59_2_2_R2 = 1.




* Question A59.3.
* No validation generated: The question describes row-level percentage/month consistency checks, but the canonical batch does not expose the underlying row and column variables needed to express them safely.



* Question A59.3_1.
* No validation generated: This is an unlabeled structural placeholder with no response definition or validation evidence.



* Question A59.3_2.


* [ERROR] Required regimen-grid responses must be answered.
COMPUTE V_A59_3_2_R1 = 0.
IF (MISSING(A59.3_2)) V_A59_3_2_R1 = 1.



* [ERROR] The regimen percentage allocations must total 100 percent for each displayed population.
!Sum_to_var svar=A59.3_2.
COMPUTE V_A59_3_2_R2 = 0.
IF (SUM(A59.3_2_1, A59.3_2_2, A59.3_2_3, A59.3_2_4, A59.3_2_5, A59.3_2_6, A59.3_2_7, A59.3_2_8, A59.3_2_9, A59.3_2_10, A59.3_2_11, A59.3_2_12, A59.3_2_13, A59.3_2_14, A59.3_2_15, A59.3_2_16, A59.3_2_17, A59.3_2_18, A59.3_2_19, A59.3_2_20, A59.3_2_21, A59.3_2_22, A59.3_2_23, A59.3_2_24, A59.3_2_25, A59.3_2_26, A59.3_2_27, A59.3_2_28, A59.3_2_29, A59.3_2_30, A59.3_2_31, A59.3_2_32, A59.3_2_33, A59.3_2_34, A59.3_2_35, A59.3_2_36, A59.3_2_37, A59.3_2_38, A59.3_2_39, A59.3_2_40, A59.3_2_41, A59.3_2_42, A59.3_2_43, A59.3_2_44, A59.3_2_96, A59.3_2_97, A59.3_2_98, A59.3_2_99) <> 100.0) V_A59_3_2_R2 = 1.




* Question A59.4.
* No validation generated: The question describes row-level percentage/month consistency checks, but the canonical batch does not expose the underlying row and column variables needed to express them safely.



* Question A59.4_1.
* No validation generated: This is an unlabeled structural placeholder with no response definition or validation evidence.



* Question A59.4_2.


* [ERROR] Required regimen-grid responses must be answered.
COMPUTE V_A59_4_2_R1 = 0.
IF (MISSING(A59.4_2)) V_A59_4_2_R1 = 1.



* [ERROR] The regimen percentage allocations must total 100 percent for each displayed population.
!Sum_to_var svar=A59.4_2.
COMPUTE V_A59_4_2_R2 = 0.
IF (SUM(A59.4_2_1, A59.4_2_2, A59.4_2_3, A59.4_2_4, A59.4_2_5, A59.4_2_6, A59.4_2_7, A59.4_2_8, A59.4_2_9, A59.4_2_10, A59.4_2_11, A59.4_2_12, A59.4_2_13, A59.4_2_14, A59.4_2_15, A59.4_2_16, A59.4_2_17, A59.4_2_18, A59.4_2_19, A59.4_2_20, A59.4_2_21, A59.4_2_22, A59.4_2_23, A59.4_2_24, A59.4_2_25, A59.4_2_26, A59.4_2_34, A59.4_2_35, A59.4_2_38, A59.4_2_36, A59.4_2_37, A59.4_2_27, A59.4_2_28, A59.4_2_29, A59.4_2_30, A59.4_2_31, A59.4_2_32, A59.4_2_33, A59.4_2_96, A59.4_2_97, A59.4_2_98, A59.4_2_99) <> 100.0) V_A59_4_2_R2 = 1.




* Question A60.


* [ERROR] Required second-relapse treatment-outcome percentages must be answered.
COMPUTE V_A60_R1 = 0.
IF (MISSING(A60)) V_A60_R1 = 1.



* [ERROR] Each second-relapse treatment-outcome breakdown must total 100 percent.
!Sum_to_var svar=A60.
COMPUTE V_A60_R3 = 0.
IF (SUM(A60_4, A60_2, A60_3, A60_1) <> 100.0) V_A60_R3 = 1.




* Question A60.1.


* [ERROR] Required formulation percentages must be answered.
COMPUTE V_A60_1_R1 = 0.
IF (MISSING(A60.1)) V_A60_1_R1 = 1.



* [ERROR] Formulation percentages must total 100 percent.
!Sum_to_var svar=A60.1.
COMPUTE V_A60_1_R3 = 0.
IF (SUM(A60.1_1, A60.1_2, A60.1_3, A60.1_4, A60.1_5, A60.1_6, A60.1_7, A60.1_9, A60.1_8) <> 100.0) V_A60_1_R3 = 1.




* Question A60.2.
* No validation generated: The question contains percentage and duration cells, but the canonical batch does not expose separate cell variables needed to apply the distinct 0-100 and 1-99 ranges safely.



* Question A61.
* No validation generated: The model proposed only incomplete rules; they were omitted during deterministic validation.



* Question A62.
* No validation generated: The canonical text provides only a display condition and no response definition, required status, valid codes, or numeric bounds.



* Question A63.


* [ERROR] Progression-free survival entries must be whole numbers from 0 through 100 months.
COMPUTE V_A63_R1 = 0.
IF ((NOT MISSING(A63) AND NOT ANY(A63, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100))) V_A63_R1 = 1.



* [ERROR] Validate the newly diagnosed pediatric entry when A40_1_1 is below 100.
COMPUTE V_A63_R2 = 0.
IF (((A40_1_1 < 100) AND (MISSING(A63))) OR ((NOT (A40_1_1 < 100)) AND (NOT MISSING(A63)))) V_A63_R2 = 1.



* [ERROR] Validate the newly diagnosed pediatric entry when A40_1_1 equals 100 and A41.1_1 is greater than zero.
COMPUTE V_A63_R3 = 0.
IF (((A40_1_1 = 100 AND A41.1_1 > 0) AND (MISSING(A63))) OR ((NOT (A40_1_1 = 100 AND A41.1_1 > 0)) AND (NOT MISSING(A63)))) V_A63_R3 = 1.



* [ERROR] Validate the first relapse pediatric entry when A50_1_4 is greater than zero.
COMPUTE V_A63_R4 = 0.
IF (((A50_1_4 > 0) AND (MISSING(A63))) OR ((NOT (A50_1_4 > 0)) AND (NOT MISSING(A63)))) V_A63_R4 = 1.



* [ERROR] Validate the second relapse pediatric entry when A55_1_4 is greater than zero.
COMPUTE V_A63_R5 = 0.
IF (((A55_1_4 > 0) AND (MISSING(A63))) OR ((NOT (A55_1_4 > 0)) AND (NOT MISSING(A63)))) V_A63_R5 = 1.



* [ERROR] Validate the newly diagnosed adult and AYA entry when A40_2_1 is below 100.
COMPUTE V_A63_R6 = 0.
IF (((A40_2_1 < 100) AND (MISSING(A63))) OR ((NOT (A40_2_1 < 100)) AND (NOT MISSING(A63)))) V_A63_R6 = 1.



* [ERROR] Validate the newly diagnosed adult and AYA entry when A40_2_1 equals 100 and A41.1_2 is greater than zero.
COMPUTE V_A63_R7 = 0.
IF (((A40_2_1 = 100 AND A41.1_2 > 0) AND (MISSING(A63))) OR ((NOT (A40_2_1 = 100 AND A41.1_2 > 0)) AND (NOT MISSING(A63)))) V_A63_R7 = 1.



* [ERROR] Validate the first relapse adult and AYA entry when A50_2_4 is greater than zero.
COMPUTE V_A63_R8 = 0.
IF (((A50_2_4 > 0) AND (MISSING(A63))) OR ((NOT (A50_2_4 > 0)) AND (NOT MISSING(A63)))) V_A63_R8 = 1.



* [ERROR] Validate the second relapse adult and AYA entry when A55_2_4 is greater than zero.
COMPUTE V_A63_R9 = 0.
IF (((A55_2_4 > 0) AND (MISSING(A63))) OR ((NOT (A55_2_4 > 0)) AND (NOT MISSING(A63)))) V_A63_R9 = 1.




* Question A64.


* [ERROR] A response is required for the pediatric ALL age-definition question.
COMPUTE V_A64_R1 = 0.
IF (MISSING(A64)) V_A64_R1 = 1.



* [ERROR] Only the documented pediatric ALL age-definition codes are valid.
COMPUTE V_A64_R2 = 0.
IF ((NOT MISSING(A64) AND NOT ANY(A64, 1, 2, 3, 9))) V_A64_R2 = 1.




* Question A65.


* [ERROR] A response is required for the adult ALL age-definition question.
COMPUTE V_A65_R1 = 0.
IF (MISSING(A65)) V_A65_R1 = 1.



* [ERROR] Only the documented adult ALL age-definition codes are valid.
COMPUTE V_A65_R2 = 0.
IF ((NOT MISSING(A65) AND NOT ANY(A65, 1, 2, 3, 9))) V_A65_R2 = 1.




* Question A66.


* [INFO] Validate the optional open-ended response as text, with no response required.
!String svar=A66.
COMPUTE V_A66_R1 = 0.
IF (MISSING(A66)) V_A66_R1 = 1.




* Question D1.


* [ERROR] One state or Washington, DC selection is required.
COMPUTE V_D1_R1 = 0.
IF (MISSING(D1)) V_D1_R1 = 1.




* Question D2.


* [ERROR] A re-contact consent response is required.
COMPUTE V_D2_R1 = 0.
IF (MISSING(D2)) V_D2_R1 = 1.



* [ERROR] Only yes (1) or no (2) is valid.
COMPUTE V_D2_R2 = 0.
IF ((NOT MISSING(D2) AND NOT ANY(D2, 1, 2))) V_D2_R2 = 1.




* Question JF1.


* [ERROR] A facility type selection is required.
COMPUTE V_JF1_R1 = 0.
IF (MISSING(JF1)) V_JF1_R1 = 1.



* [ERROR] Only the documented facility type codes are valid.
COMPUTE V_JF1_R2 = 0.
IF ((NOT MISSING(JF1) AND NOT ANY(JF1, 1, 2, 3, 4, 5, 6, 99))) V_JF1_R2 = 1.




* Question JF3.


* [ERROR] A facility-bed-category selection is required.
COMPUTE V_JF3_R1 = 0.
IF (MISSING(JF3)) V_JF3_R1 = 1.



* [ERROR] Only the documented bed-category and don't-know codes are valid.
COMPUTE V_JF3_R2 = 0.
IF ((NOT MISSING(JF3) AND NOT ANY(JF3, 0, 1, 2, 3, 4, 5, 6, 7, 99))) V_JF3_R2 = 1.




* Question JF4.


* [ERROR] An age-group selection is required.
COMPUTE V_JF4_R1 = 0.
IF (MISSING(JF4)) V_JF4_R1 = 1.



* [ERROR] Only the documented age-group and prefer-not-to-respond codes are valid.
COMPUTE V_JF4_R2 = 0.
IF ((NOT MISSING(JF4) AND NOT ANY(JF4, 1, 2, 3, 4, 5, 9))) V_JF4_R2 = 1.




* Question JF5.


* [ERROR] Validate the multiple-response association-membership selection.
!MULTI_B_FLT svar=JF5 ask=S4_1.
COMPUTE V_JF5_R1 = 0.
IF ((NOT MISSING(JF5_1) AND NOT ANY(JF5_1, 0, 1)) OR (NOT MISSING(JF5_3) AND NOT ANY(JF5_3, 0, 1)) OR (NOT MISSING(JF5_5) AND NOT ANY(JF5_5, 0, 1)) OR (NOT MISSING(JF5_6) AND NOT ANY(JF5_6, 0, 1)) OR (NOT MISSING(JF5_15) AND NOT ANY(JF5_15, 0, 1)) OR (NOT MISSING(JF5_16) AND NOT ANY(JF5_16, 0, 1)) OR (NOT MISSING(JF5_13) AND NOT ANY(JF5_13, 0, 1)) OR (NOT MISSING(JF5_8) AND NOT ANY(JF5_8, 0, 1)) OR (NOT MISSING(JF5_14) AND NOT ANY(JF5_14, 0, 1)) OR (NOT MISSING(JF5_9) AND NOT ANY(JF5_9, 0, 1)) OR (NOT MISSING(JF5_11) AND NOT ANY(JF5_11, 0, 1)) OR (NOT MISSING(JF5_12) AND NOT ANY(JF5_12, 0, 1))) V_JF5_R1 = 1.



* [ERROR] Only the documented association-membership codes are valid.
COMPUTE V_JF5_R2 = 0.
IF ((NOT MISSING(JF5) AND NOT ANY(JF5, 1, 3, 5, 6, 15, 16, 13, 8, 14, 9, 11, 12))) V_JF5_R2 = 1.



* [ERROR] No cancer association memberships is exclusive of all other membership selections.
COMPUTE V_JF5_R3 = 0.
IF (SUM(JF5_12) > 0 AND SUM(JF5_1, JF5_3, JF5_5, JF5_6, JF5_15, JF5_16, JF5_13, JF5_8, JF5_14, JF5_9, JF5_11, JF5_12) > 1) V_JF5_R3 = 1.




* Question JF6.


* [ERROR] Validate the guideline/source response when the ALL routing condition applies.
COMPUTE V_JF6_R1 = 0.
IF (((S4_2 > 0) AND (MISSING(JF6))) OR ((NOT (S4_2 > 0)) AND (NOT MISSING(JF6)))) V_JF6_R1 = 1.



* [ERROR] Only the documented guideline/source codes are valid across the stated masks.
COMPUTE V_JF6_R2 = 0.
IF ((NOT MISSING(JF6) AND NOT ANY(JF6, 1, 2, 3, 4, 5, 6, 9, 99))) V_JF6_R2 = 1.




* Question JF7.


* [ERROR] A practice-region selection is required.
COMPUTE V_JF7_R1 = 0.
IF (MISSING(JF7)) V_JF7_R1 = 1.



* [ERROR] Only the eight documented practice-region codes are valid.
COMPUTE V_JF7_R2 = 0.
IF ((NOT MISSING(JF7) AND NOT ANY(JF7, 1, 2, 3, 4, 5, 6, 7, 8))) V_JF7_R2 = 1.





*===============================================================================.
* FINAL VALIDATION SUMMARY.
*===============================================================================.
COMPUTE VALIDATION_OVERALL = MAX(V_JF9_R1, V_JF9_R2, V_JF9_R3, V_S0A_R1, V_S0A_R2, V_S0B_R1, V_S0B_R2, V_S1_R1, V_S1_R2, V_S1_1_R1, V_S1_1_R2, V_S2_R1, V_S2_R2, V_S3_R1, V_S3_R2, V_S4_R1, V_S4_R2, V_H1A_R1, V_H1A_R2, V_H1B_R1, V_A1A_R1, V_A1A_R2, V_A1B_R1, V_S4_1_R1, V_S4_1_R2, V_S4_2_R1, V_S4_2_R2, V_S6_R1, V_S6_R2, V_S7_R1, V_S7_R2, V_S7_R3, V_S7_1_R1, V_S7_1_R2, V_S7_1_R3, V_CS1_R1, V_CS1_R2, V_CS2_R1, V_CS2_R2, V_HX1_R1, V_HX1_R2, V_H1_R1, V_H1_R2, V_H1_R3, V_H2_R1, V_H2_R2, V_H2_R3, V_H3_R1, V_H3_R2, V_H3_R3, V_H5_R1, V_H61_R1, V_H71_R1, V_H72_R1, V_H73_R1, V_H74_R1, V_H81_R1, V_H82_R1, V_H83_R1, V_H84_R1, V_H8AX_R1, V_H9_R1, V_H10_R1, V_H11_R1, V_H12_R1, V_H201_R1, V_H202_R1, V_H203_R1, V_H204_R1, V_H204A_R1, V_H21_R1, V_H22_R1, V_H23_R1, V_H24_R1, V_H25_1_R2, V_H25_2_R2, V_H25_3_R2, V_H25_4_R2, V_H25_4A_R2, V_H26_R2, V_H27_R2, V_H14_1_R2, V_H14_2_R2, V_H14_3_R2, V_H14_4_R2, V_H28_R2, V_H30_R2, V_A1_R2, V_A1_R3, V_A2_2_R2, V_A2_1_R2, V_A3_R2, V_A4_R2, V_A6_R1, V_A7_R1, V_A7_R2, V_A10_R1, V_A11_1_R1, V_A11_1_2_R1, V_A11_1_2_R2, V_A11_2_R1, V_A11_2_2_R1, V_A11_2_2_R2, V_A11_3_R1, V_A11_3_2_R1, V_A11_3_2_R2, V_A11_4_R1, V_A11_4_2_R1, V_A11_4_2_R2, V_A11A_R1, V_A11A_R2, V_A12A_R1, V_A12_R1, V_A12_1_R1, V_A12_1_2_R1, V_A12_1_2_R2, V_A12_2_R1, V_A12_2_2_R1, V_A12_2_2_R2, V_A12_3_R1, V_A12_3_2_MANDATORY, V_A12_3_2_TOTAL, V_A12_4_2_MANDATORY, V_A12_4_2_TOTAL, V_A12_1A_RANGE, V_A13_1_2_MANDATORY, V_A13_1_2_TOTAL, V_A13_2_2_MANDATORY, V_A13_2_2_TOTAL, V_A13_3_2_MANDATORY, V_A13_3_2_TOTAL, V_A13_4_2_MANDATORY, V_A13_4_2_TOTAL, V_A14_1_2_MANDATORY, V_A14_1_2_TOTAL, V_A14_2_2_MANDATORY, V_A14_2_2_TOTAL, V_A14_3_2_R2, V_A14_3_2_R3, V_A14_4_2_R2, V_A14_4_2_R3, V_A15_R2, V_A15_R3, V_A16_R2, V_A16_R3, V_A17_R2, V_A17_R3, V_A18_R2, V_A18_R3, V_A18B_R2, V_A18B_R3, V_A18_1_R2, V_A18_1_R3, V_A19_1_2_R2, V_A19_1_2_R3, V_A19_2_2_R2, V_A19_2_2_R3, V_A19_3_2_R2, V_A19_3_2_R3, V_A19_4_2_R2, V_A19_4_2_R3, V_A20_R1, V_A20_R2, V_A20_R3, V_A20_R4, V_A21_R1, V_A21_R2, V_A21_R3, V_A21_R4, V_A22_R1, V_A22_R2, V_A23_R1, V_A23_R2, V_A23A_R1, V_A23B_R1, V_A23B_R2, V_A23_1_R1, V_A23_1_R2, V_A24_1_2_R1, V_A24_1_2_R2, V_A24_2_2_R1, V_A24_2_2_R2, V_A24_3_2_R1, V_A24_3_2_R2, V_A24_4_2_R1, V_A24_4_2_R2, V_A25_R1, V_A25_R2, V_A29_R1, V_A40_R1, V_A40_R2, V_A41_R1, V_A41_R2, V_A41_1_R1, V_A41_2_R1, V_A42_R1, V_A42_R2, V_A45_R1, V_A46_1_2_R1, V_A46_2_2_R1, V_A46_3_2_R1, V_A46_4_2_R1, V_A46A_R1, V_A46C_R1, V_A46C_R2, V_A46B_R1, V_A47_1_2_R1, V_A47_2_2_PCT_TOTAL, V_A47_3_PCT_TOTAL, V_A47_3_2_REQUIRED, V_A47_3_2_PCT_TOTAL, V_A47_4_PCT_TOTAL, V_A47_4_2_REQUIRED, V_A47_4_2_PCT_TOTAL, V_A48_1_PCT_TOTAL, V_A48_1_2_REQUIRED, V_A48_1_2_PCT_TOTAL, V_A48_2_PCT_TOTAL, V_A48_2_2_REQUIRED, V_A48_2_2_PCT_TOTAL, V_A48_3_PCT_TOTAL, V_A48_3_2_REQUIRED, V_A48_3_2_PCT_TOTAL, V_A48_4_PCT_TOTAL, V_A48_4_2_REQUIRED, V_A48_4_2_PCT_TOTAL, V_A49_1_PCT_TOTAL, V_A49_1_2_REQUIRED, V_A49_1_2_PCT_TOTAL, V_A49_2_PCT_TOTAL, V_A49_2_2_REQUIRED, V_A49_2_2_PCT_TOTAL, V_A49_3_2_RANGE_PERCENT, V_A49_3_2_RANGE_MONTHS, V_A49_3_2_TOTAL, V_A49_4_2_RANGE_PERCENT, V_A49_4_2_RANGE_MONTHS, V_A49_4_2_TOTAL, V_A50_RANGE, V_A50_TOTAL, V_A51_RANGE, V_A51_TOTAL, V_A52_RANGE, V_A52_TOTAL, V_A53_RANGE, V_A53_TOTAL, V_A53A_RANGE, V_A53B_RANGE, V_A53B_TOTAL, V_A53_1_RANGE, V_A53_1_TOTAL, V_A54_1_2_RANGE_PERCENT, V_A54_1_2_RANGE_MONTHS, V_A54_1_2_TOTAL, V_A54_2_2_RANGE_PERCENT, V_A54_2_2_RANGE_MONTHS, V_A54_2_2_TOTAL, V_A54_3_2_RANGE_PERCENT, V_A54_3_2_RANGE_MONTHS, V_A54_3_2_TOTAL, V_A54_4_2_RANGE_PERCENT, V_A54_4_2_RANGE_MONTHS, V_A54_4_2_TOTAL, V_A55_R1, V_A55_R3, V_A56_R1, V_A56_R3, V_A57_R1, V_A57_R3, V_A58_R1, V_A58_R3, V_A58B_R1, V_A58B_R3, V_A58_1_R1, V_A58_1_R3, V_A59_1_2_R1, V_A59_1_2_R2, V_A59_2_2_R1, V_A59_2_2_R2, V_A59_3_2_R1, V_A59_3_2_R2, V_A59_4_2_R1, V_A59_4_2_R2, V_A60_R1, V_A60_R3, V_A60_1_R1, V_A60_1_R3, V_A63_R1, V_A63_R2, V_A63_R3, V_A63_R4, V_A63_R5, V_A63_R6, V_A63_R7, V_A63_R8, V_A63_R9, V_A64_R1, V_A64_R2, V_A65_R1, V_A65_R2, V_A66_R1, V_D1_R1, V_D2_R1, V_D2_R2, V_JF1_R1, V_JF1_R2, V_JF3_R1, V_JF3_R2, V_JF4_R1, V_JF4_R2, V_JF5_R1, V_JF5_R2, V_JF5_R3, V_JF6_R1, V_JF6_R2, V_JF7_R1, V_JF7_R2).
FREQUENCIES VARIABLES=V_JF9_R1 V_JF9_R2 V_JF9_R3 V_S0A_R1 V_S0A_R2 V_S0B_R1 V_S0B_R2 V_S1_R1 V_S1_R2 V_S1_1_R1 V_S1_1_R2 V_S2_R1 V_S2_R2 V_S3_R1 V_S3_R2 V_S4_R1 V_S4_R2 V_H1A_R1 V_H1A_R2 V_H1B_R1 V_A1A_R1 V_A1A_R2 V_A1B_R1 V_S4_1_R1 V_S4_1_R2 V_S4_2_R1 V_S4_2_R2 V_S6_R1 V_S6_R2 V_S7_R1 V_S7_R2 V_S7_R3 V_S7_1_R1 V_S7_1_R2 V_S7_1_R3 V_CS1_R1 V_CS1_R2 V_CS2_R1 V_CS2_R2 V_HX1_R1 V_HX1_R2 V_H1_R1 V_H1_R2 V_H1_R3 V_H2_R1 V_H2_R2 V_H2_R3 V_H3_R1 V_H3_R2 V_H3_R3 V_H5_R1 V_H61_R1 V_H71_R1 V_H72_R1 V_H73_R1 V_H74_R1 V_H81_R1 V_H82_R1 V_H83_R1 V_H84_R1 V_H8AX_R1 V_H9_R1 V_H10_R1 V_H11_R1 V_H12_R1 V_H201_R1 V_H202_R1 V_H203_R1 V_H204_R1 V_H204A_R1 V_H21_R1 V_H22_R1 V_H23_R1 V_H24_R1 V_H25_1_R2 V_H25_2_R2 V_H25_3_R2 V_H25_4_R2 V_H25_4A_R2 V_H26_R2 V_H27_R2 V_H14_1_R2 V_H14_2_R2 V_H14_3_R2 V_H14_4_R2 V_H28_R2 V_H30_R2 V_A1_R2 V_A1_R3 V_A2_2_R2 V_A2_1_R2 V_A3_R2 V_A4_R2 V_A6_R1 V_A7_R1 V_A7_R2 V_A10_R1 V_A11_1_R1 V_A11_1_2_R1 V_A11_1_2_R2 V_A11_2_R1 V_A11_2_2_R1 V_A11_2_2_R2 V_A11_3_R1 V_A11_3_2_R1 V_A11_3_2_R2 V_A11_4_R1 V_A11_4_2_R1 V_A11_4_2_R2 V_A11A_R1 V_A11A_R2 V_A12A_R1 V_A12_R1 V_A12_1_R1 V_A12_1_2_R1 V_A12_1_2_R2 V_A12_2_R1 V_A12_2_2_R1 V_A12_2_2_R2 V_A12_3_R1 V_A12_3_2_MANDATORY V_A12_3_2_TOTAL V_A12_4_2_MANDATORY V_A12_4_2_TOTAL V_A12_1A_RANGE V_A13_1_2_MANDATORY V_A13_1_2_TOTAL V_A13_2_2_MANDATORY V_A13_2_2_TOTAL V_A13_3_2_MANDATORY V_A13_3_2_TOTAL V_A13_4_2_MANDATORY V_A13_4_2_TOTAL V_A14_1_2_MANDATORY V_A14_1_2_TOTAL V_A14_2_2_MANDATORY V_A14_2_2_TOTAL V_A14_3_2_R2 V_A14_3_2_R3 V_A14_4_2_R2 V_A14_4_2_R3 V_A15_R2 V_A15_R3 V_A16_R2 V_A16_R3 V_A17_R2 V_A17_R3 V_A18_R2 V_A18_R3 V_A18B_R2 V_A18B_R3 V_A18_1_R2 V_A18_1_R3 V_A19_1_2_R2 V_A19_1_2_R3 V_A19_2_2_R2 V_A19_2_2_R3 V_A19_3_2_R2 V_A19_3_2_R3 V_A19_4_2_R2 V_A19_4_2_R3 V_A20_R1 V_A20_R2 V_A20_R3 V_A20_R4 V_A21_R1 V_A21_R2 V_A21_R3 V_A21_R4 V_A22_R1 V_A22_R2 V_A23_R1 V_A23_R2 V_A23A_R1 V_A23B_R1 V_A23B_R2 V_A23_1_R1 V_A23_1_R2 V_A24_1_2_R1 V_A24_1_2_R2 V_A24_2_2_R1 V_A24_2_2_R2 V_A24_3_2_R1 V_A24_3_2_R2 V_A24_4_2_R1 V_A24_4_2_R2 V_A25_R1 V_A25_R2 V_A29_R1 V_A40_R1 V_A40_R2 V_A41_R1 V_A41_R2 V_A41_1_R1 V_A41_2_R1 V_A42_R1 V_A42_R2 V_A45_R1 V_A46_1_2_R1 V_A46_2_2_R1 V_A46_3_2_R1 V_A46_4_2_R1 V_A46A_R1 V_A46C_R1 V_A46C_R2 V_A46B_R1 V_A47_1_2_R1 V_A47_2_2_PCT_TOTAL V_A47_3_PCT_TOTAL V_A47_3_2_REQUIRED V_A47_3_2_PCT_TOTAL V_A47_4_PCT_TOTAL V_A47_4_2_REQUIRED V_A47_4_2_PCT_TOTAL V_A48_1_PCT_TOTAL V_A48_1_2_REQUIRED V_A48_1_2_PCT_TOTAL V_A48_2_PCT_TOTAL V_A48_2_2_REQUIRED V_A48_2_2_PCT_TOTAL V_A48_3_PCT_TOTAL V_A48_3_2_REQUIRED V_A48_3_2_PCT_TOTAL V_A48_4_PCT_TOTAL V_A48_4_2_REQUIRED V_A48_4_2_PCT_TOTAL V_A49_1_PCT_TOTAL V_A49_1_2_REQUIRED V_A49_1_2_PCT_TOTAL V_A49_2_PCT_TOTAL V_A49_2_2_REQUIRED V_A49_2_2_PCT_TOTAL V_A49_3_2_RANGE_PERCENT V_A49_3_2_RANGE_MONTHS V_A49_3_2_TOTAL V_A49_4_2_RANGE_PERCENT V_A49_4_2_RANGE_MONTHS V_A49_4_2_TOTAL V_A50_RANGE V_A50_TOTAL V_A51_RANGE V_A51_TOTAL V_A52_RANGE V_A52_TOTAL V_A53_RANGE V_A53_TOTAL V_A53A_RANGE V_A53B_RANGE V_A53B_TOTAL V_A53_1_RANGE V_A53_1_TOTAL V_A54_1_2_RANGE_PERCENT V_A54_1_2_RANGE_MONTHS V_A54_1_2_TOTAL V_A54_2_2_RANGE_PERCENT V_A54_2_2_RANGE_MONTHS V_A54_2_2_TOTAL V_A54_3_2_RANGE_PERCENT V_A54_3_2_RANGE_MONTHS V_A54_3_2_TOTAL V_A54_4_2_RANGE_PERCENT V_A54_4_2_RANGE_MONTHS V_A54_4_2_TOTAL V_A55_R1 V_A55_R3 V_A56_R1 V_A56_R3 V_A57_R1 V_A57_R3 V_A58_R1 V_A58_R3 V_A58B_R1 V_A58B_R3 V_A58_1_R1 V_A58_1_R3 V_A59_1_2_R1 V_A59_1_2_R2 V_A59_2_2_R1 V_A59_2_2_R2 V_A59_3_2_R1 V_A59_3_2_R2 V_A59_4_2_R1 V_A59_4_2_R2 V_A60_R1 V_A60_R3 V_A60_1_R1 V_A60_1_R3 V_A63_R1 V_A63_R2 V_A63_R3 V_A63_R4 V_A63_R5 V_A63_R6 V_A63_R7 V_A63_R8 V_A63_R9 V_A64_R1 V_A64_R2 V_A65_R1 V_A65_R2 V_A66_R1 V_D1_R1 V_D2_R1 V_D2_R2 V_JF1_R1 V_JF1_R2 V_JF3_R1 V_JF3_R2 V_JF4_R1 V_JF4_R2 V_JF5_R1 V_JF5_R2 V_JF5_R3 V_JF6_R1 V_JF6_R2 V_JF7_R1 V_JF7_R2 VALIDATION_OVERALL.

* MODEL WARNINGS.
* Several questionnaire range specifications are represented in macro parameters because the typed RuleParameters schema does not expose minimum and maximum fields.
* The source contains embedded subquestions and inconsistent option labels for S4; no unsupported cross-field or dynamic-total rule was inferred for those embedded fields.
* Country-specific termination rules refer to an external current-country variable that is not supplied; those conditional routing checks were omitted.
* The questionnaire supplies grid-level base variables rather than separate variables for percentage and month columns. Therefore, the explicit linked-column checks and distinct month-column range checks were not emitted.
* Conditional display expressions containing sums or compound OR logic were not converted into routing rules because the questionnaire does not provide corresponding filter variables.
* Omitted incomplete model rule: Rule H6-R1 requires variables and a range or allowed_values.
* Omitted incomplete model rule: Rule H8A-R1 requires variables and a range or allowed_values.
* The questionnaire describes paired percentage/month fields and conditional display logic for several matrix questions, but does not provide separate canonical variables for those subfields; paired-cell consistency checks were therefore omitted.
* The response schema does not expose minimum and maximum fields in RuleParameters; stated numeric bounds are represented through the approved Numeric macro parameters.
* Omitted incomplete model rule: Rule H25.1-R1 requires variables and a range or allowed_values.
* Omitted incomplete model rule: Rule H25.2-R1 requires variables and a range or allowed_values.
* Omitted incomplete model rule: Rule H25.3-R1 requires variables and a range or allowed_values.
* Omitted incomplete model rule: Rule H25.4-R1 requires variables and a range or allowed_values.
* Omitted incomplete model rule: Rule H25.4A-R1 requires variables and a range or allowed_values.
* Omitted incomplete model rule: Rule H26-R1 requires variables and a range or allowed_values.
* Omitted incomplete model rule: Rule H27-R1 requires variables and a range or allowed_values.
* Omitted incomplete model rule: Rule H13-R1 requires variables and a range or allowed_values.
* Omitted incomplete model rule: Rule H14.1-R1 requires variables and a range or allowed_values.
* Omitted incomplete model rule: Rule H14.2-R1 requires variables and a range or allowed_values.
* Omitted incomplete model rule: Rule H14.3-R1 requires variables and a range or allowed_values.
* Omitted incomplete model rule: Rule H14.4-R1 requires variables and a range or allowed_values.
* Omitted incomplete model rule: Rule H28-R1 requires variables and a range or allowed_values.
* Omitted incomplete model rule: Rule H29-R1 requires variables and a range or allowed_values.
* Omitted incomplete model rule: Rule H30-R1 requires variables and a range or allowed_values.
* Omitted incomplete model rule: Rule H31-R1 requires variables and a range or allowed_values.
* Omitted incomplete model rule: Rule A1-R1 requires variables and a range or allowed_values.
* Omitted incomplete model rule: Rule A2_2-R1 requires variables and a range or allowed_values.
* Omitted incomplete model rule: Rule A2.1-R1 requires variables and a range or allowed_values.
* Omitted incomplete model rule: Rule X1.1-R1 requires variables and a range or allowed_values.
* Omitted incomplete model rule: Rule A3-R1 requires variables and a range or allowed_values.
* Omitted incomplete model rule: Rule A4-R1 requires variables and a range or allowed_values.
* Omitted incomplete model rule: Rule A5-R1 requires variables and a range or allowed_values.
* The supplied schema does not define minimum and maximum fields in RuleParameters; numeric bounds are included because they are explicitly supported by the questionnaire evidence and instructions.
* The batch contains grid parent and child variables whose column-specific percentage and month fields share a base variable; checks are expressed at the supplied base-variable level without inventing derived variable names.
* The questionnaire provides percentage and months ranges inside composite grid text, but does not expose separate canonical variables for those columns; separate numeric-range rules were therefore omitted to avoid assigning the wrong range to mixed fields.
* The questionnaire describes blank-or-zero percentage versus months consistency checks and duplicate other-specify checks, but the required component variables are not supplied in this batch; those checks were omitted.
* The questionnaire specifies separate percentage and months columns in several grids, but supplies only a base variable for each grid; therefore a distinct month-column range rule could not be safely assigned without inventing variable names.
* The questionnaire contains conditional display instructions referencing variables not supplied as canonical questions in this batch; no standalone routing rules were emitted.
* Omitted incomplete model rule: Rule A14.3_2_R1 requires variables and a range or allowed_values.
* Omitted incomplete model rule: Rule A14.4_2_R1 requires variables and a range or allowed_values.
* Omitted incomplete model rule: Rule A15_R1 requires variables and a range or allowed_values.
* Omitted incomplete model rule: Rule A16_R1 requires variables and a range or allowed_values.
* Omitted incomplete model rule: Rule A17_R1 requires variables and a range or allowed_values.
* Omitted incomplete model rule: Rule A18_R1 requires variables and a range or allowed_values.
* Omitted incomplete model rule: Rule A18A_R1 requires variables and a range or allowed_values.
* Omitted incomplete model rule: Rule A18B_R1 requires variables and a range or allowed_values.
* Omitted incomplete model rule: Rule A18.1_R1 requires variables and a range or allowed_values.
* Omitted incomplete model rule: Rule A19.1_2_R1 requires variables and a range or allowed_values.
* Omitted incomplete model rule: Rule A19.2_2_R1 requires variables and a range or allowed_values.
* Omitted incomplete model rule: Rule A19.3_2_R1 requires variables and a range or allowed_values.
* Omitted incomplete model rule: Rule A19.4_2_R1 requires variables and a range or allowed_values.
* Omitted incomplete model rule: Rule A19A_R1 requires variables and a range or allowed_values.
* The supplied questionnaire identifies composite grid columns and month ranges in A24.1_2, A24.2_2, A24.3_2, and A24.4_2, but does not provide distinct variables for the percentage and month columns; separate column-specific month validations were therefore omitted.
* A29 states a 0-100 range for progression-free survival measured in months; this rule preserves the documented range without inferring a different clinical maximum.
* The questionnaire's matrix questions combine percentage and month fields under a base variable, but the supplied canonical data does not separately identify those component variables. Percentage-range, month-range, zero-percentage/month consistency, and identical-column quality checks were therefore omitted where they could not be expressed safely without inventing variables.
* The source schema does not define minimum and maximum properties for numeric_range parameters; they are included here because the questionnaire explicitly supplies numeric bounds.
* The questionnaire supplies matrix-level variables only. Cell-level percentage-versus-month ranges, blank/zero percentage paired with months, duplicate other-regimen entries, and identical-value quality checks were not emitted because the canonical batch does not provide separate target variables or a safe structured representation for those cells.
* The supplied canonical grid fields expose base variables but do not expose separate variables for percentage and month columns or row-level linkage. Consequently, the conditional month-entry and cross-column identical-value checks were not emitted.
* The response schema does not formally declare minimum and maximum properties in RuleParameters; they are included because the questionnaire explicitly supplies numeric ranges and the validation instructions require typed numeric bounds.
* Several grid questions specify cell-level percentage and duration ranges, but the parser supplied only a base variable; uncertain cell-specific rules were omitted rather than inferred.
* Conditional display statements were not converted to applicability predicates where the canonical representation did not unambiguously preserve the intended OR logic.
* Omitted incomplete model rule: Rule A54A-R1 requires variables and a range or allowed_values.
* Omitted incomplete model rule: Rule A55-R2 requires variables and a range or allowed_values.
* Omitted incomplete model rule: Rule A56-R2 requires variables and a range or allowed_values.
* Omitted incomplete model rule: Rule A57-R2 requires variables and a range or allowed_values.
* Omitted incomplete model rule: Rule A58-R2 requires variables and a range or allowed_values.
* Omitted incomplete model rule: Rule A58A-R1 requires variables and a range or allowed_values.
* Omitted incomplete model rule: Rule A58B-R2 requires variables and a range or allowed_values.
* Omitted incomplete model rule: Rule A58.1-R2 requires variables and a range or allowed_values.
* Omitted incomplete model rule: Rule A60-R2 requires variables and a range or allowed_values.
* Omitted incomplete model rule: Rule A60.1-R2 requires variables and a range or allowed_values.
* Omitted incomplete model rule: Rule A61-R1 requires variables and a range or allowed_values.
* D1 specifies a 50-state plus Washington, DC dropdown, but the canonical question supplies no response codes; only the documented single-selection requirement was validated.
* JF6 contains two masked question variants with different other-specify codes (99 and 9); both documented codes were retained as valid.


EXECUTE.
