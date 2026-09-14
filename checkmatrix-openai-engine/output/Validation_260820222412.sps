* Encoding: UTF-8.
* Generated deterministically by Survey Programming AI.
* Source: (V5 R94036) Bob Response PC_Final_WAQ (2).docx.
TITLE 'Final Primary Care Landscape (6/16/26)'.
* Project: Primary Care Landscape.


*===============================================================================.
* SECTION Introduction: Introduction.
*===============================================================================.

* Question INTRO.
* No validation generated: Informational introduction text; no respondent data are collected.




*===============================================================================.
* SECTION Screening: Screening.
*===============================================================================.

* Question S1.


* [ERROR] Require a response to the screening question.
COMPUTE V_S1_MAND = 0.
IF (MISSING(S1)) V_S1_MAND = 1.



* [ERROR] Allow only Yes or No response codes.
COMPUTE V_S1_CODES = 0.
IF ((NOT MISSING(S1) AND NOT ANY(S1, 1, 2))) V_S1_CODES = 1.



* [ERROR] Terminate respondents answering Yes.
COMPUTE V_S1_TERM = 0.
IF (S1 = 1) V_S1_TERM = 1.




* Question S2.


* [ERROR] Require a response to the screening question.
COMPUTE V_S2_MAND = 0.
IF (MISSING(S2)) V_S2_MAND = 1.



* [ERROR] Allow only listed certification or practice-type codes.
COMPUTE V_S2_CODES = 0.
IF ((NOT MISSING(S2) AND NOT ANY(S2, 1, 2, 3, 4, 5, 98))) V_S2_CODES = 1.



* [ERROR] Terminate respondents selecting Other certification or practice type.
COMPUTE V_S2_TERM = 0.
IF (S2 = 98) V_S2_TERM = 1.




* Question S3.


* [ERROR] Require a response to the screening question.
COMPUTE V_S3_MAND = 0.
IF (MISSING(S3)) V_S3_MAND = 1.



* [ERROR] Allow only listed practice affiliation and ownership codes.
COMPUTE V_S3_CODES = 0.
IF ((NOT MISSING(S3) AND NOT ANY(S3, 1, 2, 3, 4, 5, 98))) V_S3_CODES = 1.



* [ERROR] Terminate respondents selecting Other practice affiliation or ownership.
COMPUTE V_S3_TERM = 0.
IF (S3 = 98) V_S3_TERM = 1.




* Question S4.


* [ERROR] Require years in practice.
COMPUTE V_S4_MAND = 0.
IF (MISSING(S4)) V_S4_MAND = 1.



* [ERROR] Allow years in practice from 1 through 40.
COMPUTE V_S4_RANGE = 0.
IF ((NOT MISSING(S4) AND NOT ANY(S4, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40))) V_S4_RANGE = 1.



* [ERROR] Terminate respondents with fewer than 2 years in practice.
COMPUTE V_S4_TERM_LOW = 0.
IF (S4 < 2) V_S4_TERM_LOW = 1.



* [ERROR] Terminate respondents with more than 29 years in practice.
COMPUTE V_S4_TERM_HIGH = 0.
IF (S4 > 29) V_S4_TERM_HIGH = 1.




* Question S5.


* [ERROR] Require a response to the screening question.
COMPUTE V_S5_MAND = 0.
IF (MISSING(S5)) V_S5_MAND = 1.



* [ERROR] Allow only Yes or No response codes.
COMPUTE V_S5_CODES = 0.
IF ((NOT MISSING(S5) AND NOT ANY(S5, 1, 2))) V_S5_CODES = 1.



* [ERROR] Terminate respondents planning to leave primary care or retire within 2 to 3 years.
COMPUTE V_S5_TERM = 0.
IF (S5 = 1) V_S5_TERM = 1.




* Question S6.


* [ERROR] Require average weekly patient volume.
COMPUTE V_S6_MAND = 0.
IF (MISSING(S6)) V_S6_MAND = 1.



* [ERROR] Allow only listed weekly patient-volume codes.
COMPUTE V_S6_CODES = 0.
IF ((NOT MISSING(S6) AND NOT ANY(S6, 1, 2, 3, 4, 5, 6, 7))) V_S6_CODES = 1.



* [ERROR] Terminate respondents seeing fewer than 75 patients per week.
COMPUTE V_S6_TERM = 0.
IF (S6 = 1) V_S6_TERM = 1.




* Question S7.


* [ERROR] Require an answer about an assigned patient panel.
COMPUTE V_S7_MAND = 0.
IF (MISSING(S7)) V_S7_MAND = 1.



* [ERROR] Allow only Yes or No response codes.
COMPUTE V_S7_CODES = 0.
IF ((NOT MISSING(S7) AND NOT ANY(S7, 1, 2))) V_S7_CODES = 1.




* Question S8_1.


* [ERROR] Require the Commercial Insurance percentage.
COMPUTE V_S8_1_MAND = 0.
IF (MISSING(S8_1)) V_S8_1_MAND = 1.



* [ERROR] Allow a percentage from 0 through 100.
COMPUTE V_S8_1_RANGE = 0.
IF ((NOT MISSING(S8_1) AND NOT ANY(S8_1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100))) V_S8_1_RANGE = 1.



* [ERROR] Require the four payor percentages to total 100%.
COMPUTE V_S8_TOTAL = 0.
IF (SUM(S8_1, S8_2, S8_3, S8_4) <> 100.0) V_S8_TOTAL = 1.




* Question S8_2.


* [ERROR] Require the Medicare percentage.
COMPUTE V_S8_2_MAND = 0.
IF (MISSING(S8_2)) V_S8_2_MAND = 1.



* [ERROR] Allow a percentage from 0 through 100.
COMPUTE V_S8_2_RANGE = 0.
IF ((NOT MISSING(S8_2) AND NOT ANY(S8_2, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100))) V_S8_2_RANGE = 1.




* Question S8_3.


* [ERROR] Require the Medicaid percentage.
COMPUTE V_S8_3_MAND = 0.
IF (MISSING(S8_3)) V_S8_3_MAND = 1.



* [ERROR] Allow a percentage from 0 through 100.
COMPUTE V_S8_3_RANGE = 0.
IF ((NOT MISSING(S8_3) AND NOT ANY(S8_3, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100))) V_S8_3_RANGE = 1.




* Question S8_4.


* [ERROR] Require the Other payor percentage.
COMPUTE V_S8_4_MAND = 0.
IF (MISSING(S8_4)) V_S8_4_MAND = 1.



* [ERROR] Allow a percentage from 0 through 100.
COMPUTE V_S8_4_RANGE = 0.
IF ((NOT MISSING(S8_4) AND NOT ANY(S8_4, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100))) V_S8_4_RANGE = 1.




* Question S9.


* [ERROR] Require a response to the FQHC screening question.
COMPUTE V_S9_MAND = 0.
IF (MISSING(S9)) V_S9_MAND = 1.



* [ERROR] Allow only Yes or No response codes.
COMPUTE V_S9_CODES = 0.
IF ((NOT MISSING(S9) AND NOT ANY(S9, 1, 2))) V_S9_CODES = 1.




* Question S10.


* [ERROR] Require a response to the functional medicine experience question.
COMPUTE V_S10_MAND = 0.
IF (MISSING(S10)) V_S10_MAND = 1.



* [ERROR] Allow only Yes or No response codes.
COMPUTE V_S10_CODES = 0.
IF ((NOT MISSING(S10) AND NOT ANY(S10, 1, 2))) V_S10_CODES = 1.





*===============================================================================.
* SECTION Survey: Survey.
*===============================================================================.

* Question Q1_01.


* [ERROR] Require the cardiometabolic percentage.
COMPUTE V_Q1_01_MAND = 0.
IF (MISSING(Q1_01)) V_Q1_01_MAND = 1.



* [ERROR] Allow a percentage from 0 through 100.
COMPUTE V_Q1_01_RANGE = 0.
IF ((NOT MISSING(Q1_01) AND NOT ANY(Q1_01, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100))) V_Q1_01_RANGE = 1.




* Question Q1_02.


* [ERROR] Require the CKM and obesity or weight-management percentage.
COMPUTE V_Q1_02_MAND = 0.
IF (MISSING(Q1_02)) V_Q1_02_MAND = 1.



