* Encoding: UTF-8.
* Generated deterministically by Survey Programming AI.
* Source: (V5 R94036) Bob Response PC_Final_WAQ (2).docx.
TITLE 'Final Primary Care Landscape (6/16/26)'.
* Project: Primary Care Landscape.


*===============================================================================.
* SECTION Introduction: Introduction.
*===============================================================================.

* Question INTRO.
* No validation generated: Informational introduction text with no respondent-entered data.




*===============================================================================.
* SECTION Screening: Screening.
*===============================================================================.

* Question S1.


* [ERROR] S1 must be answered.
COMPUTE V_S1_MANDATORY = 0.
IF (MISSING(S1)) V_S1_MANDATORY = 1.



* [ERROR] S1 must contain a listed response code.
COMPUTE V_S1_CODES = 0.
IF ((NOT MISSING(S1) AND NOT ANY(S1, 1, 2))) V_S1_CODES = 1.



* [ERROR] Respondents answering Yes at S1 must be screened out.
COMPUTE V_S1_SCREENOUT = 0.
IF (S1 = 1) V_S1_SCREENOUT = 1.




* Question S2.


* [ERROR] S2 must be answered.
COMPUTE V_S2_MANDATORY = 0.
IF (MISSING(S2)) V_S2_MANDATORY = 1.



* [ERROR] S2 must contain a listed response code.
COMPUTE V_S2_CODES = 0.
IF ((NOT MISSING(S2) AND NOT ANY(S2, 1, 2, 3, 4, 5, 98))) V_S2_CODES = 1.



* [ERROR] Respondents selecting Other certification or practice type at S2 must be screened out.
COMPUTE V_S2_SCREENOUT = 0.
IF (S2 = 98) V_S2_SCREENOUT = 1.




* Question S3.


* [ERROR] S3 must be answered.
COMPUTE V_S3_MANDATORY = 0.
IF (MISSING(S3)) V_S3_MANDATORY = 1.



* [ERROR] S3 must contain a listed response code.
COMPUTE V_S3_CODES = 0.
IF ((NOT MISSING(S3) AND NOT ANY(S3, 1, 2, 3, 4, 5, 98))) V_S3_CODES = 1.



* [ERROR] Respondents selecting Other at S3 must be screened out.
COMPUTE V_S3_SCREENOUT = 0.
IF (S3 = 98) V_S3_SCREENOUT = 1.




* Question S4.


* [ERROR] S4 must be answered.
COMPUTE V_S4_MANDATORY = 0.
IF (MISSING(S4)) V_S4_MANDATORY = 1.



* [ERROR] Years in practice must be between 1 and 40 years.
COMPUTE V_S4_RANGE = 0.
IF ((NOT MISSING(S4) AND NOT ANY(S4, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40))) V_S4_RANGE = 1.



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



* [ERROR] S5 must contain a listed response code.
COMPUTE V_S5_CODES = 0.
IF ((NOT MISSING(S5) AND NOT ANY(S5, 1, 2))) V_S5_CODES = 1.



* [ERROR] Respondents answering Yes at S5 must be screened out.
COMPUTE V_S5_SCREENOUT = 0.
IF (S5 = 1) V_S5_SCREENOUT = 1.




* Question S6.


* [ERROR] S6 must be answered.
COMPUTE V_S6_MANDATORY = 0.
IF (MISSING(S6)) V_S6_MANDATORY = 1.



* [ERROR] S6 must contain a listed response code.
COMPUTE V_S6_CODES = 0.
IF ((NOT MISSING(S6) AND NOT ANY(S6, 1, 2, 3, 4, 5, 6, 7))) V_S6_CODES = 1.



* [ERROR] Respondents selecting fewer than 75 patients per week must be screened out.
COMPUTE V_S6_SCREENOUT = 0.
IF (S6 = 1) V_S6_SCREENOUT = 1.




* Question S7.


* [ERROR] S7 must be answered.
COMPUTE V_S7_MANDATORY = 0.
IF (MISSING(S7)) V_S7_MANDATORY = 1.



* [ERROR] S7 must contain a listed response code.
COMPUTE V_S7_CODES = 0.
IF ((NOT MISSING(S7) AND NOT ANY(S7, 1, 2))) V_S7_CODES = 1.




* Question S8.


* [ERROR] The four S8 payor percentages must total 100%.
COMPUTE V_S8_TOTAL = 0.
IF (SUM(S8_R1, S8_R2, S8_R3, S8_R4) <> 100.0) V_S8_TOTAL = 1.




* Question S8_R1.


* [ERROR] S8 Commercial Insurance percentage must be answered.
COMPUTE V_S8_R1_MANDATORY = 0.
IF (MISSING(S8_R1)) V_S8_R1_MANDATORY = 1.



* [ERROR] S8 Commercial Insurance percentage must be from 0 to 100.
COMPUTE V_S8_R1_RANGE = 0.
IF ((NOT MISSING(S8_R1) AND NOT ANY(S8_R1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100))) V_S8_R1_RANGE = 1.




* Question S8_R2.


* [ERROR] S8 Medicare percentage must be answered.
COMPUTE V_S8_R2_MANDATORY = 0.
IF (MISSING(S8_R2)) V_S8_R2_MANDATORY = 1.



* [ERROR] S8 Medicare percentage must be from 0 to 100.
COMPUTE V_S8_R2_RANGE = 0.
IF ((NOT MISSING(S8_R2) AND NOT ANY(S8_R2, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100))) V_S8_R2_RANGE = 1.




* Question S8_R3.


* [ERROR] S8 Medicaid percentage must be answered.
COMPUTE V_S8_R3_MANDATORY = 0.
IF (MISSING(S8_R3)) V_S8_R3_MANDATORY = 1.



* [ERROR] S8 Medicaid percentage must be from 0 to 100.
COMPUTE V_S8_R3_RANGE = 0.
IF ((NOT MISSING(S8_R3) AND NOT ANY(S8_R3, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100))) V_S8_R3_RANGE = 1.




* Question S8_R4.


* [ERROR] S8 Other percentage must be answered.
COMPUTE V_S8_R4_MANDATORY = 0.
IF (MISSING(S8_R4)) V_S8_R4_MANDATORY = 1.



* [ERROR] S8 Other percentage must be from 0 to 100.
COMPUTE V_S8_R4_RANGE = 0.
IF ((NOT MISSING(S8_R4) AND NOT ANY(S8_R4, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100))) V_S8_R4_RANGE = 1.




* Question S9.


* [ERROR] S9 must be answered.
COMPUTE V_S9_MANDATORY = 0.
IF (MISSING(S9)) V_S9_MANDATORY = 1.



* [ERROR] S9 must contain a listed response code.
COMPUTE V_S9_CODES = 0.
IF ((NOT MISSING(S9) AND NOT ANY(S9, 1, 2))) V_S9_CODES = 1.




* Question S10.


* [ERROR] S10 must be answered.
COMPUTE V_S10_MANDATORY = 0.
IF (MISSING(S10)) V_S10_MANDATORY = 1.



* [ERROR] S10 must contain a listed response code.
COMPUTE V_S10_CODES = 0.
IF ((NOT MISSING(S10) AND NOT ANY(S10, 1, 2))) V_S10_CODES = 1.





*===============================================================================.
* SECTION Survey: Survey.
*===============================================================================.

* Question Q1_01.


* [ERROR] Q1_01 must be answered.
COMPUTE V_Q1_01_MANDATORY = 0.
IF (MISSING(Q1_01)) V_Q1_01_MANDATORY = 1.



* [ERROR] Q1_01 percentage must be from 0 to 100.
COMPUTE V_Q1_01_RANGE = 0.
IF ((NOT MISSING(Q1_01) AND NOT ANY(Q1_01, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100))) V_Q1_01_RANGE = 1.




* Question Q1_02.


* [ERROR] Q1_02 must be answered.
COMPUTE V_Q1_02_MANDATORY = 0.
IF (MISSING(Q1_02)) V_Q1_02_MANDATORY = 1.



* [ERROR] Q1_02 percentage must be from 0 to 100.
COMPUTE V_Q1_02_RANGE = 0.
IF ((NOT MISSING(Q1_02) AND NOT ANY(Q1_02, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100))) V_Q1_02_RANGE = 1.




* Question Q1_03.


* [ERROR] Q1_03 must be answered.
COMPUTE V_Q1_03_MANDATORY = 0.
IF (MISSING(Q1_03)) V_Q1_03_MANDATORY = 1.



* [ERROR] Q1_03 percentage must be from 0 to 100.
COMPUTE V_Q1_03_RANGE = 0.
IF ((NOT MISSING(Q1_03) AND NOT ANY(Q1_03, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100))) V_Q1_03_RANGE = 1.




* Question Q1_04.


* [ERROR] Q1_04 must be answered.
COMPUTE V_Q1_04_MANDATORY = 0.
IF (MISSING(Q1_04)) V_Q1_04_MANDATORY = 1.



* [ERROR] Q1_04 percentage must be from 0 to 100.
COMPUTE V_Q1_04_RANGE = 0.
IF ((NOT MISSING(Q1_04) AND NOT ANY(Q1_04, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100))) V_Q1_04_RANGE = 1.




* Question Q1_05.


* [ERROR] Q1_05 must be answered.
COMPUTE V_Q1_05_MANDATORY = 0.
IF (MISSING(Q1_05)) V_Q1_05_MANDATORY = 1.



* [ERROR] Q1_05 percentage must be from 0 to 100.
COMPUTE V_Q1_05_RANGE = 0.
IF ((NOT MISSING(Q1_05) AND NOT ANY(Q1_05, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100))) V_Q1_05_RANGE = 1.




* Question Q1_06.


* [ERROR] Q1_06 must be answered.
COMPUTE V_Q1_06_MANDATORY = 0.
IF (MISSING(Q1_06)) V_Q1_06_MANDATORY = 1.



* [ERROR] Q1_06 percentage must be from 0 to 100.
COMPUTE V_Q1_06_RANGE = 0.
IF ((NOT MISSING(Q1_06) AND NOT ANY(Q1_06, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100))) V_Q1_06_RANGE = 1.




* Question Q1_07.


* [ERROR] Q1_07 must be answered.
COMPUTE V_Q1_07_MANDATORY = 0.
IF (MISSING(Q1_07)) V_Q1_07_MANDATORY = 1.



* [ERROR] Q1_07 percentage must be from 0 to 100.
COMPUTE V_Q1_07_RANGE = 0.
IF ((NOT MISSING(Q1_07) AND NOT ANY(Q1_07, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100))) V_Q1_07_RANGE = 1.




* Question Q1_08.


* [ERROR] Q1_08 must be answered.
COMPUTE V_Q1_08_MANDATORY = 0.
IF (MISSING(Q1_08)) V_Q1_08_MANDATORY = 1.



* [ERROR] Q1_08 percentage must be from 0 to 100.
COMPUTE V_Q1_08_RANGE = 0.
IF ((NOT MISSING(Q1_08) AND NOT ANY(Q1_08, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100))) V_Q1_08_RANGE = 1.




* Question Q1_09.


* [ERROR] Q1_09 must be answered.
COMPUTE V_Q1_09_MANDATORY = 0.
IF (MISSING(Q1_09)) V_Q1_09_MANDATORY = 1.



* [ERROR] Q1_09 percentage must be from 0 to 100.
COMPUTE V_Q1_09_RANGE = 0.
IF ((NOT MISSING(Q1_09) AND NOT ANY(Q1_09, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100))) V_Q1_09_RANGE = 1.




* Question Q1_10.


* [ERROR] Q1_10 must be answered.
COMPUTE V_Q1_10_MANDATORY = 0.
IF (MISSING(Q1_10)) V_Q1_10_MANDATORY = 1.



* [ERROR] Q1_10 percentage must be from 0 to 100.
COMPUTE V_Q1_10_RANGE = 0.
IF ((NOT MISSING(Q1_10) AND NOT ANY(Q1_10, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100))) V_Q1_10_RANGE = 1.




* Question Q1_11.


* [ERROR] Validate that the percentage response is between 0% and 100%.
COMPUTE V_Q1_11_RANGE = 0.
IF ((NOT MISSING(Q1_11) AND NOT ANY(Q1_11, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100))) V_Q1_11_RANGE = 1.




* Question Q1_12.


* [ERROR] Validate that the percentage response is between 0% and 100%.
COMPUTE V_Q1_12_RANGE = 0.
IF ((NOT MISSING(Q1_12) AND NOT ANY(Q1_12, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100))) V_Q1_12_RANGE = 1.




* Question Q2_01.


* [ERROR] Validate that the number of test panels is within the documented 0 to 99 range.
COMPUTE V_Q2_01_RANGE = 0.
IF ((NOT MISSING(Q2_01) AND NOT ANY(Q2_01, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99))) V_Q2_01_RANGE = 1.




* Question Q2_02.


* [ERROR] Validate that the number of test panels is within the documented 0 to 99 range.
COMPUTE V_Q2_02_RANGE = 0.
IF ((NOT MISSING(Q2_02) AND NOT ANY(Q2_02, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99))) V_Q2_02_RANGE = 1.




* Question Q2_03.


* [ERROR] Validate that the number of test panels is within the documented 0 to 99 range.
COMPUTE V_Q2_03_RANGE = 0.
IF ((NOT MISSING(Q2_03) AND NOT ANY(Q2_03, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99))) V_Q2_03_RANGE = 1.




* Question Q2_04.


* [ERROR] Validate that the number of test panels is within the documented 0 to 99 range.
COMPUTE V_Q2_04_RANGE = 0.
IF ((NOT MISSING(Q2_04) AND NOT ANY(Q2_04, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99))) V_Q2_04_RANGE = 1.




* Question Q2_05.


* [ERROR] Validate that the number of test panels is within the documented 0 to 99 range.
COMPUTE V_Q2_05_RANGE = 0.
IF ((NOT MISSING(Q2_05) AND NOT ANY(Q2_05, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99))) V_Q2_05_RANGE = 1.




* Question Q2_06.


* [ERROR] Validate that the number of test panels is within the documented 0 to 99 range.
COMPUTE V_Q2_06_RANGE = 0.
IF ((NOT MISSING(Q2_06) AND NOT ANY(Q2_06, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99))) V_Q2_06_RANGE = 1.




* Question Q2_07.


* [ERROR] Validate that the number of test panels is within the documented 0 to 99 range.
COMPUTE V_Q2_07_RANGE = 0.
IF ((NOT MISSING(Q2_07) AND NOT ANY(Q2_07, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99))) V_Q2_07_RANGE = 1.




* Question Q2_08.


* [ERROR] Validate that the number of test panels is within the documented 0 to 99 range.
COMPUTE V_Q2_08_RANGE = 0.
IF ((NOT MISSING(Q2_08) AND NOT ANY(Q2_08, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99))) V_Q2_08_RANGE = 1.




* Question Q2_09.


* [ERROR] Validate that the number of test panels is within the documented 0 to 99 range.
COMPUTE V_Q2_09_RANGE = 0.
IF ((NOT MISSING(Q2_09) AND NOT ANY(Q2_09, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99))) V_Q2_09_RANGE = 1.




* Question Q2_10.


* [ERROR] Validate that the number of test panels is within the documented 0 to 99 range.
COMPUTE V_Q2_10_RANGE = 0.
IF ((NOT MISSING(Q2_10) AND NOT ANY(Q2_10, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99))) V_Q2_10_RANGE = 1.




* Question Q2_11.


* [ERROR] Validate that the number of test panels is within the documented 0 to 99 range.
COMPUTE V_Q2_11_RANGE = 0.
IF ((NOT MISSING(Q2_11) AND NOT ANY(Q2_11, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99))) V_Q2_11_RANGE = 1.




* Question Q2_12.


* [ERROR] Validate that the number of test panels is within the documented 0 to 99 range.
COMPUTE V_Q2_12_RANGE = 0.
IF ((NOT MISSING(Q2_12) AND NOT ANY(Q2_12, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99))) V_Q2_12_RANGE = 1.




* Question Q3_01.


* [ERROR] Validate that the number of additional tests or test groupings is within the documented 0 to 199 range.
COMPUTE V_Q3_01_RANGE = 0.
IF ((NOT MISSING(Q3_01) AND NOT ANY(Q3_01, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199))) V_Q3_01_RANGE = 1.




* Question Q3_02.


* [ERROR] Validate that the number of additional tests or test groupings is within the documented 0 to 199 range.
COMPUTE V_Q3_02_RANGE = 0.
IF ((NOT MISSING(Q3_02) AND NOT ANY(Q3_02, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199))) V_Q3_02_RANGE = 1.




* Question Q3_03.


* [ERROR] Validate that the number of additional tests or test groupings is within the documented 0 to 199 range.
COMPUTE V_Q3_03_RANGE = 0.
IF ((NOT MISSING(Q3_03) AND NOT ANY(Q3_03, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199))) V_Q3_03_RANGE = 1.




* Question Q3_04.


* [ERROR] Validate that the number of additional tests or test groupings is within the documented 0 to 199 range.
COMPUTE V_Q3_04_RANGE = 0.
IF ((NOT MISSING(Q3_04) AND NOT ANY(Q3_04, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199))) V_Q3_04_RANGE = 1.




* Question Q3_05.


* [ERROR] Validate that the number of additional tests or test groupings is within the documented 0 to 199 range.
COMPUTE V_Q3_05_RANGE = 0.
IF ((NOT MISSING(Q3_05) AND NOT ANY(Q3_05, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199))) V_Q3_05_RANGE = 1.




* Question Q3_06.


* [ERROR] Validate that the number of additional tests or test groupings is within the documented 0 to 199 range.
COMPUTE V_Q3_06_RANGE = 0.
IF ((NOT MISSING(Q3_06) AND NOT ANY(Q3_06, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199))) V_Q3_06_RANGE = 1.




* Question Q3_07.


* [ERROR] Validate that the number of additional tests or test groupings is within the documented 0 to 199 range.
COMPUTE V_Q3_07_RANGE = 0.
IF ((NOT MISSING(Q3_07) AND NOT ANY(Q3_07, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199))) V_Q3_07_RANGE = 1.




* Question Q3_08.


* [ERROR] Validate that the number of additional tests or test groupings is within the documented 0 to 199 range.
COMPUTE V_Q3_08_RANGE = 0.
IF ((NOT MISSING(Q3_08) AND NOT ANY(Q3_08, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199))) V_Q3_08_RANGE = 1.




* Question Q3_09.


* [ERROR] Validate that the number of additional tests or test groupings is within the documented 0 to 199 range.
COMPUTE V_Q3_09_RANGE = 0.
IF ((NOT MISSING(Q3_09) AND NOT ANY(Q3_09, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199))) V_Q3_09_RANGE = 1.




* Question Q3_10.


* [ERROR] Validate that the number of additional tests or test groupings is within the documented 0 to 199 range.
COMPUTE V_Q3_10_RANGE = 0.
IF ((NOT MISSING(Q3_10) AND NOT ANY(Q3_10, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199))) V_Q3_10_RANGE = 1.




* Question Q3_11.


* [ERROR] Validate that the number of additional tests or test groupings is within the documented 0 to 199 range.
COMPUTE V_Q3_11_RANGE = 0.
IF ((NOT MISSING(Q3_11) AND NOT ANY(Q3_11, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199))) V_Q3_11_RANGE = 1.




* Question Q3_12.
* No validation generated: Numeric range evidence is conflicting: the source notes both 1–99 and 0–199, so no range check is emitted.