* [ERROR] Allow a percentage from 0 through 100.
COMPUTE V_Q1_02_RANGE = 0.
IF ((NOT MISSING(Q1_02) AND NOT ANY(Q1_02, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100))) V_Q1_02_RANGE = 1.




* Question Q1_03.


* [ERROR] Require the guideline-based screening percentage.
COMPUTE V_Q1_03_MAND = 0.
IF (MISSING(Q1_03)) V_Q1_03_MAND = 1.



* [ERROR] Allow a percentage from 0 through 100.
COMPUTE V_Q1_03_RANGE = 0.
IF ((NOT MISSING(Q1_03) AND NOT ANY(Q1_03, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100))) V_Q1_03_RANGE = 1.




* Question Q1_04.


* [ERROR] Require the vector-borne testing percentage.
COMPUTE V_Q1_04_MAND = 0.
IF (MISSING(Q1_04)) V_Q1_04_MAND = 1.



* [ERROR] Allow a percentage from 0 through 100.
COMPUTE V_Q1_04_RANGE = 0.
IF ((NOT MISSING(Q1_04) AND NOT ANY(Q1_04, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100))) V_Q1_04_RANGE = 1.




* Question Q1_05.


* [ERROR] Require the colorectal screening percentage.
COMPUTE V_Q1_05_MAND = 0.
IF (MISSING(Q1_05)) V_Q1_05_MAND = 1.



* [ERROR] Allow a percentage from 0 through 100.
COMPUTE V_Q1_05_RANGE = 0.
IF ((NOT MISSING(Q1_05) AND NOT ANY(Q1_05, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100))) V_Q1_05_RANGE = 1.




* Question Q1_06.


* [ERROR] Require the STI testing percentage.
COMPUTE V_Q1_06_MAND = 0.
IF (MISSING(Q1_06)) V_Q1_06_MAND = 1.



* [ERROR] Allow a percentage from 0 through 100.
COMPUTE V_Q1_06_RANGE = 0.
IF ((NOT MISSING(Q1_06) AND NOT ANY(Q1_06, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100))) V_Q1_06_RANGE = 1.




* Question Q1_07.


* [ERROR] Require the allergy testing percentage.
COMPUTE V_Q1_07_MAND = 0.
IF (MISSING(Q1_07)) V_Q1_07_MAND = 1.



* [ERROR] Allow a percentage from 0 through 100.
COMPUTE V_Q1_07_RANGE = 0.
IF ((NOT MISSING(Q1_07) AND NOT ANY(Q1_07, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100))) V_Q1_07_RANGE = 1.




* Question Q1_08.


* [ERROR] Require the HIV or Hepatitis testing percentage.
COMPUTE V_Q1_08_MAND = 0.
IF (MISSING(Q1_08)) V_Q1_08_MAND = 1.



* [ERROR] Allow a percentage from 0 through 100.
COMPUTE V_Q1_08_RANGE = 0.
IF ((NOT MISSING(Q1_08) AND NOT ANY(Q1_08, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100))) V_Q1_08_RANGE = 1.




* Question Q1_09.


* [ERROR] Require the women's health screening percentage.
COMPUTE V_Q1_09_MAND = 0.
IF (MISSING(Q1_09)) V_Q1_09_MAND = 1.



* [ERROR] Allow a percentage from 0 through 100.
COMPUTE V_Q1_09_RANGE = 0.
IF ((NOT MISSING(Q1_09) AND NOT ANY(Q1_09, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100))) V_Q1_09_RANGE = 1.




* Question Q1_10.


* [ERROR] Require the functional medicine testing percentage.
COMPUTE V_Q1_10_MAND = 0.
IF (MISSING(Q1_10)) V_Q1_10_MAND = 1.



* [ERROR] Allow a percentage from 0 through 100.
COMPUTE V_Q1_10_RANGE = 0.
IF ((NOT MISSING(Q1_10) AND NOT ANY(Q1_10, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100))) V_Q1_10_RANGE = 1.




* Question Q1_11.


* [ERROR] Require the neurodegenerative-disease testing percentage.
COMPUTE V_Q1_11_MAND = 0.
IF (MISSING(Q1_11)) V_Q1_11_MAND = 1.



* [ERROR] Allow a percentage from 0 through 100.
COMPUTE V_Q1_11_RANGE = 0.
IF ((NOT MISSING(Q1_11) AND NOT ANY(Q1_11, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100))) V_Q1_11_RANGE = 1.




* Question Q1_12.


* [ERROR] Validate that the reported percentage is between 0% and 100%.
COMPUTE V_Q1_12_NUMERIC_RANGE = 0.
IF ((NOT MISSING(Q1_12) AND NOT ANY(Q1_12, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100))) V_Q1_12_NUMERIC_RANGE = 1.




* Question Q2_01.
* No validation generated: The source notes contain conflicting numeric ranges (1–99 and 0–99), so no deterministic range check is emitted.



* Question Q2_02.
* No validation generated: The source notes contain conflicting numeric ranges (1–99 and 0–99), so no deterministic range check is emitted.



* Question Q2_03.
* No validation generated: The source notes contain conflicting numeric ranges (1–99 and 0–99), so no deterministic range check is emitted.



* Question Q2_04.
* No validation generated: The source notes contain conflicting numeric ranges (1–99 and 0–99), so no deterministic range check is emitted.



* Question Q2_05.
* No validation generated: The source notes contain conflicting numeric ranges (1–99 and 0–99), so no deterministic range check is emitted.



* Question Q2_06.
* No validation generated: The source notes contain conflicting numeric ranges (1–99 and 0–99), so no deterministic range check is emitted.



* Question Q2_07.
* No validation generated: The source notes contain conflicting numeric ranges (1–99 and 0–99), so no deterministic range check is emitted.



* Question Q2_08.
* No validation generated: The source notes contain conflicting numeric ranges (1–99 and 0–99), so no deterministic range check is emitted.



* Question Q2_09.
* No validation generated: The source notes contain conflicting numeric ranges (1–99 and 0–99), so no deterministic range check is emitted.



* Question Q2_10.
* No validation generated: The source notes contain conflicting numeric ranges (1–99 and 0–99), so no deterministic range check is emitted.



* Question Q2_11.
* No validation generated: The source notes contain conflicting numeric ranges (1–99 and 0–99), so no deterministic range check is emitted.



* Question Q2_12.
* No validation generated: The source notes contain conflicting numeric ranges (1–99 and 0–99), so no deterministic range check is emitted.



* Question Q3_01.
* No validation generated: The source notes contain conflicting numeric ranges (1–99 and 0–199), so no deterministic range check is emitted.



* Question Q3_02.
* No validation generated: The source notes contain conflicting numeric ranges (1–99 and 0–199), so no deterministic range check is emitted.



* Question Q3_03.
* No validation generated: The source notes contain conflicting numeric ranges (1–99 and 0–199), so no deterministic range check is emitted.



* Question Q3_04.
* No validation generated: The source notes contain conflicting numeric ranges (1–99 and 0–199), so no deterministic range check is emitted.



* Question Q3_05.
* No validation generated: The source notes contain conflicting numeric ranges (1–99 and 0–199), so no deterministic range check is emitted.



* Question Q3_06.
* No validation generated: The source notes contain conflicting numeric ranges (1–99 and 0–199), so no deterministic range check is emitted.



* Question Q3_07.
* No validation generated: The source notes contain conflicting numeric ranges (1–99 and 0–199), so no deterministic range check is emitted.



* Question Q3_08.
* No validation generated: The source notes contain conflicting numeric ranges (1–99 and 0–199), so no deterministic range check is emitted.



* Question Q3_09.
* No validation generated: The source notes contain conflicting numeric ranges (1–99 and 0–199), so no deterministic range check is emitted.



* Question Q3_10.
* No validation generated: The source notes contain conflicting numeric ranges (1–99 and 0–199), so no deterministic range check is emitted.



* Question Q3_11.
* No validation generated: The source notes contain conflicting numeric ranges (1–99 and 0–199), so no deterministic range check is emitted.



* Question Q3_12.
* No validation generated: The source notes contain conflicting numeric ranges (1–99 and 0–199), so no deterministic range check is emitted.



* Question Q4_01.