* Question Q4_01.


* [ERROR] Response must be a valid 1–10 rating.
COMPUTE V_Q4_01_INVALID_CODES = 0.
IF ((NOT MISSING(Q4_01) AND NOT ANY(Q4_01, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10))) V_Q4_01_INVALID_CODES = 1.




* Question Q4_02.


* [ERROR] Response must be a valid 1–10 rating.
COMPUTE V_Q4_02_INVALID_CODES = 0.
IF ((NOT MISSING(Q4_02) AND NOT ANY(Q4_02, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10))) V_Q4_02_INVALID_CODES = 1.




* Question Q4_03.


* [ERROR] Response must be a valid 1–10 rating.
COMPUTE V_Q4_03_INVALID_CODES = 0.
IF ((NOT MISSING(Q4_03) AND NOT ANY(Q4_03, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10))) V_Q4_03_INVALID_CODES = 1.




* Question Q4_04.


* [ERROR] Response must be a valid 1–10 rating.
COMPUTE V_Q4_04_INVALID_CODES = 0.
IF ((NOT MISSING(Q4_04) AND NOT ANY(Q4_04, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10))) V_Q4_04_INVALID_CODES = 1.




* Question Q4_05.


* [ERROR] Response must be a valid 1–10 rating.
COMPUTE V_Q4_05_INVALID_CODES = 0.
IF ((NOT MISSING(Q4_05) AND NOT ANY(Q4_05, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10))) V_Q4_05_INVALID_CODES = 1.




* Question Q4_06.


* [ERROR] Response must be a valid 1–10 rating.
COMPUTE V_Q4_06_INVALID_CODES = 0.
IF ((NOT MISSING(Q4_06) AND NOT ANY(Q4_06, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10))) V_Q4_06_INVALID_CODES = 1.




* Question Q4_07.


* [ERROR] Response must be a valid 1–10 rating.
COMPUTE V_Q4_07_INVALID_CODES = 0.
IF ((NOT MISSING(Q4_07) AND NOT ANY(Q4_07, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10))) V_Q4_07_INVALID_CODES = 1.




* Question Q4_08.


* [ERROR] Response must be a valid 1–10 rating.
COMPUTE V_Q4_08_INVALID_CODES = 0.
IF ((NOT MISSING(Q4_08) AND NOT ANY(Q4_08, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10))) V_Q4_08_INVALID_CODES = 1.




* Question Q4_09.


* [ERROR] Response must be a valid 1–10 rating.
COMPUTE V_Q4_09_INVALID_CODES = 0.
IF ((NOT MISSING(Q4_09) AND NOT ANY(Q4_09, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10))) V_Q4_09_INVALID_CODES = 1.




* Question Q4_10.


* [ERROR] Response must be a valid 1–10 rating.
COMPUTE V_Q4_10_INVALID_CODES = 0.
IF ((NOT MISSING(Q4_10) AND NOT ANY(Q4_10, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10))) V_Q4_10_INVALID_CODES = 1.




* Question Q4_11.


* [ERROR] Response must be a valid 1–10 rating.
COMPUTE V_Q4_11_INVALID_CODES = 0.
IF ((NOT MISSING(Q4_11) AND NOT ANY(Q4_11, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10))) V_Q4_11_INVALID_CODES = 1.




* Question Q4_12.


* [ERROR] Response must be a valid 1–10 rating.
COMPUTE V_Q4_12_INVALID_CODES = 0.
IF ((NOT MISSING(Q4_12) AND NOT ANY(Q4_12, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10))) V_Q4_12_INVALID_CODES = 1.




* Question Q5_01.


* [ERROR] Response must be a valid 1–10 rating.
COMPUTE V_Q5_01_INVALID_CODES = 0.
IF ((NOT MISSING(Q5_01) AND NOT ANY(Q5_01, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10))) V_Q5_01_INVALID_CODES = 1.




* Question Q5_02.


* [ERROR] Response must be a valid 1–10 rating.
COMPUTE V_Q5_02_INVALID_CODES = 0.
IF ((NOT MISSING(Q5_02) AND NOT ANY(Q5_02, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10))) V_Q5_02_INVALID_CODES = 1.




* Question Q5_03.


* [ERROR] Response must be a valid 1–10 rating.
COMPUTE V_Q5_03_INVALID_CODES = 0.
IF ((NOT MISSING(Q5_03) AND NOT ANY(Q5_03, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10))) V_Q5_03_INVALID_CODES = 1.




* Question Q5_04.


* [ERROR] Response must be a valid 1–10 rating.
COMPUTE V_Q5_04_INVALID_CODES = 0.
IF ((NOT MISSING(Q5_04) AND NOT ANY(Q5_04, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10))) V_Q5_04_INVALID_CODES = 1.




* Question Q5_ROW_05.


* [ERROR] Response must be a valid 1–10 rating.
COMPUTE V_Q5_ROW_05_INVALID_CODES = 0.
IF ((NOT MISSING(Q5_ROW_05) AND NOT ANY(Q5_ROW_05, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10))) V_Q5_ROW_05_INVALID_CODES = 1.




* Question Q5_ROW_06.


* [ERROR] Response must be a valid 1–10 rating.
COMPUTE V_Q5_ROW_06_INVALID_CODES = 0.
IF ((NOT MISSING(Q5_ROW_06) AND NOT ANY(Q5_ROW_06, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10))) V_Q5_ROW_06_INVALID_CODES = 1.




* Question Q5_ROW_07.


* [ERROR] Response must be a valid 1–10 rating.
COMPUTE V_Q5_ROW_07_INVALID_CODES = 0.
IF ((NOT MISSING(Q5_ROW_07) AND NOT ANY(Q5_ROW_07, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10))) V_Q5_ROW_07_INVALID_CODES = 1.




* Question Q5_ROW_08.


* [ERROR] Response must be a valid 1–10 rating.
COMPUTE V_Q5_ROW_08_INVALID_CODES = 0.
IF ((NOT MISSING(Q5_ROW_08) AND NOT ANY(Q5_ROW_08, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10))) V_Q5_ROW_08_INVALID_CODES = 1.




* Question Q5_ROW_09.


* [ERROR] Response must be a valid 1–10 rating.
COMPUTE V_Q5_ROW_09_INVALID_CODES = 0.
IF ((NOT MISSING(Q5_ROW_09) AND NOT ANY(Q5_ROW_09, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10))) V_Q5_ROW_09_INVALID_CODES = 1.




* Question Q5_ROW_10.


* [ERROR] Response must be a valid 1–10 rating.
COMPUTE V_Q5_ROW_10_INVALID_CODES = 0.
IF ((NOT MISSING(Q5_ROW_10) AND NOT ANY(Q5_ROW_10, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10))) V_Q5_ROW_10_INVALID_CODES = 1.




* Question Q5_ROW_11.


* [ERROR] Response must be a valid 1–10 rating.
COMPUTE V_Q5_ROW_11_INVALID_CODES = 0.
IF ((NOT MISSING(Q5_ROW_11) AND NOT ANY(Q5_ROW_11, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10))) V_Q5_ROW_11_INVALID_CODES = 1.




* Question Q5_ROW_12.


* [ERROR] Response must be a valid 1–10 rating.
COMPUTE V_Q5_ROW_12_INVALID_CODES = 0.
IF ((NOT MISSING(Q5_ROW_12) AND NOT ANY(Q5_ROW_12, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10))) V_Q5_ROW_12_INVALID_CODES = 1.




* Question Q6_ROW_01.


* [ERROR] Response must be a valid Q6 rating from 1 through 10.
COMPUTE V_Q6_ROW_01_INVALID_CODES = 0.
IF ((NOT MISSING(Q6_ROW_01) AND NOT ANY(Q6_ROW_01, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10))) V_Q6_ROW_01_INVALID_CODES = 1.




* Question Q6_ROW_02.


* [ERROR] Response must be a valid Q6 rating from 1 through 10.
COMPUTE V_Q6_ROW_02_INVALID_CODES = 0.
IF ((NOT MISSING(Q6_ROW_02) AND NOT ANY(Q6_ROW_02, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10))) V_Q6_ROW_02_INVALID_CODES = 1.




* Question Q6_ROW_03.


* [ERROR] Response must be a valid Q6 rating from 1 through 10.
COMPUTE V_Q6_ROW_03_INVALID_CODES = 0.
IF ((NOT MISSING(Q6_ROW_03) AND NOT ANY(Q6_ROW_03, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10))) V_Q6_ROW_03_INVALID_CODES = 1.




* Question Q6_ROW_04.


* [ERROR] Response must be a valid Q6 rating from 1 through 10.
COMPUTE V_Q6_ROW_04_INVALID_CODES = 0.
IF ((NOT MISSING(Q6_ROW_04) AND NOT ANY(Q6_ROW_04, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10))) V_Q6_ROW_04_INVALID_CODES = 1.




* Question Q6_ROW_05.


* [ERROR] Response must be a valid Q6 rating from 1 through 10.
COMPUTE V_Q6_ROW_05_INVALID_CODES = 0.
IF ((NOT MISSING(Q6_ROW_05) AND NOT ANY(Q6_ROW_05, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10))) V_Q6_ROW_05_INVALID_CODES = 1.




* Question Q6_ROW_06.


* [ERROR] Response must be a valid Q6 rating from 1 through 10.
COMPUTE V_Q6_ROW_06_INVALID_CODES = 0.
IF ((NOT MISSING(Q6_ROW_06) AND NOT ANY(Q6_ROW_06, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10))) V_Q6_ROW_06_INVALID_CODES = 1.




* Question Q6_ROW_07.


* [ERROR] Response must be a valid Q6 rating from 1 through 10.
COMPUTE V_Q6_ROW_07_INVALID_CODES = 0.
IF ((NOT MISSING(Q6_ROW_07) AND NOT ANY(Q6_ROW_07, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10))) V_Q6_ROW_07_INVALID_CODES = 1.