* [ERROR] Response must be one of the documented 1–10 scale points.
COMPUTE V_Q4_01_RANGE = 0.
IF ((NOT MISSING(Q4_01) AND NOT ANY(Q4_01, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10))) V_Q4_01_RANGE = 1.




* Question Q4_02.


* [ERROR] Response must be one of the documented 1–10 scale points.
COMPUTE V_Q4_02_RANGE = 0.
IF ((NOT MISSING(Q4_02) AND NOT ANY(Q4_02, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10))) V_Q4_02_RANGE = 1.




* Question Q4_03.


* [ERROR] Response must be one of the documented 1–10 scale points.
COMPUTE V_Q4_03_RANGE = 0.
IF ((NOT MISSING(Q4_03) AND NOT ANY(Q4_03, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10))) V_Q4_03_RANGE = 1.




* Question Q4_04.


* [ERROR] Response must be one of the documented 1–10 scale points.
COMPUTE V_Q4_04_RANGE = 0.
IF ((NOT MISSING(Q4_04) AND NOT ANY(Q4_04, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10))) V_Q4_04_RANGE = 1.




* Question Q4_05.


* [ERROR] Response must be one of the documented 1–10 scale points.
COMPUTE V_Q4_05_RANGE = 0.
IF ((NOT MISSING(Q4_05) AND NOT ANY(Q4_05, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10))) V_Q4_05_RANGE = 1.




* Question Q4_06.


* [ERROR] Response must be one of the documented 1–10 scale points.
COMPUTE V_Q4_06_RANGE = 0.
IF ((NOT MISSING(Q4_06) AND NOT ANY(Q4_06, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10))) V_Q4_06_RANGE = 1.




* Question Q4_07.


* [ERROR] Response must be one of the documented 1–10 scale points.
COMPUTE V_Q4_07_RANGE = 0.
IF ((NOT MISSING(Q4_07) AND NOT ANY(Q4_07, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10))) V_Q4_07_RANGE = 1.




* Question Q4_08.


* [ERROR] Response must be one of the documented 1–10 scale points.
COMPUTE V_Q4_08_RANGE = 0.
IF ((NOT MISSING(Q4_08) AND NOT ANY(Q4_08, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10))) V_Q4_08_RANGE = 1.




* Question Q4_09.


* [ERROR] Response must be one of the documented 1–10 scale points.
COMPUTE V_Q4_09_RANGE = 0.
IF ((NOT MISSING(Q4_09) AND NOT ANY(Q4_09, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10))) V_Q4_09_RANGE = 1.




* Question Q4_10.


* [ERROR] Response must be one of the documented 1–10 scale points.
COMPUTE V_Q4_10_RANGE = 0.
IF ((NOT MISSING(Q4_10) AND NOT ANY(Q4_10, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10))) V_Q4_10_RANGE = 1.




* Question Q4_11.


* [ERROR] Response must be one of the documented 1–10 scale points.
COMPUTE V_Q4_11_RANGE = 0.
IF ((NOT MISSING(Q4_11) AND NOT ANY(Q4_11, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10))) V_Q4_11_RANGE = 1.




* Question Q4_12.


* [ERROR] Response must be one of the documented 1–10 scale points.
COMPUTE V_Q4_12_RANGE = 0.
IF ((NOT MISSING(Q4_12) AND NOT ANY(Q4_12, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10))) V_Q4_12_RANGE = 1.




* Question Q5_01.


* [ERROR] Response must be one of the documented 1–10 scale points.
COMPUTE V_Q5_01_RANGE = 0.
IF ((NOT MISSING(Q5_01) AND NOT ANY(Q5_01, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10))) V_Q5_01_RANGE = 1.




* Question Q5_02.


* [ERROR] Response must be one of the documented 1–10 scale points.
COMPUTE V_Q5_02_RANGE = 0.
IF ((NOT MISSING(Q5_02) AND NOT ANY(Q5_02, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10))) V_Q5_02_RANGE = 1.




* Question Q5_03.


* [ERROR] Response must be one of the documented 1–10 scale points.
COMPUTE V_Q5_03_RANGE = 0.
IF ((NOT MISSING(Q5_03) AND NOT ANY(Q5_03, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10))) V_Q5_03_RANGE = 1.




* Question Q5_04.


* [ERROR] Response must be one of the documented 1–10 scale points.
COMPUTE V_Q5_04_RANGE = 0.
IF ((NOT MISSING(Q5_04) AND NOT ANY(Q5_04, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10))) V_Q5_04_RANGE = 1.




* Question Q5_R05.


* [ERROR] Response must be one of the documented 1–10 scale points.
COMPUTE V_Q5_R05_RANGE = 0.
IF ((NOT MISSING(Q5_R05) AND NOT ANY(Q5_R05, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10))) V_Q5_R05_RANGE = 1.




* Question Q5_R06.


* [ERROR] Response must be one of the documented 1–10 scale points.
COMPUTE V_Q5_R06_RANGE = 0.
IF ((NOT MISSING(Q5_R06) AND NOT ANY(Q5_R06, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10))) V_Q5_R06_RANGE = 1.




* Question Q5_R07.


* [ERROR] Response must be one of the documented 1–10 scale points.
COMPUTE V_Q5_R07_RANGE = 0.
IF ((NOT MISSING(Q5_R07) AND NOT ANY(Q5_R07, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10))) V_Q5_R07_RANGE = 1.




* Question Q5_R08.


* [ERROR] Response must be one of the documented 1–10 scale points.
COMPUTE V_Q5_R08_RANGE = 0.
IF ((NOT MISSING(Q5_R08) AND NOT ANY(Q5_R08, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10))) V_Q5_R08_RANGE = 1.




* Question Q5_R09.


* [ERROR] Response must be one of the documented 1–10 scale points.
COMPUTE V_Q5_R09_RANGE = 0.
IF ((NOT MISSING(Q5_R09) AND NOT ANY(Q5_R09, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10))) V_Q5_R09_RANGE = 1.




* Question Q5_R10.


* [ERROR] Response must be one of the documented 1–10 scale points.
COMPUTE V_Q5_R10_RANGE = 0.
IF ((NOT MISSING(Q5_R10) AND NOT ANY(Q5_R10, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10))) V_Q5_R10_RANGE = 1.




* Question Q5_R11.


* [ERROR] Response must be one of the documented 1–10 scale points.
COMPUTE V_Q5_R11_RANGE = 0.
IF ((NOT MISSING(Q5_R11) AND NOT ANY(Q5_R11, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10))) V_Q5_R11_RANGE = 1.




* Question Q5_R12.


* [ERROR] Response must be one of the documented 1–10 scale points.
COMPUTE V_Q5_R12_RANGE = 0.
IF ((NOT MISSING(Q5_R12) AND NOT ANY(Q5_R12, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10))) V_Q5_R12_RANGE = 1.




* Question Q6_R01.


* [ERROR] Response must be one of the documented 1–10 scale points.
COMPUTE V_Q6_R01_RANGE = 0.
IF ((NOT MISSING(Q6_R01) AND NOT ANY(Q6_R01, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10))) V_Q6_R01_RANGE = 1.




* Question Q6_R02.


* [ERROR] Accept only rating values 1 through 10.
COMPUTE V_Q6_R02_CODES = 0.
IF ((NOT MISSING(Q6_R02) AND NOT ANY(Q6_R02, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10))) V_Q6_R02_CODES = 1.




* Question Q6_R03.


* [ERROR] Accept only rating values 1 through 10.
COMPUTE V_Q6_R03_CODES = 0.
IF ((NOT MISSING(Q6_R03) AND NOT ANY(Q6_R03, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10))) V_Q6_R03_CODES = 1.




* Question Q6_R04.


* [ERROR] Accept only rating values 1 through 10.
COMPUTE V_Q6_R04_CODES = 0.
IF ((NOT MISSING(Q6_R04) AND NOT ANY(Q6_R04, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10))) V_Q6_R04_CODES = 1.




* Question Q6_R05.


* [ERROR] Accept only rating values 1 through 10.
COMPUTE V_Q6_R05_CODES = 0.
IF ((NOT MISSING(Q6_R05) AND NOT ANY(Q6_R05, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10))) V_Q6_R05_CODES = 1.




* Question Q6_R06.


* [ERROR] Accept only rating values 1 through 10.
COMPUTE V_Q6_R06_CODES = 0.
IF ((NOT MISSING(Q6_R06) AND NOT ANY(Q6_R06, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10))) V_Q6_R06_CODES = 1.




* Question Q6_R07.


* [ERROR] Accept only rating values 1 through 10.
COMPUTE V_Q6_R07_CODES = 0.
IF ((NOT MISSING(Q6_R07) AND NOT ANY(Q6_R07, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10))) V_Q6_R07_CODES = 1.




* Question Q6_R08.


* [ERROR] Accept only rating values 1 through 10.
COMPUTE V_Q6_R08_CODES = 0.
IF ((NOT MISSING(Q6_R08) AND NOT ANY(Q6_R08, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10))) V_Q6_R08_CODES = 1.




* Question Q6_R09.


* [ERROR] Accept only rating values 1 through 10.
COMPUTE V_Q6_R09_CODES = 0.
IF ((NOT MISSING(Q6_R09) AND NOT ANY(Q6_R09, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10))) V_Q6_R09_CODES = 1.




* Question Q6_R10.


* [ERROR] Accept only rating values 1 through 10.
COMPUTE V_Q6_R10_CODES = 0.
IF ((NOT MISSING(Q6_R10) AND NOT ANY(Q6_R10, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10))) V_Q6_R10_CODES = 1.




* Question Q6_R11.


* [ERROR] Accept only rating values 1 through 10.
COMPUTE V_Q6_R11_CODES = 0.
IF ((NOT MISSING(Q6_R11) AND NOT ANY(Q6_R11, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10))) V_Q6_R11_CODES = 1.




* Question Q6_R12.


* [ERROR] Accept only rating values 1 through 10.
COMPUTE V_Q6_R12_CODES = 0.
IF ((NOT MISSING(Q6_R12) AND NOT ANY(Q6_R12, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10))) V_Q6_R12_CODES = 1.




* Question Q7_R01_CURRENT.


* [ERROR] Accept only Yes or No response codes.
COMPUTE V_Q7_R01_CURRENT_CODES = 0.
IF ((NOT MISSING(Q7_R01_CURRENT) AND NOT ANY(Q7_R01_CURRENT, 1, 0))) V_Q7_R01_CURRENT_CODES = 1.




* Question Q7_R01_POTENTIAL.


* [ERROR] Accept only rating values 1 through 10.
COMPUTE V_Q7_R01_POTENTIAL_CODES = 0.
IF ((NOT MISSING(Q7_R01_POTENTIAL) AND NOT ANY(Q7_R01_POTENTIAL, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10))) V_Q7_R01_POTENTIAL_CODES = 1.




* Question Q7_R02_CURRENT.


* [ERROR] Accept only Yes or No response codes.
COMPUTE V_Q7_R02_CURRENT_CODES = 0.
IF ((NOT MISSING(Q7_R02_CURRENT) AND NOT ANY(Q7_R02_CURRENT, 1, 0))) V_Q7_R02_CURRENT_CODES = 1.




* Question Q7_R02_POTENTIAL.


* [ERROR] Accept only rating values 1 through 10.
COMPUTE V_Q7_R02_POTENTIAL_CODES = 0.
IF ((NOT MISSING(Q7_R02_POTENTIAL) AND NOT ANY(Q7_R02_POTENTIAL, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10))) V_Q7_R02_POTENTIAL_CODES = 1.




* Question Q7_R03_CURRENT.


* [ERROR] Accept only Yes or No response codes.
COMPUTE V_Q7_R03_CURRENT_CODES = 0.
IF ((NOT MISSING(Q7_R03_CURRENT) AND NOT ANY(Q7_R03_CURRENT, 1, 0))) V_Q7_R03_CURRENT_CODES = 1.




* Question Q7_R03_POTENTIAL.


* [ERROR] Accept only rating values 1 through 10.
COMPUTE V_Q7_R03_POTENTIAL_CODES = 0.
IF ((NOT MISSING(Q7_R03_POTENTIAL) AND NOT ANY(Q7_R03_POTENTIAL, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10))) V_Q7_R03_POTENTIAL_CODES = 1.




* Question Q7_R04_CURRENT.


* [ERROR] Accept only Yes or No response codes.
COMPUTE V_Q7_R04_CURRENT_CODES = 0.
IF ((NOT MISSING(Q7_R04_CURRENT) AND NOT ANY(Q7_R04_CURRENT, 1, 0))) V_Q7_R04_CURRENT_CODES = 1.




* Question Q7_R04_POTENTIAL.


* [ERROR] Accept only rating values 1 through 10.
COMPUTE V_Q7_R04_POTENTIAL_CODES = 0.
IF ((NOT MISSING(Q7_R04_POTENTIAL) AND NOT ANY(Q7_R04_POTENTIAL, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10))) V_Q7_R04_POTENTIAL_CODES = 1.




* Question Q7_R05_CURRENT.


* [ERROR] Accept only Yes or No response codes.
COMPUTE V_Q7_R05_CURRENT_CODES = 0.
IF ((NOT MISSING(Q7_R05_CURRENT) AND NOT ANY(Q7_R05_CURRENT, 1, 0))) V_Q7_R05_CURRENT_CODES = 1.




* Question Q7_R05_POTENTIAL.


* [ERROR] Accept only rating values 1 through 10.
COMPUTE V_Q7_R05_POTENTIAL_CODES = 0.
IF ((NOT MISSING(Q7_R05_POTENTIAL) AND NOT ANY(Q7_R05_POTENTIAL, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10))) V_Q7_R05_POTENTIAL_CODES = 1.




* Question Q7_R06_CURRENT.


* [ERROR] Accept only Yes or No response codes.
COMPUTE V_Q7_R06_CURRENT_CODES = 0.
IF ((NOT MISSING(Q7_R06_CURRENT) AND NOT ANY(Q7_R06_CURRENT, 1, 0))) V_Q7_R06_CURRENT_CODES = 1.




* Question Q7_R06_POTENTIAL.


* [ERROR] Accept only rating values 1 through 10.
COMPUTE V_Q7_R06_POTENTIAL_CODES = 0.
IF ((NOT MISSING(Q7_R06_POTENTIAL) AND NOT ANY(Q7_R06_POTENTIAL, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10))) V_Q7_R06_POTENTIAL_CODES = 1.




* Question Q7_R07_CURRENT.


* [ERROR] Accept only Yes or No response codes.
COMPUTE V_Q7_R07_CURRENT_CODES = 0.
IF ((NOT MISSING(Q7_R07_CURRENT) AND NOT ANY(Q7_R07_CURRENT, 1, 0))) V_Q7_R07_CURRENT_CODES = 1.




* Question Q7_R07_POTENTIAL.


* [ERROR] Accept only rating values 1 through 10.
COMPUTE V_Q7_R07_POTENTIAL_CODES = 0.
IF ((NOT MISSING(Q7_R07_POTENTIAL) AND NOT ANY(Q7_R07_POTENTIAL, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10))) V_Q7_R07_POTENTIAL_CODES = 1.




* Question Q7_R08_CURRENT.


* [ERROR] Response must be coded Yes or No.
COMPUTE V_Q7_R08_CURRENT_CODES = 0.
IF ((NOT MISSING(Q7_R08_CURRENT) AND NOT ANY(Q7_R08_CURRENT, 'YES', 'NO'))) V_Q7_R08_CURRENT_CODES = 1.




* Question Q7_R08_POTENTIAL.


* [ERROR] Response must be a value from 1 through 10 on the stated scale.
COMPUTE V_Q7_R08_POTENTIAL_CODES = 0.
IF ((NOT MISSING(Q7_R08_POTENTIAL) AND NOT ANY(Q7_R08_POTENTIAL, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10))) V_Q7_R08_POTENTIAL_CODES = 1.




* Question Q7_R09_CURRENT.


* [ERROR] Response must be coded Yes or No.
COMPUTE V_Q7_R09_CURRENT_CODES = 0.
IF ((NOT MISSING(Q7_R09_CURRENT) AND NOT ANY(Q7_R09_CURRENT, 'YES', 'NO'))) V_Q7_R09_CURRENT_CODES = 1.




* Question Q7_R09_POTENTIAL.