* Question Q6_ROW_08.


* [ERROR] Response must be a valid Q6 rating from 1 through 10.
COMPUTE V_Q6_ROW_08_INVALID_CODES = 0.
IF ((NOT MISSING(Q6_ROW_08) AND NOT ANY(Q6_ROW_08, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10))) V_Q6_ROW_08_INVALID_CODES = 1.




* Question Q6_ROW_09.


* [ERROR] Response must be a valid Q6 rating from 1 through 10.
COMPUTE V_Q6_ROW_09_INVALID_CODES = 0.
IF ((NOT MISSING(Q6_ROW_09) AND NOT ANY(Q6_ROW_09, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10))) V_Q6_ROW_09_INVALID_CODES = 1.




* Question Q6_ROW_10.


* [ERROR] Response must be a valid Q6 rating from 1 through 10.
COMPUTE V_Q6_ROW_10_INVALID_CODES = 0.
IF ((NOT MISSING(Q6_ROW_10) AND NOT ANY(Q6_ROW_10, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10))) V_Q6_ROW_10_INVALID_CODES = 1.




* Question Q6_ROW_11.


* [ERROR] Response must be a valid Q6 rating from 1 through 10.
COMPUTE V_Q6_ROW_11_INVALID_CODES = 0.
IF ((NOT MISSING(Q6_ROW_11) AND NOT ANY(Q6_ROW_11, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10))) V_Q6_ROW_11_INVALID_CODES = 1.




* Question Q6_ROW_12.


* [ERROR] Response must be a valid Q6 rating from 1 through 10.
COMPUTE V_Q6_ROW_12_INVALID_CODES = 0.
IF ((NOT MISSING(Q6_ROW_12) AND NOT ANY(Q6_ROW_12, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10))) V_Q6_ROW_12_INVALID_CODES = 1.




* Question Q7_ROW_01_AFFECT.


* [ERROR] Response must be either Yes or No.
COMPUTE V_Q7_ROW_01_AFFECT_INVALID_CODES = 0.
IF ((NOT MISSING(Q7_ROW_01_AFFECT) AND NOT ANY(Q7_ROW_01_AFFECT, 1, 0))) V_Q7_ROW_01_AFFECT_INVALID_CODES = 1.




* Question Q7_ROW_01_POTENTIAL.


* [ERROR] Response must be a valid Q7 potential rating from 1 through 10.
COMPUTE V_Q7_ROW_01_POTENTIAL_INVALID_CODES = 0.
IF ((NOT MISSING(Q7_ROW_01_POTENTIAL) AND NOT ANY(Q7_ROW_01_POTENTIAL, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10))) V_Q7_ROW_01_POTENTIAL_INVALID_CODES = 1.




* Question Q7_ROW_02_AFFECT.


* [ERROR] Response must be either Yes or No.
COMPUTE V_Q7_ROW_02_AFFECT_INVALID_CODES = 0.
IF ((NOT MISSING(Q7_ROW_02_AFFECT) AND NOT ANY(Q7_ROW_02_AFFECT, 1, 0))) V_Q7_ROW_02_AFFECT_INVALID_CODES = 1.




* Question Q7_ROW_02_POTENTIAL.


* [ERROR] Response must be a valid Q7 potential rating from 1 through 10.
COMPUTE V_Q7_ROW_02_POTENTIAL_INVALID_CODES = 0.
IF ((NOT MISSING(Q7_ROW_02_POTENTIAL) AND NOT ANY(Q7_ROW_02_POTENTIAL, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10))) V_Q7_ROW_02_POTENTIAL_INVALID_CODES = 1.




* Question Q7_ROW_03_AFFECT.


* [ERROR] Response must be either Yes or No.
COMPUTE V_Q7_ROW_03_AFFECT_INVALID_CODES = 0.
IF ((NOT MISSING(Q7_ROW_03_AFFECT) AND NOT ANY(Q7_ROW_03_AFFECT, 1, 0))) V_Q7_ROW_03_AFFECT_INVALID_CODES = 1.




* Question Q7_ROW_03_POTENTIAL.


* [ERROR] Response must be a valid Q7 potential rating from 1 through 10.
COMPUTE V_Q7_ROW_03_POTENTIAL_INVALID_CODES = 0.
IF ((NOT MISSING(Q7_ROW_03_POTENTIAL) AND NOT ANY(Q7_ROW_03_POTENTIAL, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10))) V_Q7_ROW_03_POTENTIAL_INVALID_CODES = 1.




* Question Q7_ROW_04_AFFECT.


* [ERROR] Response must be either Yes or No.
COMPUTE V_Q7_ROW_04_AFFECT_INVALID_CODES = 0.
IF ((NOT MISSING(Q7_ROW_04_AFFECT) AND NOT ANY(Q7_ROW_04_AFFECT, 1, 0))) V_Q7_ROW_04_AFFECT_INVALID_CODES = 1.




* Question Q7_ROW_04_POTENTIAL.


* [ERROR] Response must be a valid Q7 potential rating from 1 through 10.
COMPUTE V_Q7_ROW_04_POTENTIAL_INVALID_CODES = 0.
IF ((NOT MISSING(Q7_ROW_04_POTENTIAL) AND NOT ANY(Q7_ROW_04_POTENTIAL, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10))) V_Q7_ROW_04_POTENTIAL_INVALID_CODES = 1.




* Question Q7_ROW_05_AFFECT.


* [ERROR] Response must be either Yes or No.
COMPUTE V_Q7_ROW_05_AFFECT_INVALID_CODES = 0.
IF ((NOT MISSING(Q7_ROW_05_AFFECT) AND NOT ANY(Q7_ROW_05_AFFECT, 1, 0))) V_Q7_ROW_05_AFFECT_INVALID_CODES = 1.




* Question Q7_ROW_05_POTENTIAL.


* [ERROR] Response must be a valid Q7 potential rating from 1 through 10.
COMPUTE V_Q7_ROW_05_POTENTIAL_INVALID_CODES = 0.
IF ((NOT MISSING(Q7_ROW_05_POTENTIAL) AND NOT ANY(Q7_ROW_05_POTENTIAL, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10))) V_Q7_ROW_05_POTENTIAL_INVALID_CODES = 1.




* Question Q7_ROW_06_AFFECT.


* [ERROR] Response must be either Yes or No.
COMPUTE V_Q7_ROW_06_AFFECT_INVALID_CODES = 0.
IF ((NOT MISSING(Q7_ROW_06_AFFECT) AND NOT ANY(Q7_ROW_06_AFFECT, 1, 0))) V_Q7_ROW_06_AFFECT_INVALID_CODES = 1.




* Question Q7_ROW_06_POTENTIAL.


* [ERROR] Response must be a valid Q7 potential rating from 1 through 10.
COMPUTE V_Q7_ROW_06_POTENTIAL_INVALID_CODES = 0.
IF ((NOT MISSING(Q7_ROW_06_POTENTIAL) AND NOT ANY(Q7_ROW_06_POTENTIAL, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10))) V_Q7_ROW_06_POTENTIAL_INVALID_CODES = 1.




* Question Q7_ROW_07_AFFECT.


* [ERROR] Response must be either Yes or No.
COMPUTE V_Q7_ROW_07_AFFECT_INVALID_CODES = 0.
IF ((NOT MISSING(Q7_ROW_07_AFFECT) AND NOT ANY(Q7_ROW_07_AFFECT, 1, 0))) V_Q7_ROW_07_AFFECT_INVALID_CODES = 1.




* Question Q7_ROW_07_POTENTIAL.


* [ERROR] Response must be one of the documented potential-for-improving-care ratings from 1 through 10.
COMPUTE V_VAL_Q7_ROW_07_POTENTIAL_CODES = 0.
IF ((NOT MISSING(Q7_ROW_07_POTENTIAL) AND NOT ANY(Q7_ROW_07_POTENTIAL, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10))) V_VAL_Q7_ROW_07_POTENTIAL_CODES = 1.




* Question Q7_ROW_08_AFFECT.


* [ERROR] Response must be Yes or No using the documented binary values.
COMPUTE V_VAL_Q7_ROW_08_AFFECT_CODES = 0.
IF ((NOT MISSING(Q7_ROW_08_AFFECT) AND NOT ANY(Q7_ROW_08_AFFECT, 1, 0))) V_VAL_Q7_ROW_08_AFFECT_CODES = 1.




* Question Q7_ROW_08_POTENTIAL.


* [ERROR] Response must be one of the documented potential-for-improving-care ratings from 1 through 10.
COMPUTE V_VAL_Q7_ROW_08_POTENTIAL_CODES = 0.
IF ((NOT MISSING(Q7_ROW_08_POTENTIAL) AND NOT ANY(Q7_ROW_08_POTENTIAL, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10))) V_VAL_Q7_ROW_08_POTENTIAL_CODES = 1.




* Question Q7_ROW_09_AFFECT.


* [ERROR] Response must be Yes or No using the documented binary values.
COMPUTE V_VAL_Q7_ROW_09_AFFECT_CODES = 0.
IF ((NOT MISSING(Q7_ROW_09_AFFECT) AND NOT ANY(Q7_ROW_09_AFFECT, 1, 0))) V_VAL_Q7_ROW_09_AFFECT_CODES = 1.




* Question Q7_ROW_09_POTENTIAL.


* [ERROR] Response must be one of the documented potential-for-improving-care ratings from 1 through 10.
COMPUTE V_VAL_Q7_ROW_09_POTENTIAL_CODES = 0.
IF ((NOT MISSING(Q7_ROW_09_POTENTIAL) AND NOT ANY(Q7_ROW_09_POTENTIAL, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10))) V_VAL_Q7_ROW_09_POTENTIAL_CODES = 1.




* Question Q7_ROW_10_AFFECT.


* [ERROR] Response must be Yes or No using the documented binary values.
COMPUTE V_VAL_Q7_ROW_10_AFFECT_CODES = 0.
IF ((NOT MISSING(Q7_ROW_10_AFFECT) AND NOT ANY(Q7_ROW_10_AFFECT, 1, 0))) V_VAL_Q7_ROW_10_AFFECT_CODES = 1.




* Question Q7_ROW_10_POTENTIAL.


* [ERROR] Response must be one of the documented potential-for-improving-care ratings from 1 through 10.
COMPUTE V_VAL_Q7_ROW_10_POTENTIAL_CODES = 0.
IF ((NOT MISSING(Q7_ROW_10_POTENTIAL) AND NOT ANY(Q7_ROW_10_POTENTIAL, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10))) V_VAL_Q7_ROW_10_POTENTIAL_CODES = 1.




* Question Q7_ROW_11_AFFECT.


* [ERROR] Response must be Yes or No using the documented binary values.
COMPUTE V_VAL_Q7_ROW_11_AFFECT_CODES = 0.
IF ((NOT MISSING(Q7_ROW_11_AFFECT) AND NOT ANY(Q7_ROW_11_AFFECT, 1, 0))) V_VAL_Q7_ROW_11_AFFECT_CODES = 1.




* Question Q7_ROW_11_POTENTIAL.


* [ERROR] Response must be one of the documented potential-for-improving-care ratings from 1 through 10.
COMPUTE V_VAL_Q7_ROW_11_POTENTIAL_CODES = 0.
IF ((NOT MISSING(Q7_ROW_11_POTENTIAL) AND NOT ANY(Q7_ROW_11_POTENTIAL, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10))) V_VAL_Q7_ROW_11_POTENTIAL_CODES = 1.




* Question Q7_ROW_12_AFFECT.


* [ERROR] Response must be Yes or No using the documented binary values.
COMPUTE V_VAL_Q7_ROW_12_AFFECT_CODES = 0.
IF ((NOT MISSING(Q7_ROW_12_AFFECT) AND NOT ANY(Q7_ROW_12_AFFECT, 1, 0))) V_VAL_Q7_ROW_12_AFFECT_CODES = 1.




* Question Q7_ROW_12_POTENTIAL.


* [ERROR] Response must be one of the documented potential-for-improving-care ratings from 1 through 10.
COMPUTE V_VAL_Q7_ROW_12_POTENTIAL_CODES = 0.
IF ((NOT MISSING(Q7_ROW_12_POTENTIAL) AND NOT ANY(Q7_ROW_12_POTENTIAL, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10))) V_VAL_Q7_ROW_12_POTENTIAL_CODES = 1.




* Question Q7_ROW_13_AFFECT.


* [ERROR] Response must be Yes or No using the documented binary values.
COMPUTE V_VAL_Q7_ROW_13_AFFECT_CODES = 0.
IF ((NOT MISSING(Q7_ROW_13_AFFECT) AND NOT ANY(Q7_ROW_13_AFFECT, 1, 0))) V_VAL_Q7_ROW_13_AFFECT_CODES = 1.




* Question Q7_ROW_13_POTENTIAL.


* [ERROR] Response must be one of the documented potential-for-improving-care ratings from 1 through 10.
COMPUTE V_VAL_Q7_ROW_13_POTENTIAL_CODES = 0.
IF ((NOT MISSING(Q7_ROW_13_POTENTIAL) AND NOT ANY(Q7_ROW_13_POTENTIAL, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10))) V_VAL_Q7_ROW_13_POTENTIAL_CODES = 1.




* Question Q7_ROW_14_AFFECT.


* [ERROR] Response must be Yes or No using the documented binary values.
COMPUTE V_VAL_Q7_ROW_14_AFFECT_CODES = 0.
IF ((NOT MISSING(Q7_ROW_14_AFFECT) AND NOT ANY(Q7_ROW_14_AFFECT, 1, 0))) V_VAL_Q7_ROW_14_AFFECT_CODES = 1.




* Question Q7_ROW_14_POTENTIAL.


* [ERROR] Response must be one of the documented potential-for-improving-care ratings from 1 through 10.
COMPUTE V_VAL_Q7_ROW_14_POTENTIAL_CODES = 0.
IF ((NOT MISSING(Q7_ROW_14_POTENTIAL) AND NOT ANY(Q7_ROW_14_POTENTIAL, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10))) V_VAL_Q7_ROW_14_POTENTIAL_CODES = 1.




* Question Q7_ROW_15_AFFECT.


* [ERROR] Response must be Yes or No using the documented binary values.
COMPUTE V_VAL_Q7_ROW_15_AFFECT_CODES = 0.
IF ((NOT MISSING(Q7_ROW_15_AFFECT) AND NOT ANY(Q7_ROW_15_AFFECT, 1, 0))) V_VAL_Q7_ROW_15_AFFECT_CODES = 1.




* Question Q7_ROW_15_POTENTIAL.


* [ERROR] Response must be one of the documented potential-for-improving-care ratings from 1 through 10.
COMPUTE V_VAL_Q7_ROW_15_POTENTIAL_CODES = 0.
IF ((NOT MISSING(Q7_ROW_15_POTENTIAL) AND NOT ANY(Q7_ROW_15_POTENTIAL, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10))) V_VAL_Q7_ROW_15_POTENTIAL_CODES = 1.




* Question Q7_ROW_16_AFFECT.


* [ERROR] Response must be Yes or No using the documented binary values.
COMPUTE V_VAL_Q7_ROW_16_AFFECT_CODES = 0.
IF ((NOT MISSING(Q7_ROW_16_AFFECT) AND NOT ANY(Q7_ROW_16_AFFECT, 1, 0))) V_VAL_Q7_ROW_16_AFFECT_CODES = 1.




* Question Q7_ROW_16_POTENTIAL.


* [ERROR] Response must be one of the documented potential-for-improving-care ratings from 1 through 10.
COMPUTE V_VAL_Q7_ROW_16_POTENTIAL_CODES = 0.
IF ((NOT MISSING(Q7_ROW_16_POTENTIAL) AND NOT ANY(Q7_ROW_16_POTENTIAL, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10))) V_VAL_Q7_ROW_16_POTENTIAL_CODES = 1.




* Question Q7_ROW_17_AFFECT.


* [ERROR] Response must be Yes or No using the documented binary values.
COMPUTE V_VAL_Q7_ROW_17_AFFECT_CODES = 0.
IF ((NOT MISSING(Q7_ROW_17_AFFECT) AND NOT ANY(Q7_ROW_17_AFFECT, 1, 0))) V_VAL_Q7_ROW_17_AFFECT_CODES = 1.




* Question Q7_ROW_17_POTENTIAL.


* [ERROR] Response must be one of the documented potential-for-improving-care ratings from 1 through 10.
COMPUTE V_VAL_Q7_ROW_17_POTENTIAL_CODES = 0.
IF ((NOT MISSING(Q7_ROW_17_POTENTIAL) AND NOT ANY(Q7_ROW_17_POTENTIAL, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10))) V_VAL_Q7_ROW_17_POTENTIAL_CODES = 1.




* Question Q7_ROW_18_AFFECT.


* [ERROR] Response must be Yes or No using the documented binary values.
COMPUTE V_VAL_Q7_ROW_18_AFFECT_CODES = 0.
IF ((NOT MISSING(Q7_ROW_18_AFFECT) AND NOT ANY(Q7_ROW_18_AFFECT, 1, 0))) V_VAL_Q7_ROW_18_AFFECT_CODES = 1.




* Question Q7_ROW_18_POTENTIAL.


* [ERROR] Response must be one of the documented potential-for-improving-care ratings from 1 through 10.
COMPUTE V_VAL_Q7_ROW_18_POTENTIAL_CODES = 0.
IF ((NOT MISSING(Q7_ROW_18_POTENTIAL) AND NOT ANY(Q7_ROW_18_POTENTIAL, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10))) V_VAL_Q7_ROW_18_POTENTIAL_CODES = 1.




* Question Q7_ROW_19_AFFECT.


* [ERROR] Response must be Yes or No using the documented binary values.
COMPUTE V_VAL_Q7_ROW_19_AFFECT_CODES = 0.
IF ((NOT MISSING(Q7_ROW_19_AFFECT) AND NOT ANY(Q7_ROW_19_AFFECT, 1, 0))) V_VAL_Q7_ROW_19_AFFECT_CODES = 1.




* Question Q7_ROW_19_POTENTIAL.


* [ERROR] Response must be one of the documented potential-for-improving-care ratings from 1 through 10.
COMPUTE V_VAL_Q7_ROW_19_POTENTIAL_CODES = 0.
IF ((NOT MISSING(Q7_ROW_19_POTENTIAL) AND NOT ANY(Q7_ROW_19_POTENTIAL, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10))) V_VAL_Q7_ROW_19_POTENTIAL_CODES = 1.




* Question Q7_ROW_20_AFFECT.


* [ERROR] Accept only Yes or No response codes.
COMPUTE V_Q7_ROW_20_AFFECT_INVALID_CODES = 0.
IF ((NOT MISSING(Q7_ROW_20_AFFECT) AND NOT ANY(Q7_ROW_20_AFFECT, 1, 0))) V_Q7_ROW_20_AFFECT_INVALID_CODES = 1.




* Question Q7_ROW_20_POTENTIAL.


* [ERROR] Accept only potential-for-improvement ratings from 1 through 10.
COMPUTE V_Q7_ROW_20_POTENTIAL_INVALID_CODES = 0.
IF ((NOT MISSING(Q7_ROW_20_POTENTIAL) AND NOT ANY(Q7_ROW_20_POTENTIAL, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10))) V_Q7_ROW_20_POTENTIAL_INVALID_CODES = 1.