* [ERROR] Response must be a value from 1 through 10 on the stated scale.
COMPUTE V_Q7_R09_POTENTIAL_CODES = 0.
IF ((NOT MISSING(Q7_R09_POTENTIAL) AND NOT ANY(Q7_R09_POTENTIAL, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10))) V_Q7_R09_POTENTIAL_CODES = 1.




* Question Q7_R10_CURRENT.


* [ERROR] Response must be coded Yes or No.
COMPUTE V_Q7_R10_CURRENT_CODES = 0.
IF ((NOT MISSING(Q7_R10_CURRENT) AND NOT ANY(Q7_R10_CURRENT, 'YES', 'NO'))) V_Q7_R10_CURRENT_CODES = 1.




* Question Q7_R10_POTENTIAL.


* [ERROR] Response must be a value from 1 through 10 on the stated scale.
COMPUTE V_Q7_R10_POTENTIAL_CODES = 0.
IF ((NOT MISSING(Q7_R10_POTENTIAL) AND NOT ANY(Q7_R10_POTENTIAL, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10))) V_Q7_R10_POTENTIAL_CODES = 1.




* Question Q7_R11_CURRENT.


* [ERROR] Response must be coded Yes or No.
COMPUTE V_Q7_R11_CURRENT_CODES = 0.
IF ((NOT MISSING(Q7_R11_CURRENT) AND NOT ANY(Q7_R11_CURRENT, 'YES', 'NO'))) V_Q7_R11_CURRENT_CODES = 1.




* Question Q7_R11_POTENTIAL.


* [ERROR] Response must be a value from 1 through 10 on the stated scale.
COMPUTE V_Q7_R11_POTENTIAL_CODES = 0.
IF ((NOT MISSING(Q7_R11_POTENTIAL) AND NOT ANY(Q7_R11_POTENTIAL, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10))) V_Q7_R11_POTENTIAL_CODES = 1.




* Question Q7_R12_CURRENT.


* [ERROR] Response must be coded Yes or No.
COMPUTE V_Q7_R12_CURRENT_CODES = 0.
IF ((NOT MISSING(Q7_R12_CURRENT) AND NOT ANY(Q7_R12_CURRENT, 'YES', 'NO'))) V_Q7_R12_CURRENT_CODES = 1.




* Question Q7_R12_POTENTIAL.


* [ERROR] Response must be a value from 1 through 10 on the stated scale.
COMPUTE V_Q7_R12_POTENTIAL_CODES = 0.
IF ((NOT MISSING(Q7_R12_POTENTIAL) AND NOT ANY(Q7_R12_POTENTIAL, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10))) V_Q7_R12_POTENTIAL_CODES = 1.




* Question Q7_R13_CURRENT.


* [ERROR] Response must be coded Yes or No.
COMPUTE V_Q7_R13_CURRENT_CODES = 0.
IF ((NOT MISSING(Q7_R13_CURRENT) AND NOT ANY(Q7_R13_CURRENT, 'YES', 'NO'))) V_Q7_R13_CURRENT_CODES = 1.




* Question Q7_R13_POTENTIAL.


* [ERROR] Response must be a value from 1 through 10 on the stated scale.
COMPUTE V_Q7_R13_POTENTIAL_CODES = 0.
IF ((NOT MISSING(Q7_R13_POTENTIAL) AND NOT ANY(Q7_R13_POTENTIAL, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10))) V_Q7_R13_POTENTIAL_CODES = 1.




* Question Q7_R14_CURRENT.


* [ERROR] Response must be coded Yes or No.
COMPUTE V_Q7_R14_CURRENT_CODES = 0.
IF ((NOT MISSING(Q7_R14_CURRENT) AND NOT ANY(Q7_R14_CURRENT, 'YES', 'NO'))) V_Q7_R14_CURRENT_CODES = 1.




* Question Q7_R14_POTENTIAL.


* [ERROR] Response must be a value from 1 through 10 on the stated scale.
COMPUTE V_Q7_R14_POTENTIAL_CODES = 0.
IF ((NOT MISSING(Q7_R14_POTENTIAL) AND NOT ANY(Q7_R14_POTENTIAL, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10))) V_Q7_R14_POTENTIAL_CODES = 1.




* Question Q7_R15_CURRENT.


* [ERROR] Response must be coded Yes or No.
COMPUTE V_Q7_R15_CURRENT_CODES = 0.
IF ((NOT MISSING(Q7_R15_CURRENT) AND NOT ANY(Q7_R15_CURRENT, 'YES', 'NO'))) V_Q7_R15_CURRENT_CODES = 1.




* Question Q7_R15_POTENTIAL.


* [ERROR] Response must be a value from 1 through 10 on the stated scale.
COMPUTE V_Q7_R15_POTENTIAL_CODES = 0.
IF ((NOT MISSING(Q7_R15_POTENTIAL) AND NOT ANY(Q7_R15_POTENTIAL, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10))) V_Q7_R15_POTENTIAL_CODES = 1.




* Question Q7_R16_CURRENT.


* [ERROR] Response must be coded Yes or No.
COMPUTE V_Q7_R16_CURRENT_CODES = 0.
IF ((NOT MISSING(Q7_R16_CURRENT) AND NOT ANY(Q7_R16_CURRENT, 'YES', 'NO'))) V_Q7_R16_CURRENT_CODES = 1.




* Question Q7_R16_POTENTIAL.


* [ERROR] Response must be a value from 1 through 10 on the stated scale.
COMPUTE V_Q7_R16_POTENTIAL_CODES = 0.
IF ((NOT MISSING(Q7_R16_POTENTIAL) AND NOT ANY(Q7_R16_POTENTIAL, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10))) V_Q7_R16_POTENTIAL_CODES = 1.




* Question Q7_R17_CURRENT.


* [ERROR] Response must be coded Yes or No.
COMPUTE V_Q7_R17_CURRENT_CODES = 0.
IF ((NOT MISSING(Q7_R17_CURRENT) AND NOT ANY(Q7_R17_CURRENT, 'YES', 'NO'))) V_Q7_R17_CURRENT_CODES = 1.




* Question Q7_R17_POTENTIAL.


* [ERROR] Response must be a value from 1 through 10 on the stated scale.
COMPUTE V_Q7_R17_POTENTIAL_CODES = 0.
IF ((NOT MISSING(Q7_R17_POTENTIAL) AND NOT ANY(Q7_R17_POTENTIAL, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10))) V_Q7_R17_POTENTIAL_CODES = 1.




* Question Q7_R18_CURRENT.


* [ERROR] Response must be coded Yes or No.
COMPUTE V_Q7_R18_CURRENT_CODES = 0.
IF ((NOT MISSING(Q7_R18_CURRENT) AND NOT ANY(Q7_R18_CURRENT, 'YES', 'NO'))) V_Q7_R18_CURRENT_CODES = 1.




* Question Q7_R18_POTENTIAL.


* [ERROR] Response must be a value from 1 through 10 on the stated scale.
COMPUTE V_Q7_R18_POTENTIAL_CODES = 0.
IF ((NOT MISSING(Q7_R18_POTENTIAL) AND NOT ANY(Q7_R18_POTENTIAL, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10))) V_Q7_R18_POTENTIAL_CODES = 1.




* Question Q7_R19_CURRENT.


* [ERROR] Response must be coded Yes or No.
COMPUTE V_Q7_R19_CURRENT_CODES = 0.
IF ((NOT MISSING(Q7_R19_CURRENT) AND NOT ANY(Q7_R19_CURRENT, 'YES', 'NO'))) V_Q7_R19_CURRENT_CODES = 1.




* Question Q7_R19_POTENTIAL.


* [ERROR] Response must be a value from 1 through 10 on the stated scale.
COMPUTE V_Q7_R19_POTENTIAL_CODES = 0.
IF ((NOT MISSING(Q7_R19_POTENTIAL) AND NOT ANY(Q7_R19_POTENTIAL, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10))) V_Q7_R19_POTENTIAL_CODES = 1.




* Question Q7_R20_CURRENT.


* [ERROR] Response must be coded Yes or No.
COMPUTE V_Q7_R20_CURRENT_CODES = 0.
IF ((NOT MISSING(Q7_R20_CURRENT) AND NOT ANY(Q7_R20_CURRENT, 'YES', 'NO'))) V_Q7_R20_CURRENT_CODES = 1.