* Question Q8_ROW_01.


* [ERROR] Accept only a top-three rank, with a maximum permitted rank of 3.
COMPUTE V_Q8_ROW_01_RANKING = 0.
IF ((NOT MISSING(Q8_ROW_01_1ST) AND NOT RANGE(Q8_ROW_01_1ST, 1, 3)) OR (NOT MISSING(Q8_ROW_01_2ND) AND NOT RANGE(Q8_ROW_01_2ND, 1, 3)) OR (NOT MISSING(Q8_ROW_01_3RD) AND NOT RANGE(Q8_ROW_01_3RD, 1, 3))) V_Q8_ROW_01_RANKING = 1.




* Question Q8_ROW_02.


* [ERROR] Accept only a top-three rank, with a maximum permitted rank of 3.
COMPUTE V_Q8_ROW_02_RANKING = 0.
IF ((NOT MISSING(Q8_ROW_02_1ST) AND NOT RANGE(Q8_ROW_02_1ST, 1, 3)) OR (NOT MISSING(Q8_ROW_02_2ND) AND NOT RANGE(Q8_ROW_02_2ND, 1, 3)) OR (NOT MISSING(Q8_ROW_02_3RD) AND NOT RANGE(Q8_ROW_02_3RD, 1, 3))) V_Q8_ROW_02_RANKING = 1.




* Question Q8_ROW_03.


* [ERROR] Accept only a top-three rank, with a maximum permitted rank of 3.
COMPUTE V_Q8_ROW_03_RANKING = 0.
IF ((NOT MISSING(Q8_ROW_03_1ST) AND NOT RANGE(Q8_ROW_03_1ST, 1, 3)) OR (NOT MISSING(Q8_ROW_03_2ND) AND NOT RANGE(Q8_ROW_03_2ND, 1, 3)) OR (NOT MISSING(Q8_ROW_03_3RD) AND NOT RANGE(Q8_ROW_03_3RD, 1, 3))) V_Q8_ROW_03_RANKING = 1.




* Question Q8_R04.


* [ERROR] Accept a top-three rank; the documented Not in Top 3 response is also valid.
COMPUTE V_Q8_R04_RANKING = 0.
IF ((NOT MISSING(Q8_R04_1) AND NOT RANGE(Q8_R04_1, 1, 3)) OR (NOT MISSING(Q8_R04_2) AND NOT RANGE(Q8_R04_2, 1, 3)) OR (NOT MISSING(Q8_R04_3) AND NOT RANGE(Q8_R04_3, 1, 3)) OR (NOT MISSING(Q8_R04_NOT_TOP_3) AND NOT RANGE(Q8_R04_NOT_TOP_3, 1, 3))) V_Q8_R04_RANKING = 1.




* Question Q8_R05.


* [ERROR] Accept a top-three rank; the documented Not in Top 3 response is also valid.
COMPUTE V_Q8_R05_RANKING = 0.
IF ((NOT MISSING(Q8_R05_1) AND NOT RANGE(Q8_R05_1, 1, 3)) OR (NOT MISSING(Q8_R05_2) AND NOT RANGE(Q8_R05_2, 1, 3)) OR (NOT MISSING(Q8_R05_3) AND NOT RANGE(Q8_R05_3, 1, 3)) OR (NOT MISSING(Q8_R05_NOT_TOP_3) AND NOT RANGE(Q8_R05_NOT_TOP_3, 1, 3))) V_Q8_R05_RANKING = 1.




* Question Q8_R06.


* [ERROR] Accept a top-three rank; the documented Not in Top 3 response is also valid.
COMPUTE V_Q8_R06_RANKING = 0.
IF ((NOT MISSING(Q8_R06_1) AND NOT RANGE(Q8_R06_1, 1, 3)) OR (NOT MISSING(Q8_R06_2) AND NOT RANGE(Q8_R06_2, 1, 3)) OR (NOT MISSING(Q8_R06_3) AND NOT RANGE(Q8_R06_3, 1, 3)) OR (NOT MISSING(Q8_R06_NOT_TOP_3) AND NOT RANGE(Q8_R06_NOT_TOP_3, 1, 3))) V_Q8_R06_RANKING = 1.




* Question Q8_R07.


* [ERROR] Accept a top-three rank; the documented Not in Top 3 response is also valid.
COMPUTE V_Q8_R07_RANKING = 0.
IF ((NOT MISSING(Q8_R07_1) AND NOT RANGE(Q8_R07_1, 1, 3)) OR (NOT MISSING(Q8_R07_2) AND NOT RANGE(Q8_R07_2, 1, 3)) OR (NOT MISSING(Q8_R07_3) AND NOT RANGE(Q8_R07_3, 1, 3)) OR (NOT MISSING(Q8_R07_NOT_TOP_3) AND NOT RANGE(Q8_R07_NOT_TOP_3, 1, 3))) V_Q8_R07_RANKING = 1.




* Question Q8_R08.


* [ERROR] Accept a top-three rank; the documented Not in Top 3 response is also valid.
COMPUTE V_Q8_R08_RANKING = 0.
IF ((NOT MISSING(Q8_R08_1) AND NOT RANGE(Q8_R08_1, 1, 3)) OR (NOT MISSING(Q8_R08_2) AND NOT RANGE(Q8_R08_2, 1, 3)) OR (NOT MISSING(Q8_R08_3) AND NOT RANGE(Q8_R08_3, 1, 3)) OR (NOT MISSING(Q8_R08_NOT_TOP_3) AND NOT RANGE(Q8_R08_NOT_TOP_3, 1, 3))) V_Q8_R08_RANKING = 1.




* Question Q8_R09.


* [ERROR] Accept a top-three rank; the documented Not in Top 3 response is also valid.
COMPUTE V_Q8_R09_RANKING = 0.
IF ((NOT MISSING(Q8_R09_1) AND NOT RANGE(Q8_R09_1, 1, 3)) OR (NOT MISSING(Q8_R09_2) AND NOT RANGE(Q8_R09_2, 1, 3)) OR (NOT MISSING(Q8_R09_3) AND NOT RANGE(Q8_R09_3, 1, 3)) OR (NOT MISSING(Q8_R09_NOT_TOP_3) AND NOT RANGE(Q8_R09_NOT_TOP_3, 1, 3))) V_Q8_R09_RANKING = 1.




* Question Q8_R10.


* [ERROR] Accept a top-three rank; the documented Not in Top 3 response is also valid.
COMPUTE V_Q8_R10_RANKING = 0.
IF ((NOT MISSING(Q8_R10_1) AND NOT RANGE(Q8_R10_1, 1, 3)) OR (NOT MISSING(Q8_R10_2) AND NOT RANGE(Q8_R10_2, 1, 3)) OR (NOT MISSING(Q8_R10_3) AND NOT RANGE(Q8_R10_3, 1, 3)) OR (NOT MISSING(Q8_R10_NOT_TOP_3) AND NOT RANGE(Q8_R10_NOT_TOP_3, 1, 3))) V_Q8_R10_RANKING = 1.




* Question Q8_R11.


* [ERROR] Accept a top-three rank; the documented Not in Top 3 response is also valid.
COMPUTE V_Q8_R11_RANKING = 0.
IF ((NOT MISSING(Q8_R11_1) AND NOT RANGE(Q8_R11_1, 1, 3)) OR (NOT MISSING(Q8_R11_2) AND NOT RANGE(Q8_R11_2, 1, 3)) OR (NOT MISSING(Q8_R11_3) AND NOT RANGE(Q8_R11_3, 1, 3)) OR (NOT MISSING(Q8_R11_NOT_TOP_3) AND NOT RANGE(Q8_R11_NOT_TOP_3, 1, 3))) V_Q8_R11_RANKING = 1.




* Question Q8_R12.


* [ERROR] Accept a top-three rank; the documented Not in Top 3 response is also valid.
COMPUTE V_Q8_R12_RANKING = 0.
IF ((NOT MISSING(Q8_R12_1) AND NOT RANGE(Q8_R12_1, 1, 3)) OR (NOT MISSING(Q8_R12_2) AND NOT RANGE(Q8_R12_2, 1, 3)) OR (NOT MISSING(Q8_R12_3) AND NOT RANGE(Q8_R12_3, 1, 3)) OR (NOT MISSING(Q8_R12_NOT_TOP_3) AND NOT RANGE(Q8_R12_NOT_TOP_3, 1, 3))) V_Q8_R12_RANKING = 1.




* Question Q9_R01.


* [ERROR] Accept only the five documented agreement-scale response codes.
COMPUTE V_Q9_R01_INVALID_CODES = 0.
IF ((NOT MISSING(Q9_R01) AND NOT ANY(Q9_R01, 1, 2, 3, 4, 5))) V_Q9_R01_INVALID_CODES = 1.




* Question Q9_R02.


* [ERROR] Accept only the five documented agreement-scale response codes.
COMPUTE V_Q9_R02_INVALID_CODES = 0.
IF ((NOT MISSING(Q9_R02) AND NOT ANY(Q9_R02, 1, 2, 3, 4, 5))) V_Q9_R02_INVALID_CODES = 1.




* Question Q9_R03.


* [ERROR] Accept only the five documented agreement-scale response codes.
COMPUTE V_Q9_R03_INVALID_CODES = 0.
IF ((NOT MISSING(Q9_R03) AND NOT ANY(Q9_R03, 1, 2, 3, 4, 5))) V_Q9_R03_INVALID_CODES = 1.




* Question Q9_R04.


* [ERROR] Accept only the five documented agreement-scale response codes.
COMPUTE V_Q9_R04_INVALID_CODES = 0.
IF ((NOT MISSING(Q9_R04) AND NOT ANY(Q9_R04, 1, 2, 3, 4, 5))) V_Q9_R04_INVALID_CODES = 1.