* Question Q7_R20_POTENTIAL.


* [ERROR] Potential-for-improving-care rating must use one of the specified 1–10 response codes.
COMPUTE V_Q7_R20_POTENTIAL_INVALID_CODES = 0.
IF ((NOT MISSING(Q7_R20_POTENTIAL) AND NOT ANY(Q7_R20_POTENTIAL, '1', '2', '3', '4', '5', '6', '7', '8', '9', '10'))) V_Q7_R20_POTENTIAL_INVALID_CODES = 1.




* Question Q8_R01.
* No validation generated: No usable response variable is supplied for this ranking row; targeting a validation rule would require inventing a variable.



* Question Q8_R02.
* No validation generated: No usable response variable is supplied for this ranking row; targeting a validation rule would require inventing a variable.



* Question Q8_R03.
* No validation generated: No usable response variable is supplied for this ranking row; targeting a validation rule would require inventing a variable.



* Question Q8.
* No validation generated: The question-level ranking item has no response variable or listed options, so no evidence-supported target can be validated.



* Question Q8_R01_P4.


* [ERROR] Better patient education must use one of the specified ranking response codes.
COMPUTE V_Q8_R01_P4_INVALID_CODES = 0.
IF ((NOT MISSING(Q8_R01_P4) AND NOT ANY(Q8_R01_P4, '1', '2', '3', 'NOT_TOP_3'))) V_Q8_R01_P4_INVALID_CODES = 1.




* Question Q8_R02_P4.


* [ERROR] Improved patient convenience must use one of the specified ranking response codes.
COMPUTE V_Q8_R02_P4_INVALID_CODES = 0.
IF ((NOT MISSING(Q8_R02_P4) AND NOT ANY(Q8_R02_P4, '1', '2', '3', 'NOT_TOP_3'))) V_Q8_R02_P4_INVALID_CODES = 1.




* Question Q8_R03_P4.


* [ERROR] Programs to improve patient knowledge and understanding must use one of the specified ranking response codes.
COMPUTE V_Q8_R03_P4_INVALID_CODES = 0.
IF ((NOT MISSING(Q8_R03_P4) AND NOT ANY(Q8_R03_P4, '1', '2', '3', 'NOT_TOP_3'))) V_Q8_R03_P4_INVALID_CODES = 1.




* Question Q8_R04.


* [ERROR] Self-collection must use one of the specified ranking response codes.
COMPUTE V_Q8_R04_INVALID_CODES = 0.
IF ((NOT MISSING(Q8_R04) AND NOT ANY(Q8_R04, '1', '2', '3', 'NOT_TOP_3'))) V_Q8_R04_INVALID_CODES = 1.




* Question Q8_R05.


* [ERROR] Better screening must use one of the specified ranking response codes.
COMPUTE V_Q8_R05_INVALID_CODES = 0.
IF ((NOT MISSING(Q8_R05) AND NOT ANY(Q8_R05, '1', '2', '3', 'NOT_TOP_3'))) V_Q8_R05_INVALID_CODES = 1.




* Question Q8_R06.


* [ERROR] AI enhancement must use one of the specified ranking response codes.
COMPUTE V_Q8_R06_INVALID_CODES = 0.
IF ((NOT MISSING(Q8_R06) AND NOT ANY(Q8_R06, '1', '2', '3', 'NOT_TOP_3'))) V_Q8_R06_INVALID_CODES = 1.




* Question Q8_R07.


* [ERROR] Guidance on clinical decisions must use one of the specified ranking response codes.
COMPUTE V_Q8_R07_INVALID_CODES = 0.
IF ((NOT MISSING(Q8_R07) AND NOT ANY(Q8_R07, '1', '2', '3', 'NOT_TOP_3'))) V_Q8_R07_INVALID_CODES = 1.




* Question Q8_R08.


* [ERROR] Earlier intervention in treatment must use one of the specified ranking response codes.
COMPUTE V_Q8_R08_INVALID_CODES = 0.
IF ((NOT MISSING(Q8_R08) AND NOT ANY(Q8_R08, '1', '2', '3', 'NOT_TOP_3'))) V_Q8_R08_INVALID_CODES = 1.




* Question Q8_R09.


* [ERROR] Personalized treatment options must use one of the specified ranking response codes.
COMPUTE V_Q8_R09_INVALID_CODES = 0.
IF ((NOT MISSING(Q8_R09) AND NOT ANY(Q8_R09, '1', '2', '3', 'NOT_TOP_3'))) V_Q8_R09_INVALID_CODES = 1.




* Question Q9.
* No validation generated: The matrix-level question has no response variable; its separately supplied row variables are validated individually.



* Question Q9_R01.


* [ERROR] Agreement response must use one of the five specified agreement-scale codes.
COMPUTE V_Q9_R01_INVALID_CODES = 0.
IF ((NOT MISSING(Q9_R01) AND NOT ANY(Q9_R01, 'AGREE_STRONGLY', 'AGREE_SOMEWHAT', 'NEITHER', 'DISAGREE_SOMEWHAT', 'DISAGREE_STRONGLY'))) V_Q9_R01_INVALID_CODES = 1.




* Question Q9_R02.


* [ERROR] Agreement response must use one of the five specified agreement-scale codes.
COMPUTE V_Q9_R02_INVALID_CODES = 0.
IF ((NOT MISSING(Q9_R02) AND NOT ANY(Q9_R02, 'AGREE_STRONGLY', 'AGREE_SOMEWHAT', 'NEITHER', 'DISAGREE_SOMEWHAT', 'DISAGREE_STRONGLY'))) V_Q9_R02_INVALID_CODES = 1.




* Question Q9_R03.


* [ERROR] Agreement response must use one of the five specified agreement-scale codes.
COMPUTE V_Q9_R03_INVALID_CODES = 0.
IF ((NOT MISSING(Q9_R03) AND NOT ANY(Q9_R03, 'AGREE_STRONGLY', 'AGREE_SOMEWHAT', 'NEITHER', 'DISAGREE_SOMEWHAT', 'DISAGREE_STRONGLY'))) V_Q9_R03_INVALID_CODES = 1.




* Question Q9_R04.


* [ERROR] Agreement response must use one of the five specified agreement-scale codes.
COMPUTE V_Q9_R04_INVALID_CODES = 0.
IF ((NOT MISSING(Q9_R04) AND NOT ANY(Q9_R04, 'AGREE_STRONGLY', 'AGREE_SOMEWHAT', 'NEITHER', 'DISAGREE_SOMEWHAT', 'DISAGREE_STRONGLY'))) V_Q9_R04_INVALID_CODES = 1.




* Question Q9_R05.


* [ERROR] Agreement response must use one of the five specified agreement-scale codes.
COMPUTE V_Q9_R05_INVALID_CODES = 0.
IF ((NOT MISSING(Q9_R05) AND NOT ANY(Q9_R05, 'AGREE_STRONGLY', 'AGREE_SOMEWHAT', 'NEITHER', 'DISAGREE_SOMEWHAT', 'DISAGREE_STRONGLY'))) V_Q9_R05_INVALID_CODES = 1.




* Question Q9_R06.


* [ERROR] Agreement response must use one of the five specified agreement-scale codes.
COMPUTE V_Q9_R06_INVALID_CODES = 0.
IF ((NOT MISSING(Q9_R06) AND NOT ANY(Q9_R06, 'AGREE_STRONGLY', 'AGREE_SOMEWHAT', 'NEITHER', 'DISAGREE_SOMEWHAT', 'DISAGREE_STRONGLY'))) V_Q9_R06_INVALID_CODES = 1.




* Question Q9_R07.


* [ERROR] Agreement response must use one of the five specified agreement-scale codes.
COMPUTE V_Q9_R07_INVALID_CODES = 0.
IF ((NOT MISSING(Q9_R07) AND NOT ANY(Q9_R07, 'AGREE_STRONGLY', 'AGREE_SOMEWHAT', 'NEITHER', 'DISAGREE_SOMEWHAT', 'DISAGREE_STRONGLY'))) V_Q9_R07_INVALID_CODES = 1.




* Question Q9_R08.