* Question Q9_R05.


* [ERROR] Accept only the five documented agreement-scale response codes.
COMPUTE V_Q9_R05_INVALID_CODES = 0.
IF ((NOT MISSING(Q9_R05) AND NOT ANY(Q9_R05, 1, 2, 3, 4, 5))) V_Q9_R05_INVALID_CODES = 1.




* Question Q9_R06.


* [ERROR] Accept only the five documented agreement-scale response codes.
COMPUTE V_Q9_R06_INVALID_CODES = 0.
IF ((NOT MISSING(Q9_R06) AND NOT ANY(Q9_R06, 1, 2, 3, 4, 5))) V_Q9_R06_INVALID_CODES = 1.




* Question Q9_R07.


* [ERROR] Accept only the five documented agreement-scale response codes.
COMPUTE V_Q9_R07_INVALID_CODES = 0.
IF ((NOT MISSING(Q9_R07) AND NOT ANY(Q9_R07, 1, 2, 3, 4, 5))) V_Q9_R07_INVALID_CODES = 1.




* Question Q9_R08.


* [ERROR] Accept only the five documented agreement-scale response codes.
COMPUTE V_Q9_R08_INVALID_CODES = 0.
IF ((NOT MISSING(Q9_R08) AND NOT ANY(Q9_R08, 1, 2, 3, 4, 5))) V_Q9_R08_INVALID_CODES = 1.





*===============================================================================.
* SECTION Classification: Classification.
*===============================================================================.

* Question 10.
* No validation generated: The documented age response codes are present, but the canonical question has no SPSS variable to target.



* Question 11.
* No validation generated: A 1–30 day range is documented, but the canonical numeric question has no SPSS variable to target.



* Question 12.
* No validation generated: The documented gender response codes are present, but the canonical question has no SPSS variable to target.



* Question 13.
* No validation generated: Classification question is optional and has no canonical variable, so response-code validation cannot be safely defined.



* Question 14.
* No validation generated: Classification question is optional and has no canonical variable, so response-code validation cannot be safely defined.



* Question 15.
* No validation generated: Classification question is optional and has no canonical variable, so response-code validation cannot be safely defined.



* Question 16.
* No validation generated: Classification question is optional and has no canonical variable, so response-code validation cannot be safely defined.



* Question 17.
* No validation generated: Classification question is optional and has no canonical variable, so response-code validation cannot be safely defined.



* Question 18.
* No validation generated: Percentage allocation evidence is present, but no canonical variable or component variables are supplied, so numeric-range and total validation cannot be safely defined.



* Question 19.
* No validation generated: The question has a documented conditional route and numeric range, but no canonical variable or routing variable is supplied, so validation cannot be safely defined.




*===============================================================================.
* SECTION Classification purposes only: Classification purposes only.
*===============================================================================.

* Question 20.
* No validation generated: The question has a documented conditional route and numeric range, but no canonical variable or routing variable is supplied, so validation cannot be safely defined.



* Question 21.
* No validation generated: The question has a documented conditional route and response options, but no canonical variable or routing variable is supplied, so validation cannot be safely defined.