* [ERROR] Agreement response must use one of the five specified agreement-scale codes.
COMPUTE V_Q9_R08_INVALID_CODES = 0.
IF ((NOT MISSING(Q9_R08) AND NOT ANY(Q9_R08, 'AGREE_STRONGLY', 'AGREE_SOMEWHAT', 'NEITHER', 'DISAGREE_SOMEWHAT', 'DISAGREE_STRONGLY'))) V_Q9_R08_INVALID_CODES = 1.





*===============================================================================.
* SECTION Classification purposes only: Classification purposes only.
*===============================================================================.

* Question Q10.


* [ERROR] Age category must use one of the nine specified response codes.
COMPUTE V_Q10_INVALID_CODES = 0.
IF ((NOT MISSING(Q10) AND NOT ANY(Q10, '1', '2', '3', '4', '5', '6', '7', '8', '9'))) V_Q10_INVALID_CODES = 1.




* Question Q11.


* [ERROR] Days seeing patients at office sites must be a numeric value from 1 through 30.
COMPUTE V_Q11_NUMERIC_RANGE = 0.
IF ((NOT MISSING(Q11) AND NOT ANY(Q11, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30))) V_Q11_NUMERIC_RANGE = 1.




* Question Q12.


* [ERROR] Allow only the listed gender response codes.
COMPUTE V_Q12_INVALID_CODES = 0.
IF ((NOT MISSING(Q12) AND NOT ANY(Q12, 1, 2))) V_Q12_INVALID_CODES = 1.




* Question Q13.


* [ERROR] Allow only the listed geographic region response codes.
COMPUTE V_Q13_INVALID_CODES = 0.
IF ((NOT MISSING(Q13) AND NOT ANY(Q13, 1, 2, 3, 4, 5))) V_Q13_INVALID_CODES = 1.




* Question Q14.


* [ERROR] Allow only the listed practice-location response codes.
COMPUTE V_Q14_INVALID_CODES = 0.
IF ((NOT MISSING(Q14) AND NOT ANY(Q14, 1, 2, 3, 4))) V_Q14_INVALID_CODES = 1.




* Question Q15.


* [ERROR] Allow only the listed specialty-structure response codes.
COMPUTE V_Q15_INVALID_CODES = 0.
IF ((NOT MISSING(Q15) AND NOT ANY(Q15, 1, 2))) V_Q15_INVALID_CODES = 1.




* Question Q16.


* [ERROR] Allow only the listed primary-care-physician group-size response codes.
COMPUTE V_Q16_INVALID_CODES = 0.
IF ((NOT MISSING(Q16) AND NOT ANY(Q16, 1, 2, 3, 4, 5, 6))) V_Q16_INVALID_CODES = 1.




* Question Q17.


* [ERROR] Allow only the listed hospital-affiliation and bed-size response codes.
COMPUTE V_Q17_INVALID_CODES = 0.
IF ((NOT MISSING(Q17) AND NOT ANY(Q17, 1, 2, 3, 4, 5, 6))) V_Q17_INVALID_CODES = 1.




* Question Q18.


* [ERROR] The five commercial-lab percentage entries must total 100%.
!Sum_to_var svar=Q18.
COMPUTE V_Q18_PERCENTAGE_TOTAL = 0.
IF (SUM(Q18) <> 100.0) V_Q18_PERCENTAGE_TOTAL = 1.




* Question Q19.
* No validation generated: The question has a documented 1–499 range and health-system routing, but no canonical response variable is supplied, so a typed range or routing rule cannot be created safely.



* Question 20.
* No validation generated: The question has a documented 0–999 range and health-system routing, but no canonical response variable is supplied, so a typed range or routing rule cannot be created safely.



* Question 21.
* No validation generated: The question has documented single-select options and health-system routing, but no canonical response variable is supplied, so a typed code or routing rule cannot be created safely.




*===============================================================================.
* FINAL VALIDATION SUMMARY.
*===============================================================================.
COMPUTE VALIDATION_OVERALL = MAX(V_S1_MAND, V_S1_CODES, V_S1_TERM, V_S2_MAND, V_S2_CODES, V_S2_TERM, V_S3_MAND, V_S3_CODES, V_S3_TERM, V_S4_MAND, V_S4_RANGE, V_S4_TERM_LOW, V_S4_TERM_HIGH, V_S5_MAND, V_S5_CODES, V_S5_TERM, V_S6_MAND, V_S6_CODES, V_S6_TERM, V_S7_MAND, V_S7_CODES, V_S8_1_MAND, V_S8_1_RANGE, V_S8_TOTAL, V_S8_2_MAND, V_S8_2_RANGE, V_S8_3_MAND, V_S8_3_RANGE, V_S8_4_MAND, V_S8_4_RANGE, V_S9_MAND, V_S9_CODES, V_S10_MAND, V_S10_CODES, V_Q1_01_MAND, V_Q1_01_RANGE, V_Q1_02_MAND, V_Q1_02_RANGE, V_Q1_03_MAND, V_Q1_03_RANGE, V_Q1_04_MAND, V_Q1_04_RANGE, V_Q1_05_MAND, V_Q1_05_RANGE, V_Q1_06_MAND, V_Q1_06_RANGE, V_Q1_07_MAND, V_Q1_07_RANGE, V_Q1_08_MAND, V_Q1_08_RANGE, V_Q1_09_MAND, V_Q1_09_RANGE, V_Q1_10_MAND, V_Q1_10_RANGE, V_Q1_11_MAND, V_Q1_11_RANGE, V_Q1_12_NUMERIC_RANGE, V_Q4_01_RANGE, V_Q4_02_RANGE, V_Q4_03_RANGE, V_Q4_04_RANGE, V_Q4_05_RANGE, V_Q4_06_RANGE, V_Q4_07_RANGE, V_Q4_08_RANGE, V_Q4_09_RANGE, V_Q4_10_RANGE, V_Q4_11_RANGE, V_Q4_12_RANGE, V_Q5_01_RANGE, V_Q5_02_RANGE, V_Q5_03_RANGE, V_Q5_04_RANGE, V_Q5_R05_RANGE, V_Q5_R06_RANGE, V_Q5_R07_RANGE, V_Q5_R08_RANGE, V_Q5_R09_RANGE, V_Q5_R10_RANGE, V_Q5_R11_RANGE, V_Q5_R12_RANGE, V_Q6_R01_RANGE, V_Q6_R02_CODES, V_Q6_R03_CODES, V_Q6_R04_CODES, V_Q6_R05_CODES, V_Q6_R06_CODES, V_Q6_R07_CODES, V_Q6_R08_CODES, V_Q6_R09_CODES, V_Q6_R10_CODES, V_Q6_R11_CODES, V_Q6_R12_CODES, V_Q7_R01_CURRENT_CODES, V_Q7_R01_POTENTIAL_CODES, V_Q7_R02_CURRENT_CODES, V_Q7_R02_POTENTIAL_CODES, V_Q7_R03_CURRENT_CODES, V_Q7_R03_POTENTIAL_CODES, V_Q7_R04_CURRENT_CODES, V_Q7_R04_POTENTIAL_CODES, V_Q7_R05_CURRENT_CODES, V_Q7_R05_POTENTIAL_CODES, V_Q7_R06_CURRENT_CODES, V_Q7_R06_POTENTIAL_CODES, V_Q7_R07_CURRENT_CODES, V_Q7_R07_POTENTIAL_CODES, V_Q7_R08_CURRENT_CODES, V_Q7_R08_POTENTIAL_CODES, V_Q7_R09_CURRENT_CODES, V_Q7_R09_POTENTIAL_CODES, V_Q7_R10_CURRENT_CODES, V_Q7_R10_POTENTIAL_CODES, V_Q7_R11_CURRENT_CODES, V_Q7_R11_POTENTIAL_CODES, V_Q7_R12_CURRENT_CODES, V_Q7_R12_POTENTIAL_CODES, V_Q7_R13_CURRENT_CODES, V_Q7_R13_POTENTIAL_CODES, V_Q7_R14_CURRENT_CODES, V_Q7_R14_POTENTIAL_CODES, V_Q7_R15_CURRENT_CODES, V_Q7_R15_POTENTIAL_CODES, V_Q7_R16_CURRENT_CODES, V_Q7_R16_POTENTIAL_CODES, V_Q7_R17_CURRENT_CODES, V_Q7_R17_POTENTIAL_CODES, V_Q7_R18_CURRENT_CODES, V_Q7_R18_POTENTIAL_CODES, V_Q7_R19_CURRENT_CODES, V_Q7_R19_POTENTIAL_CODES, V_Q7_R20_CURRENT_CODES, V_Q7_R20_POTENTIAL_INVALID_CODES, V_Q8_R01_P4_INVALID_CODES, V_Q8_R02_P4_INVALID_CODES, V_Q8_R03_P4_INVALID_CODES, V_Q8_R04_INVALID_CODES, V_Q8_R05_INVALID_CODES, V_Q8_R06_INVALID_CODES, V_Q8_R07_INVALID_CODES, V_Q8_R08_INVALID_CODES, V_Q8_R09_INVALID_CODES, V_Q9_R01_INVALID_CODES, V_Q9_R02_INVALID_CODES, V_Q9_R03_INVALID_CODES, V_Q9_R04_INVALID_CODES, V_Q9_R05_INVALID_CODES, V_Q9_R06_INVALID_CODES, V_Q9_R07_INVALID_CODES, V_Q9_R08_INVALID_CODES, V_Q10_INVALID_CODES, V_Q11_NUMERIC_RANGE, V_Q12_INVALID_CODES, V_Q13_INVALID_CODES, V_Q14_INVALID_CODES, V_Q15_INVALID_CODES, V_Q16_INVALID_CODES, V_Q17_INVALID_CODES, V_Q18_PERCENTAGE_TOTAL).
FREQUENCIES VARIABLES=V_S1_MAND V_S1_CODES V_S1_TERM V_S2_MAND V_S2_CODES V_S2_TERM V_S3_MAND V_S3_CODES V_S3_TERM V_S4_MAND V_S4_RANGE V_S4_TERM_LOW V_S4_TERM_HIGH V_S5_MAND V_S5_CODES V_S5_TERM V_S6_MAND V_S6_CODES V_S6_TERM V_S7_MAND V_S7_CODES V_S8_1_MAND V_S8_1_RANGE V_S8_TOTAL V_S8_2_MAND V_S8_2_RANGE V_S8_3_MAND V_S8_3_RANGE V_S8_4_MAND V_S8_4_RANGE V_S9_MAND V_S9_CODES V_S10_MAND V_S10_CODES V_Q1_01_MAND V_Q1_01_RANGE V_Q1_02_MAND V_Q1_02_RANGE V_Q1_03_MAND V_Q1_03_RANGE V_Q1_04_MAND V_Q1_04_RANGE V_Q1_05_MAND V_Q1_05_RANGE V_Q1_06_MAND V_Q1_06_RANGE V_Q1_07_MAND V_Q1_07_RANGE V_Q1_08_MAND V_Q1_08_RANGE V_Q1_09_MAND V_Q1_09_RANGE V_Q1_10_MAND V_Q1_10_RANGE V_Q1_11_MAND V_Q1_11_RANGE V_Q1_12_NUMERIC_RANGE V_Q4_01_RANGE V_Q4_02_RANGE V_Q4_03_RANGE V_Q4_04_RANGE V_Q4_05_RANGE V_Q4_06_RANGE V_Q4_07_RANGE V_Q4_08_RANGE V_Q4_09_RANGE V_Q4_10_RANGE V_Q4_11_RANGE V_Q4_12_RANGE V_Q5_01_RANGE V_Q5_02_RANGE V_Q5_03_RANGE V_Q5_04_RANGE V_Q5_R05_RANGE V_Q5_R06_RANGE V_Q5_R07_RANGE V_Q5_R08_RANGE V_Q5_R09_RANGE V_Q5_R10_RANGE V_Q5_R11_RANGE V_Q5_R12_RANGE V_Q6_R01_RANGE V_Q6_R02_CODES V_Q6_R03_CODES V_Q6_R04_CODES V_Q6_R05_CODES V_Q6_R06_CODES V_Q6_R07_CODES V_Q6_R08_CODES V_Q6_R09_CODES V_Q6_R10_CODES V_Q6_R11_CODES V_Q6_R12_CODES V_Q7_R01_CURRENT_CODES V_Q7_R01_POTENTIAL_CODES V_Q7_R02_CURRENT_CODES V_Q7_R02_POTENTIAL_CODES V_Q7_R03_CURRENT_CODES V_Q7_R03_POTENTIAL_CODES V_Q7_R04_CURRENT_CODES V_Q7_R04_POTENTIAL_CODES V_Q7_R05_CURRENT_CODES V_Q7_R05_POTENTIAL_CODES V_Q7_R06_CURRENT_CODES V_Q7_R06_POTENTIAL_CODES V_Q7_R07_CURRENT_CODES V_Q7_R07_POTENTIAL_CODES V_Q7_R08_CURRENT_CODES V_Q7_R08_POTENTIAL_CODES V_Q7_R09_CURRENT_CODES V_Q7_R09_POTENTIAL_CODES V_Q7_R10_CURRENT_CODES V_Q7_R10_POTENTIAL_CODES V_Q7_R11_CURRENT_CODES V_Q7_R11_POTENTIAL_CODES V_Q7_R12_CURRENT_CODES V_Q7_R12_POTENTIAL_CODES V_Q7_R13_CURRENT_CODES V_Q7_R13_POTENTIAL_CODES V_Q7_R14_CURRENT_CODES V_Q7_R14_POTENTIAL_CODES V_Q7_R15_CURRENT_CODES V_Q7_R15_POTENTIAL_CODES V_Q7_R16_CURRENT_CODES V_Q7_R16_POTENTIAL_CODES V_Q7_R17_CURRENT_CODES V_Q7_R17_POTENTIAL_CODES V_Q7_R18_CURRENT_CODES V_Q7_R18_POTENTIAL_CODES V_Q7_R19_CURRENT_CODES V_Q7_R19_POTENTIAL_CODES V_Q7_R20_CURRENT_CODES V_Q7_R20_POTENTIAL_INVALID_CODES V_Q8_R01_P4_INVALID_CODES V_Q8_R02_P4_INVALID_CODES V_Q8_R03_P4_INVALID_CODES V_Q8_R04_INVALID_CODES V_Q8_R05_INVALID_CODES V_Q8_R06_INVALID_CODES V_Q8_R07_INVALID_CODES V_Q8_R08_INVALID_CODES V_Q8_R09_INVALID_CODES V_Q9_R01_INVALID_CODES V_Q9_R02_INVALID_CODES V_Q9_R03_INVALID_CODES V_Q9_R04_INVALID_CODES V_Q9_R05_INVALID_CODES V_Q9_R06_INVALID_CODES V_Q9_R07_INVALID_CODES V_Q9_R08_INVALID_CODES V_Q10_INVALID_CODES V_Q11_NUMERIC_RANGE V_Q12_INVALID_CODES V_Q13_INVALID_CODES V_Q14_INVALID_CODES V_Q15_INVALID_CODES V_Q16_INVALID_CODES V_Q17_INVALID_CODES V_Q18_PERCENTAGE_TOTAL VALIDATION_OVERALL.

* MODEL WARNINGS.
* The S7 prompt includes a conditional panel-size entry, but no separate canonical variable is supplied for the panel size; therefore no panel-size range rule was generated.
* The S8_4 termination condition depends on the sum of S8_1, S8_2, and S8_3 being less than 70; this cross-variable aggregate condition was not represented because the supplied schema does not provide a typed multi-variable sum predicate.
* Q2 and Q3 numeric range notes contain conflicting upper/lower range specifications; the uncertain checks were omitted pending clarification.
* Q8_R01, Q8_R02, and Q8_R03 do not contain response variables, so ranking validation could not be safely targeted.
* Q8 and Q9 are matrix-level records without response variables; validation is applied only to the supplied child rows.
* Q19, question 20, and question 21 were not assigned validation rules because their canonical response variables are missing.

* MODEL NOTES.
* Questions in this batch are explicitly marked optional; therefore no mandatory or missing-response checks were added.
* Questions are explicitly optional; no missingness or mandatory-response rules were added.
* The supplied batch ends with Q7_R20_CURRENT; no Q7_R20_POTENTIAL question was supplied.

EXECUTE.