*===============================================================================.
* FINAL VALIDATION SUMMARY.
*===============================================================================.
COMPUTE VALIDATION_OVERALL = MAX(V_S1_MANDATORY, V_S1_CODES, V_S1_SCREENOUT, V_S2_MANDATORY, V_S2_CODES, V_S2_SCREENOUT, V_S3_MANDATORY, V_S3_CODES, V_S3_SCREENOUT, V_S4_MANDATORY, V_S4_RANGE, V_S4_SCREENOUT_LOW, V_S4_SCREENOUT_HIGH, V_S5_MANDATORY, V_S5_CODES, V_S5_SCREENOUT, V_S6_MANDATORY, V_S6_CODES, V_S6_SCREENOUT, V_S7_MANDATORY, V_S7_CODES, V_S8_TOTAL, V_S8_R1_MANDATORY, V_S8_R1_RANGE, V_S8_R2_MANDATORY, V_S8_R2_RANGE, V_S8_R3_MANDATORY, V_S8_R3_RANGE, V_S8_R4_MANDATORY, V_S8_R4_RANGE, V_S9_MANDATORY, V_S9_CODES, V_S10_MANDATORY, V_S10_CODES, V_Q1_01_MANDATORY, V_Q1_01_RANGE, V_Q1_02_MANDATORY, V_Q1_02_RANGE, V_Q1_03_MANDATORY, V_Q1_03_RANGE, V_Q1_04_MANDATORY, V_Q1_04_RANGE, V_Q1_05_MANDATORY, V_Q1_05_RANGE, V_Q1_06_MANDATORY, V_Q1_06_RANGE, V_Q1_07_MANDATORY, V_Q1_07_RANGE, V_Q1_08_MANDATORY, V_Q1_08_RANGE, V_Q1_09_MANDATORY, V_Q1_09_RANGE, V_Q1_10_MANDATORY, V_Q1_10_RANGE, V_Q1_11_RANGE, V_Q1_12_RANGE, V_Q2_01_RANGE, V_Q2_02_RANGE, V_Q2_03_RANGE, V_Q2_04_RANGE, V_Q2_05_RANGE, V_Q2_06_RANGE, V_Q2_07_RANGE, V_Q2_08_RANGE, V_Q2_09_RANGE, V_Q2_10_RANGE, V_Q2_11_RANGE, V_Q2_12_RANGE, V_Q3_01_RANGE, V_Q3_02_RANGE, V_Q3_03_RANGE, V_Q3_04_RANGE, V_Q3_05_RANGE, V_Q3_06_RANGE, V_Q3_07_RANGE, V_Q3_08_RANGE, V_Q3_09_RANGE, V_Q3_10_RANGE, V_Q3_11_RANGE, V_Q4_01_INVALID_CODES, V_Q4_02_INVALID_CODES, V_Q4_03_INVALID_CODES, V_Q4_04_INVALID_CODES, V_Q4_05_INVALID_CODES, V_Q4_06_INVALID_CODES, V_Q4_07_INVALID_CODES, V_Q4_08_INVALID_CODES, V_Q4_09_INVALID_CODES, V_Q4_10_INVALID_CODES, V_Q4_11_INVALID_CODES, V_Q4_12_INVALID_CODES, V_Q5_01_INVALID_CODES, V_Q5_02_INVALID_CODES, V_Q5_03_INVALID_CODES, V_Q5_04_INVALID_CODES, V_Q5_ROW_05_INVALID_CODES, V_Q5_ROW_06_INVALID_CODES, V_Q5_ROW_07_INVALID_CODES, V_Q5_ROW_08_INVALID_CODES, V_Q5_ROW_09_INVALID_CODES, V_Q5_ROW_10_INVALID_CODES, V_Q5_ROW_11_INVALID_CODES, V_Q5_ROW_12_INVALID_CODES, V_Q6_ROW_01_INVALID_CODES, V_Q6_ROW_02_INVALID_CODES, V_Q6_ROW_03_INVALID_CODES, V_Q6_ROW_04_INVALID_CODES, V_Q6_ROW_05_INVALID_CODES, V_Q6_ROW_06_INVALID_CODES, V_Q6_ROW_07_INVALID_CODES, V_Q6_ROW_08_INVALID_CODES, V_Q6_ROW_09_INVALID_CODES, V_Q6_ROW_10_INVALID_CODES, V_Q6_ROW_11_INVALID_CODES, V_Q6_ROW_12_INVALID_CODES, V_Q7_ROW_01_AFFECT_INVALID_CODES, V_Q7_ROW_01_POTENTIAL_INVALID_CODES, V_Q7_ROW_02_AFFECT_INVALID_CODES, V_Q7_ROW_02_POTENTIAL_INVALID_CODES, V_Q7_ROW_03_AFFECT_INVALID_CODES, V_Q7_ROW_03_POTENTIAL_INVALID_CODES, V_Q7_ROW_04_AFFECT_INVALID_CODES, V_Q7_ROW_04_POTENTIAL_INVALID_CODES, V_Q7_ROW_05_AFFECT_INVALID_CODES, V_Q7_ROW_05_POTENTIAL_INVALID_CODES, V_Q7_ROW_06_AFFECT_INVALID_CODES, V_Q7_ROW_06_POTENTIAL_INVALID_CODES, V_Q7_ROW_07_AFFECT_INVALID_CODES, V_VAL_Q7_ROW_07_POTENTIAL_CODES, V_VAL_Q7_ROW_08_AFFECT_CODES, V_VAL_Q7_ROW_08_POTENTIAL_CODES, V_VAL_Q7_ROW_09_AFFECT_CODES, V_VAL_Q7_ROW_09_POTENTIAL_CODES, V_VAL_Q7_ROW_10_AFFECT_CODES, V_VAL_Q7_ROW_10_POTENTIAL_CODES, V_VAL_Q7_ROW_11_AFFECT_CODES, V_VAL_Q7_ROW_11_POTENTIAL_CODES, V_VAL_Q7_ROW_12_AFFECT_CODES, V_VAL_Q7_ROW_12_POTENTIAL_CODES, V_VAL_Q7_ROW_13_AFFECT_CODES, V_VAL_Q7_ROW_13_POTENTIAL_CODES, V_VAL_Q7_ROW_14_AFFECT_CODES, V_VAL_Q7_ROW_14_POTENTIAL_CODES, V_VAL_Q7_ROW_15_AFFECT_CODES, V_VAL_Q7_ROW_15_POTENTIAL_CODES, V_VAL_Q7_ROW_16_AFFECT_CODES, V_VAL_Q7_ROW_16_POTENTIAL_CODES, V_VAL_Q7_ROW_17_AFFECT_CODES, V_VAL_Q7_ROW_17_POTENTIAL_CODES, V_VAL_Q7_ROW_18_AFFECT_CODES, V_VAL_Q7_ROW_18_POTENTIAL_CODES, V_VAL_Q7_ROW_19_AFFECT_CODES, V_VAL_Q7_ROW_19_POTENTIAL_CODES, V_Q7_ROW_20_AFFECT_INVALID_CODES, V_Q7_ROW_20_POTENTIAL_INVALID_CODES, V_Q8_ROW_01_RANKING, V_Q8_ROW_02_RANKING, V_Q8_ROW_03_RANKING, V_Q8_R04_RANKING, V_Q8_R05_RANKING, V_Q8_R06_RANKING, V_Q8_R07_RANKING, V_Q8_R08_RANKING, V_Q8_R09_RANKING, V_Q8_R10_RANKING, V_Q8_R11_RANKING, V_Q8_R12_RANKING, V_Q9_R01_INVALID_CODES, V_Q9_R02_INVALID_CODES, V_Q9_R03_INVALID_CODES, V_Q9_R04_INVALID_CODES, V_Q9_R05_INVALID_CODES, V_Q9_R06_INVALID_CODES, V_Q9_R07_INVALID_CODES, V_Q9_R08_INVALID_CODES).
FREQUENCIES VARIABLES=V_S1_MANDATORY V_S1_CODES V_S1_SCREENOUT V_S2_MANDATORY V_S2_CODES V_S2_SCREENOUT V_S3_MANDATORY V_S3_CODES V_S3_SCREENOUT V_S4_MANDATORY V_S4_RANGE V_S4_SCREENOUT_LOW V_S4_SCREENOUT_HIGH V_S5_MANDATORY V_S5_CODES V_S5_SCREENOUT V_S6_MANDATORY V_S6_CODES V_S6_SCREENOUT V_S7_MANDATORY V_S7_CODES V_S8_TOTAL V_S8_R1_MANDATORY V_S8_R1_RANGE V_S8_R2_MANDATORY V_S8_R2_RANGE V_S8_R3_MANDATORY V_S8_R3_RANGE V_S8_R4_MANDATORY V_S8_R4_RANGE V_S9_MANDATORY V_S9_CODES V_S10_MANDATORY V_S10_CODES V_Q1_01_MANDATORY V_Q1_01_RANGE V_Q1_02_MANDATORY V_Q1_02_RANGE V_Q1_03_MANDATORY V_Q1_03_RANGE V_Q1_04_MANDATORY V_Q1_04_RANGE V_Q1_05_MANDATORY V_Q1_05_RANGE V_Q1_06_MANDATORY V_Q1_06_RANGE V_Q1_07_MANDATORY V_Q1_07_RANGE V_Q1_08_MANDATORY V_Q1_08_RANGE V_Q1_09_MANDATORY V_Q1_09_RANGE V_Q1_10_MANDATORY V_Q1_10_RANGE V_Q1_11_RANGE V_Q1_12_RANGE V_Q2_01_RANGE V_Q2_02_RANGE V_Q2_03_RANGE V_Q2_04_RANGE V_Q2_05_RANGE V_Q2_06_RANGE V_Q2_07_RANGE V_Q2_08_RANGE V_Q2_09_RANGE V_Q2_10_RANGE V_Q2_11_RANGE V_Q2_12_RANGE V_Q3_01_RANGE V_Q3_02_RANGE V_Q3_03_RANGE V_Q3_04_RANGE V_Q3_05_RANGE V_Q3_06_RANGE V_Q3_07_RANGE V_Q3_08_RANGE V_Q3_09_RANGE V_Q3_10_RANGE V_Q3_11_RANGE V_Q4_01_INVALID_CODES V_Q4_02_INVALID_CODES V_Q4_03_INVALID_CODES V_Q4_04_INVALID_CODES V_Q4_05_INVALID_CODES V_Q4_06_INVALID_CODES V_Q4_07_INVALID_CODES V_Q4_08_INVALID_CODES V_Q4_09_INVALID_CODES V_Q4_10_INVALID_CODES V_Q4_11_INVALID_CODES V_Q4_12_INVALID_CODES V_Q5_01_INVALID_CODES V_Q5_02_INVALID_CODES V_Q5_03_INVALID_CODES V_Q5_04_INVALID_CODES V_Q5_ROW_05_INVALID_CODES V_Q5_ROW_06_INVALID_CODES V_Q5_ROW_07_INVALID_CODES V_Q5_ROW_08_INVALID_CODES V_Q5_ROW_09_INVALID_CODES V_Q5_ROW_10_INVALID_CODES V_Q5_ROW_11_INVALID_CODES V_Q5_ROW_12_INVALID_CODES V_Q6_ROW_01_INVALID_CODES V_Q6_ROW_02_INVALID_CODES V_Q6_ROW_03_INVALID_CODES V_Q6_ROW_04_INVALID_CODES V_Q6_ROW_05_INVALID_CODES V_Q6_ROW_06_INVALID_CODES V_Q6_ROW_07_INVALID_CODES V_Q6_ROW_08_INVALID_CODES V_Q6_ROW_09_INVALID_CODES V_Q6_ROW_10_INVALID_CODES V_Q6_ROW_11_INVALID_CODES V_Q6_ROW_12_INVALID_CODES V_Q7_ROW_01_AFFECT_INVALID_CODES V_Q7_ROW_01_POTENTIAL_INVALID_CODES V_Q7_ROW_02_AFFECT_INVALID_CODES V_Q7_ROW_02_POTENTIAL_INVALID_CODES V_Q7_ROW_03_AFFECT_INVALID_CODES V_Q7_ROW_03_POTENTIAL_INVALID_CODES V_Q7_ROW_04_AFFECT_INVALID_CODES V_Q7_ROW_04_POTENTIAL_INVALID_CODES V_Q7_ROW_05_AFFECT_INVALID_CODES V_Q7_ROW_05_POTENTIAL_INVALID_CODES V_Q7_ROW_06_AFFECT_INVALID_CODES V_Q7_ROW_06_POTENTIAL_INVALID_CODES V_Q7_ROW_07_AFFECT_INVALID_CODES V_VAL_Q7_ROW_07_POTENTIAL_CODES V_VAL_Q7_ROW_08_AFFECT_CODES V_VAL_Q7_ROW_08_POTENTIAL_CODES V_VAL_Q7_ROW_09_AFFECT_CODES V_VAL_Q7_ROW_09_POTENTIAL_CODES V_VAL_Q7_ROW_10_AFFECT_CODES V_VAL_Q7_ROW_10_POTENTIAL_CODES V_VAL_Q7_ROW_11_AFFECT_CODES V_VAL_Q7_ROW_11_POTENTIAL_CODES V_VAL_Q7_ROW_12_AFFECT_CODES V_VAL_Q7_ROW_12_POTENTIAL_CODES V_VAL_Q7_ROW_13_AFFECT_CODES V_VAL_Q7_ROW_13_POTENTIAL_CODES V_VAL_Q7_ROW_14_AFFECT_CODES V_VAL_Q7_ROW_14_POTENTIAL_CODES V_VAL_Q7_ROW_15_AFFECT_CODES V_VAL_Q7_ROW_15_POTENTIAL_CODES V_VAL_Q7_ROW_16_AFFECT_CODES V_VAL_Q7_ROW_16_POTENTIAL_CODES V_VAL_Q7_ROW_17_AFFECT_CODES V_VAL_Q7_ROW_17_POTENTIAL_CODES V_VAL_Q7_ROW_18_AFFECT_CODES V_VAL_Q7_ROW_18_POTENTIAL_CODES V_VAL_Q7_ROW_19_AFFECT_CODES V_VAL_Q7_ROW_19_POTENTIAL_CODES V_Q7_ROW_20_AFFECT_INVALID_CODES V_Q7_ROW_20_POTENTIAL_INVALID_CODES V_Q8_ROW_01_RANKING V_Q8_ROW_02_RANKING V_Q8_ROW_03_RANKING V_Q8_R04_RANKING V_Q8_R05_RANKING V_Q8_R06_RANKING V_Q8_R07_RANKING V_Q8_R08_RANKING V_Q8_R09_RANKING V_Q8_R10_RANKING V_Q8_R11_RANKING V_Q8_R12_RANKING V_Q9_R01_INVALID_CODES V_Q9_R02_INVALID_CODES V_Q9_R03_INVALID_CODES V_Q9_R04_INVALID_CODES V_Q9_R05_INVALID_CODES V_Q9_R06_INVALID_CODES V_Q9_R07_INVALID_CODES V_Q9_R08_INVALID_CODES VALIDATION_OVERALL.

* MODEL WARNINGS.
* The S8 termination condition requiring the sum of Commercial Insurance, Medicare, and Medicaid to be at least 70% was not emitted because the supplied schema does not support aggregate-sum predicates for screen-out rules.
* S7 specifies a numeric panel-size follow-up with a 1-5,000 range, but no separate canonical variable was supplied; no follow-up validation was invented.
* The source notes for Q2 and Q3 show alternative range renderings (1-99 versus 0-99, and 1-99 versus 0-199). The validation plans use the inclusive union of the documented alternatives: 0-99 for Q2 and 0-199 for Q3.
* Q3_12 has conflicting numeric range evidence in the source notes; its range validation was omitted.
* Classification questions 10, 11, and 12 cannot be expressed as variable-based checks because no variables were supplied.
* Q8 rows R04–R12 include a valid Not in Top 3 response with a null value; the ranking checks therefore validate the documented rank maximum without emitting a typed allowed-values rule for that null-valued option.
* Evidence-supported code, range, percentage-total, and routing checks were omitted because the supplied canonical questions do not define variables needed to target those checks.

* MODEL NOTES.
* Q6 and Q7 items are explicitly optional; no missing or mandatory-response checks were added.
* All supplied questions are explicitly optional; no mandatory or missing-response rules were added.

EXECUTE.
