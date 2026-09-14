* Encoding: UTF-8.
* Generated deterministically by Survey Programming AI.
* Source: Medium_Survey.docx.
TITLE 'Dravet Syndrome Forecast'.



*===============================================================================.
* SECTION MAIN: Questionnaire.
*===============================================================================.

* Question V2.
* No validation generated: Date and CRA label text only; no respondent-entered response or validation evidence is provided.



* Question V3.
* No validation generated: Date and M3MR label text only; no respondent-entered response or validation evidence is provided.



* Question V4.
* No validation generated: Date and CRA label text only; no respondent-entered response or validation evidence is provided.



* Question V5.
* No validation generated: Date and CRA label text only; no respondent-entered response or validation evidence is provided.



* Question V6.
* No validation generated: Date and CRA label text only; no respondent-entered response or validation evidence is provided.



* Question V7.
* No validation generated: Date and CRA label text only; no respondent-entered response or validation evidence is provided.



* Question V8.
* No validation generated: Date and CRA label text only; no respondent-entered response or validation evidence is provided.



* Question V9.
* No validation generated: Table-of-contents and objectives label text only; no respondent-entered response or validation evidence is provided.



* Question QUOTA2.
* No validation generated: Quota qualification label only; no respondent-entered response or variable-level validation evidence is provided.



* Question SCREENER2.
* No validation generated: Screener section label only; no respondent-entered response or variable-level validation evidence is provided.



* Question CONSENT2.


* [ERROR] Consent response must be provided before participation.
COMPUTE V_CONSENT2_MANDATORY = 0.
IF (MISSING(CONSENT2)) V_CONSENT2_MANDATORY = 1.



* [ERROR] Consent must use one of the stated consent responses.
COMPUTE V_CONSENT2_CODES = 0.
IF ((NOT MISSING(CONSENT2) AND NOT ANY(CONSENT2, 'YES, I CONSENT', 'NO, I DO NOT CONSENT'))) V_CONSENT2_CODES = 1.



* [ERROR] Respondents who do not consent must be terminated immediately.
COMPUTE V_CONSENT2_SCREENOUT = 0.
IF (CONSENT2 = 'NO, I DO NOT CONSENT') V_CONSENT2_SCREENOUT = 1.




* Question SURVEY8.
* No validation generated: Survey introduction, instructions, quota description, and consent information; no distinct respondent-entered response is defined for this variable.



* Question PT10.CAN.


* [ERROR] Pre-test availability response must be provided.
COMPUTE V_PT10_CAN_MANDATORY = 0.
IF (MISSING(PT10.CAN)) V_PT10_CAN_MANDATORY = 1.



* [ERROR] Pre-test availability must be Yes or No.
COMPUTE V_PT10_CAN_CODES = 0.
IF ((NOT MISSING(PT10.CAN) AND NOT ANY(PT10.CAN, 'Yes', 'No'))) V_PT10_CAN_CODES = 1.



* [ERROR] Respondents unavailable for the live survey pre-test must be terminated immediately.
COMPUTE V_PT10_CAN_SCREENOUT = 0.
IF (PT10.CAN = 'No') V_PT10_CAN_SCREENOUT = 1.




* Question PT20.MAY.


* [ERROR] Permission to be contacted for the pre-test must be provided.
COMPUTE V_PT20_MAY_MANDATORY = 0.
IF (MISSING(PT20.MAY)) V_PT20_MAY_MANDATORY = 1.



* [ERROR] Contact permission must be Yes or No.
COMPUTE V_PT20_MAY_CODES = 0.
IF ((NOT MISSING(PT20.MAY) AND NOT ANY(PT20.MAY, 'Yes', 'No'))) V_PT20_MAY_CODES = 1.



* [ERROR] Respondents who do not permit contact for the pre-test must be terminated immediately.
COMPUTE V_PT20_MAY_SCREENOUT = 0.
IF (PT20.MAY = 'No') V_PT20_MAY_SCREENOUT = 1.




* Question S10.


* [ERROR] Primary medical specialty must be selected.
COMPUTE V_S10_MANDATORY = 0.
IF (MISSING(S10)) V_S10_MANDATORY = 1.



* [ERROR] Primary specialty must use one of the listed response codes.
COMPUTE V_S10_CODES = 0.
IF ((NOT MISSING(S10) AND NOT ANY(S10, 1, 2, 3, 4, 5, 6, 7, 8, 9, 98))) V_S10_CODES = 1.



* [ERROR] Non-qualifying specialties and Other must be terminated immediately.
COMPUTE V_S10_SCREENOUT = 0.
IF (ANY(S10, 1, 2, 5, 6, 7, 8, 9, 98)) V_S10_SCREENOUT = 1.




* Question S20.


* [ERROR] Board certification or eligibility status must be selected.
COMPUTE V_S20_MANDATORY = 0.
IF (MISSING(S20)) V_S20_MANDATORY = 1.



* [ERROR] Certification status must use one of the listed response codes.
COMPUTE V_S20_CODES = 0.
IF ((NOT MISSING(S20) AND NOT ANY(S20, 1, 2, 3))) V_S20_CODES = 1.



* [ERROR] Board-eligible and neither responses are terminated according to the screener.
COMPUTE V_S20_SCREENOUT = 0.
IF (ANY(S20, 2, 3)) V_S20_SCREENOUT = 1.




* Question S30.


* [ERROR] Certification in epilepsy or clinical neurophysiology must be answered for US HCPs.
COMPUTE V_S30_MANDATORY = 0.
IF (MISSING(S30)) V_S30_MANDATORY = 1.



* [ERROR] Certification response must be Yes or No using the listed codes.
COMPUTE V_S30_CODES = 0.
IF ((NOT MISSING(S30) AND NOT ANY(S30, 1, 2))) V_S30_CODES = 1.




* Question S40.


* [ERROR] Years in practice must be a whole number within the stated input range of 0 to 100.
COMPUTE V_S40_RANGE = 0.
IF ((NOT MISSING(S40) AND (S40 < 0.0 OR S40 > 100.0))) V_S40_RANGE = 1.



* [ERROR] Respondents reporting fewer than 3 years in practice must be terminated.
COMPUTE V_S40_SCREENOUT_LOW = 0.
IF (S40 < 3) V_S40_SCREENOUT_LOW = 1.



* [ERROR] Respondents reporting more than 35 years in practice must be terminated.
COMPUTE V_S40_SCREENOUT_HIGH = 0.
IF (S40 > 35) V_S40_SCREENOUT_HIGH = 1.




* Question S50.


* [ERROR] Country of practice must be selected.
COMPUTE V_S50_MANDATORY = 0.
IF (MISSING(S50)) V_S50_MANDATORY = 1.



* [ERROR] Country response must use one of the listed codes.
COMPUTE V_S50_CODES = 0.
IF ((NOT MISSING(S50) AND NOT ANY(S50, 1, 2, 3, 4, 5, 6, 7))) V_S50_CODES = 1.



* [ERROR] Respondents selecting Other must be terminated immediately.
COMPUTE V_S50_SCREENOUT = 0.
IF (S50 = 7) V_S50_SCREENOUT = 1.




* Question S60.


* [ERROR] US HCPs must select a state or territory of licensure and practice.
COMPUTE V_S60_MANDATORY = 0.
IF (MISSING(S60)) V_S60_MANDATORY = 1.




* Question S70.


* [ERROR] Each professional-time percentage must be an integer from 0 through 100.
COMPUTE V_S70_RANGE = 0.
IF ((NOT MISSING(S70) AND (S70 < 0.0 OR S70 > 100.0))) V_S70_RANGE = 1.



* [ERROR] Professional-time percentages must sum to 100 percent.
!Sum_to_var svar=S70.
COMPUTE V_S70_TOTAL = 0.
IF (SUM(S70_1, S70_2, S70_3, S70_98) <> 100.0) V_S70_TOTAL = 1.




* Question S80.


* [ERROR] Patient counts must be whole numbers from 0 through 100.
COMPUTE V_S80_RANGE = 0.
IF ((NOT MISSING(S80) AND (S80 < 0.0 OR S80 > 100.0))) V_S80_RANGE = 1.



* [ERROR] The Dravet Syndrome patient count must be at least 5.
COMPUTE V_S80_DRAVET_MINIMUM = 0.
IF ((NOT MISSING(S80_3) AND (S80_3 < 5.0 OR S80_3 > 100.0))) V_S80_DRAVET_MINIMUM = 1.




* Question S85.


* [ERROR] Age-group percentages must be within 0 to 100 percent.
COMPUTE V_S85_RANGE = 0.
IF ((NOT MISSING(S85) AND (S85 < 0.0 OR S85 > 100.0))) V_S85_RANGE = 1.



* [ERROR] Age-group percentages must sum to 100 percent.
!Sum_to_var svar=S85.
COMPUTE V_S85_TOTAL = 0.
IF (SUM(S85_1, S85_2, S85_3, S85_4, S85_5) <> 100.0) V_S85_TOTAL = 1.




* Question S90.


* [ERROR] Product selections must use one of the listed response codes.
COMPUTE V_S90_CODES = 0.
IF ((NOT MISSING(S90) AND NOT ANY(S90, 1, 2, 3, 4, 5, 6, 7, 8, 9, 98))) V_S90_CODES = 1.



* [ERROR] Trevexra and Vebitrel are disqualifying exclusive selections.
COMPUTE V_S90_EXCLUSIVITY = 0.
IF (SUM(S90_8, S90_9) > 0 AND SUM(S90_1, S90_2, S90_3, S90_4, S90_5, S90_6, S90_7, S90_8, S90_9, S90_98) > 1) V_S90_EXCLUSIVITY = 1.




* Question S100.


* [ERROR] The eligibility and compliance questions must be answered.
COMPUTE V_S100_MANDATORY = 0.
IF (MISSING(S100)) V_S100_MANDATORY = 1.



* [ERROR] Eligibility and compliance responses must be Yes or No.
COMPUTE V_S100_CODES = 0.
IF ((NOT MISSING(S100) AND NOT ANY(S100, 'Yes', 'No'))) V_S100_CODES = 1.




* Question Q10.


* [ERROR] Percentage allocations must sum to 100%.
!Sum_to_var svar=Q10.
COMPUTE V_Q10_R1 = 0.
IF (SUM(Q10_1, Q10_2, Q10_3, Q10_4, Q10_98, Q10_99) <> 100.0) V_Q10_R1 = 1.



* [ERROR] I don't know must be exclusive of the other coverage responses.
COMPUTE V_Q10_R2 = 0.
IF (SUM(Q10_99) > 0 AND SUM(Q10_1, Q10_2, Q10_3, Q10_4, Q10_98, Q10_99) > 1) V_Q10_R2 = 1.




* Question Q20.


* [ERROR] Diagnosis percentage allocations must sum to 100%.
!Sum_to_var svar=Q20.
COMPUTE V_Q20_R1 = 0.
IF (SUM(Q20_1, Q20_2) <> 100.0) V_Q20_R1 = 1.




* Question Q30.


* [ERROR] The reported proportion must be a whole-number percentage from 0 to 100.
!Numeric svar=Q30 min=0 max=100.
COMPUTE V_Q30_R1 = 0.
IF ((NOT MISSING(Q30) AND (Q30 < 0.0 OR Q30 > 100.0))) V_Q30_R1 = 1.




* Question Q40.


* [ERROR] A diagnosis factor must be selected.
COMPUTE V_Q40_R1 = 0.
IF (MISSING(Q40)) V_Q40_R1 = 1.



* [ERROR] Responses must use the listed diagnosis-factor variables.
!MULTI_A svar=Q40.
COMPUTE V_Q40_R2 = 0.
IF ((NOT MISSING(Q40_1) AND NOT ANY(Q40_1, 0, 1)) OR (NOT MISSING(Q40_2) AND NOT ANY(Q40_2, 0, 1)) OR (NOT MISSING(Q40_3) AND NOT ANY(Q40_3, 0, 1)) OR (NOT MISSING(Q40_4) AND NOT ANY(Q40_4, 0, 1)) OR (NOT MISSING(Q40_98) AND NOT ANY(Q40_98, 0, 1))) V_Q40_R2 = 1.




* Question Q50.


* [ERROR] A prevalence perception response is required.
COMPUTE V_Q50_R1 = 0.
IF (MISSING(Q50)) V_Q50_R1 = 1.



* [ERROR] The response must be coded 1 through 7.
COMPUTE V_Q50_R2 = 0.
IF ((NOT MISSING(Q50) AND NOT ANY(Q50, 1, 2, 3, 4, 5, 6, 7))) V_Q50_R2 = 1.




* Question Q60.


* [ERROR] The entered diagnosed prevalence must be a whole number from 1 to 100,000.
!Numeric svar=Q60 min=1 max=100000.
COMPUTE V_Q60_R1 = 0.
IF ((NOT MISSING(Q60) AND (Q60 < 1.0 OR Q60 > 100000.0))) V_Q60_R1 = 1.



* [ERROR] Q60 applies when Q50 is coded 1, 2, 3, 5, 6, or 7.
COMPUTE V_Q60_R2 = 0.
IF (((ANY(Q50, 1, 2, 3, 5, 6, 7)) AND (MISSING(Q60))) OR ((NOT (ANY(Q50, 1, 2, 3, 5, 6, 7))) AND (NOT MISSING(Q60)))) V_Q60_R2 = 1.




* Question Q70.


* [ERROR] A diagnosis-rate response is required.
COMPUTE V_Q70_R1 = 0.
IF (MISSING(Q70)) V_Q70_R1 = 1.



* [ERROR] The response must use code 1, 2, 3, or 98.
COMPUTE V_Q70_R2 = 0.
IF ((NOT MISSING(Q70) AND NOT ANY(Q70, 1, 2, 3, 98))) V_Q70_R2 = 1.




* Question Q80.


* [ERROR] An explanation is required when Q70 is coded 1.
!String svar=Q80.
COMPUTE V_Q80_R1 = 0.
IF (MISSING(Q80)) V_Q80_R1 = 1.




* Question Q90.


* [ERROR] The expected increase must be a whole-number percentage from 0 to 100.
!Numeric svar=Q90 min=0 max=100.
COMPUTE V_Q90_R1 = 0.
IF ((NOT MISSING(Q90) AND (Q90 < 0.0 OR Q90 > 100.0))) V_Q90_R1 = 1.




* Question Q100.


* [ERROR] Treatment-distribution percentages must sum to 100%.
!Sum_to_var svar=Q100.
COMPUTE V_Q100_R1 = 0.
IF (SUM(Q100_1, Q100_2, Q100_3) <> 100.0) V_Q100_R1 = 1.




* Question Q110.


* [ERROR] Age-distribution percentages must sum to 100%.
!Sum_to_var svar=Q110.
COMPUTE V_Q110_R1 = 0.
IF (SUM(Q110_1, Q110_2, Q110_3, Q110_4, Q110_5) <> 100.0) V_Q110_R1 = 1.




* Question Q120.


* [WARNING] Medication allocation is shown only for age groups with a positive Q110 percentage.
COMPUTE V_Q120_R1 = 0.
IF (((Q110 > 0) AND (MISSING(Q120))) OR ((NOT (Q110 > 0)) AND (NOT MISSING(Q120)))) V_Q120_R1 = 1.




* Question Q130.


* [ERROR] Medication-count percentages must sum to 100% within each applicable age group.
!Sum_to_var svar=Q130.
COMPUTE V_Q130_R1 = 0.
IF (SUM(Q130_1, Q130_3, Q130_4) <> 100.0) V_Q130_R1 = 1.




* Question Q140.


* [ERROR] At least one seizure-control metric must be selected.
COMPUTE V_Q140_R1 = 0.
IF (MISSING(Q140)) V_Q140_R1 = 1.



* [ERROR] Responses must use the listed seizure-control metric variables.
!MULTI_A svar=Q140.
COMPUTE V_Q140_R2 = 0.
IF ((NOT MISSING(Q140_1) AND NOT ANY(Q140_1, 0, 1)) OR (NOT MISSING(Q140_2) AND NOT ANY(Q140_2, 0, 1)) OR (NOT MISSING(Q140_3) AND NOT ANY(Q140_3, 0, 1)) OR (NOT MISSING(Q140_4) AND NOT ANY(Q140_4, 0, 1)) OR (NOT MISSING(Q140_5) AND NOT ANY(Q140_5, 0, 1)) OR (NOT MISSING(Q140_6) AND NOT ANY(Q140_6, 0, 1)) OR (NOT MISSING(Q140_7) AND NOT ANY(Q140_7, 0, 1)) OR (NOT MISSING(Q140_98) AND NOT ANY(Q140_98, 0, 1))) V_Q140_R2 = 1.




* Question Q150.


* [ERROR] The seizure-control threshold must be a whole-number percentage from 0 to 100.
!Numeric svar=Q150 min=0 max=100.
COMPUTE V_Q150_R1 = 0.
IF ((NOT MISSING(Q150) AND (Q150 < 0.0 OR Q150 > 100.0))) V_Q150_R1 = 1.




* Question Q160.


* [ERROR] The percentage not achieving good seizure control must be a whole-number percentage from 0 to 100.
!Numeric svar=Q160 min=0 max=100.
COMPUTE V_Q160_R1 = 0.
IF ((NOT MISSING(Q160) AND (Q160 < 0.0 OR Q160 > 100.0))) V_Q160_R1 = 1.




* Question Q170.


* [ERROR] The percentage considered for gene therapy must be a whole-number percentage from 0 to 100.
!Numeric svar=Q170 min=0 max=100.
COMPUTE V_Q170_R1 = 0.
IF ((NOT MISSING(Q170) AND (Q170 < 0.0 OR Q170 > 100.0))) V_Q170_R1 = 1.




* Question Q180.


* [ERROR] Initial thoughts must be captured as open-ended text.
!String svar=Q180.
COMPUTE V_Q180_R1 = 0.
IF (MISSING(Q180)) V_Q180_R1 = 1.




* Question Q190.


* [ERROR] No more than three advantages may be selected.
COMPUTE V_Q190_R1 = 0.
IF (SUM(Q190_1, Q190_2, Q190_3, Q190_4, Q190_5, Q190_6, Q190_7, Q190_8, Q190_99, Q190_98) > 3) V_Q190_R1 = 1.



* [ERROR] The no-advantages response must be exclusive of other selections.
COMPUTE V_Q190_R2 = 0.
IF (SUM(Q190_99) > 0 AND SUM(Q190_1, Q190_2, Q190_3, Q190_4, Q190_5, Q190_6, Q190_7, Q190_8, Q190_99, Q190_98) > 1) V_Q190_R2 = 1.




* Question Q200.


* [ERROR] No more than three disadvantages may be selected.
COMPUTE V_Q200_R1 = 0.
IF (SUM(Q200_1, Q200_2, Q200_3, Q200_4, Q200_5, Q200_6, Q200_7, Q200_8, Q200_99, Q200_98) > 3) V_Q200_R1 = 1.



* [ERROR] The no-disadvantages response must be exclusive of other selections.
COMPUTE V_Q200_R2 = 0.
IF (SUM(Q200_99) > 0 AND SUM(Q200_1, Q200_2, Q200_3, Q200_4, Q200_5, Q200_6, Q200_7, Q200_8, Q200_99, Q200_98) > 1) V_Q200_R2 = 1.




* Question Q210.


* [ERROR] The trial-criterion percentages are required when the applicable age groups are displayed.
COMPUTE V_Q210_R1 = 0.
IF (MISSING(Q210)) V_Q210_R1 = 1.




* Question Q220.


* [ERROR] One likelihood-to-prescribe response is required.
COMPUTE V_Q220_R1 = 0.
IF (MISSING(Q220)) V_Q220_R1 = 1.




* Question Q230.


* [ERROR] Initial thoughts on Product Y must be captured as open-ended text.
!String svar=Q230.
COMPUTE V_Q230_R1 = 0.
IF (MISSING(Q230)) V_Q230_R1 = 1.




* Question Q240.


* [ERROR] No more than three Product Y advantages may be selected.
COMPUTE V_Q240_R1 = 0.
IF (SUM(Q240_1, Q240_2, Q240_3, Q240_4, Q240_5, Q240_6, Q240_7, Q240_8, Q240_9, Q240_10, Q240_11, Q240_12, Q240_13, Q240_98) > 3) V_Q240_R1 = 1.



* [ERROR] The no-advantages response must be exclusive of other selections.
COMPUTE V_Q240_R2 = 0.
IF (SUM(Q240_13) > 0 AND SUM(Q240_1, Q240_2, Q240_3, Q240_4, Q240_5, Q240_6, Q240_7, Q240_8, Q240_9, Q240_10, Q240_11, Q240_12, Q240_13, Q240_98) > 1) V_Q240_R2 = 1.




* Question Q250.


* [ERROR] No more than three Product Y disadvantages may be selected.
COMPUTE V_Q250_R1 = 0.
IF (SUM(Q250_1, Q250_2, Q250_3, Q250_4, Q250_5, Q250_6, Q250_7, Q250_8, Q250_9, Q250_10, Q250_11, Q250_12, Q250_13, Q250_98) > 3) V_Q250_R1 = 1.



* [ERROR] The no-disadvantages response must be exclusive of other selections.
COMPUTE V_Q250_R2 = 0.
IF (SUM(Q250_13) > 0 AND SUM(Q250_1, Q250_2, Q250_3, Q250_4, Q250_5, Q250_6, Q250_7, Q250_8, Q250_9, Q250_10, Q250_11, Q250_12, Q250_13, Q250_98) > 1) V_Q250_R2 = 1.




* Question Q260.


* [ERROR] Response must use one of the documented single-select codes.
COMPUTE V_Q260_INVALID_CODES = 0.
IF ((NOT MISSING(Q260) AND NOT ANY(Q260, 1, 2, 98, 99))) V_Q260_INVALID_CODES = 1.




* Question Q270.
* No validation generated: The likelihood scale is described in text, but no response variables or response codes are supplied.



* Question Q280.


* [ERROR] Age must be a whole number from 0 through 100.
COMPUTE V_Q280_NUMERIC_RANGE = 0.
IF ((NOT MISSING(Q280) AND NOT ANY(Q280, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100))) V_Q280_NUMERIC_RANGE = 1.




* Question Q290.


* [ERROR] The required percentage-distribution question must be answered.
COMPUTE V_Q290_MANDATORY = 0.
IF (MISSING(Q290)) V_Q290_MANDATORY = 1.



* [ERROR] Percentages across the age-group distribution must sum to 100.
!Sum_to_var svar=Q290.
COMPUTE V_Q290_PERCENTAGE_TOTAL = 0.
IF (SUM(Q290) <> 100.0) V_Q290_PERCENTAGE_TOTAL = 1.




* Question Q300.


* [ERROR] The required payer-restriction rating grid must be answered.
COMPUTE V_Q300_MANDATORY = 0.
IF (MISSING(Q300)) V_Q300_MANDATORY = 1.




* Question Q310.


* [ERROR] Therapy allocations within each age group must sum to 100 percent.
!Sum_to_var svar=Q310.
COMPUTE V_Q310_PERCENTAGE_TOTAL = 0.
IF (SUM(Q310_1, Q310_2, Q310_98) <> 100.0) V_Q310_PERCENTAGE_TOTAL = 1.




* Question Q320.


* [ERROR] Switching proportions must be between 0 and 100 percent.
COMPUTE V_Q320_NUMERIC_RANGE = 0.
IF ((NOT MISSING(Q320) AND NOT ANY(Q320, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100))) V_Q320_NUMERIC_RANGE = 1.




* Question Q330.


* [ERROR] Therapy allocations within each age group must sum to 100 percent.
!Sum_to_var svar=Q330.
COMPUTE V_Q330_PERCENTAGE_TOTAL = 0.
IF (SUM(Q330_1, Q330_2, Q330_3, Q330_98) <> 100.0) V_Q330_PERCENTAGE_TOTAL = 1.




* Question Q340.
* No validation generated: The likelihood scale is described in text, but no response variables or response codes are supplied.



* Question Q350.


* [ERROR] Switching proportions must be between 0 and 100 percent.
COMPUTE V_Q350_NUMERIC_RANGE = 0.
IF ((NOT MISSING(Q350) AND NOT ANY(Q350, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100))) V_Q350_NUMERIC_RANGE = 1.




* Question Q360.


* [ERROR] Therapy allocations within each age group must sum to 100 percent.
!Sum_to_var svar=Q360.
COMPUTE V_Q360_PERCENTAGE_TOTAL = 0.
IF (SUM(Q360_1, Q360_2, Q360_3, Q360_98) <> 100.0) V_Q360_PERCENTAGE_TOTAL = 1.




* Question Q370.
* No validation generated: The likelihood scale is described in text, but no response variables or response codes are supplied.



* Question Q380.


* [ERROR] Switching proportions must be between 0 and 100 percent.
COMPUTE V_Q380_NUMERIC_RANGE = 0.
IF ((NOT MISSING(Q380) AND NOT ANY(Q380, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100))) V_Q380_NUMERIC_RANGE = 1.




* Question Q390.


* [ERROR] Therapy allocations within each age group must sum to 100 percent.
!Sum_to_var svar=Q390.
COMPUTE V_Q390_PERCENTAGE_TOTAL = 0.
IF (SUM(Q390_1, Q390_2, Q390_3, Q390_98) <> 100.0) V_Q390_PERCENTAGE_TOTAL = 1.




* Question Q400.
* No validation generated: The likelihood scale is described in text, but no response variables or response codes are supplied.



* Question Q410.


* [ERROR] Switching proportions must be between 0 and 100 percent.
COMPUTE V_Q410_NUMERIC_RANGE = 0.
IF ((NOT MISSING(Q410) AND NOT ANY(Q410, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100))) V_Q410_NUMERIC_RANGE = 1.




* Question Q420.


* [ERROR] Therapy allocations within each age group must sum to 100 percent.
!Sum_to_var svar=Q420.
COMPUTE V_Q420_PERCENTAGE_TOTAL = 0.
IF (SUM(Q420_1, Q420_2, Q420_3, Q420_98) <> 100.0) V_Q420_PERCENTAGE_TOTAL = 1.




* Question Q430.


* [ERROR] Response must use one of the documented single-select codes.
COMPUTE V_Q430_INVALID_CODES = 0.
IF ((NOT MISSING(Q430) AND NOT ANY(Q430, 1, 2, 98, 99))) V_Q430_INVALID_CODES = 1.




* Question Q440.


* [ERROR] This question applies only when Q430 equals 1.
COMPUTE V_Q440_ROUTING = 0.
IF (((Q430 = 1) AND (MISSING(Q440))) OR ((NOT (Q430 = 1)) AND (NOT MISSING(Q440)))) V_Q440_ROUTING = 1.



* [ERROR] The required implementation-time response must be answered when applicable.
COMPUTE V_Q440_MANDATORY = 0.
IF (MISSING(Q440)) V_Q440_MANDATORY = 1.



* [ERROR] Implementation time must be a whole number from 0 through 60 months.
COMPUTE V_Q440_NUMERIC_RANGE = 0.
IF ((NOT MISSING(Q440) AND NOT ANY(Q440, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60))) V_Q440_NUMERIC_RANGE = 1.




* Question Q450.


* [ERROR] This question applies only when Q430 equals 1.
COMPUTE V_Q450_ROUTING = 0.
IF (((Q430 = 1) AND (MISSING(Q450))) OR ((NOT (Q430 = 1)) AND (NOT MISSING(Q450)))) V_Q450_ROUTING = 1.



* [ERROR] Receptiveness ratings must be on the documented 1-to-7 scale.
COMPUTE V_Q450_NUMERIC_RANGE = 0.
IF ((NOT MISSING(Q450) AND NOT ANY(Q450, 1, 2, 3, 4, 5, 6, 7))) V_Q450_NUMERIC_RANGE = 1.




* Question Q460.


* [INFO] Capture the open-ended implementation challenges response as text.
COMPUTE V_Q460_OPEN_END = 0.
IF (MISSING(Q460)) V_Q460_OPEN_END = 1.




* Question Q470.


* [ERROR] Months to first prescription must be a whole number from 0 through 60 for each product.
COMPUTE V_Q470_NUMERIC_RANGE = 0.
IF ((NOT MISSING(Q470) AND NOT ANY(Q470, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60))) V_Q470_NUMERIC_RANGE = 1.




* Question Q480.


* [INFO] Capture the final comments response as open-ended text.
COMPUTE V_Q480_OPEN_END = 0.
IF (MISSING(Q480)) V_Q480_OPEN_END = 1.





*===============================================================================.
* FINAL VALIDATION SUMMARY.
*===============================================================================.
COMPUTE VALIDATION_OVERALL = MAX(V_CONSENT2_MANDATORY, V_CONSENT2_CODES, V_CONSENT2_SCREENOUT, V_PT10_CAN_MANDATORY, V_PT10_CAN_CODES, V_PT10_CAN_SCREENOUT, V_PT20_MAY_MANDATORY, V_PT20_MAY_CODES, V_PT20_MAY_SCREENOUT, V_S10_MANDATORY, V_S10_CODES, V_S10_SCREENOUT, V_S20_MANDATORY, V_S20_CODES, V_S20_SCREENOUT, V_S30_MANDATORY, V_S30_CODES, V_S40_RANGE, V_S40_SCREENOUT_LOW, V_S40_SCREENOUT_HIGH, V_S50_MANDATORY, V_S50_CODES, V_S50_SCREENOUT, V_S60_MANDATORY, V_S70_RANGE, V_S70_TOTAL, V_S80_RANGE, V_S80_DRAVET_MINIMUM, V_S85_RANGE, V_S85_TOTAL, V_S90_CODES, V_S90_EXCLUSIVITY, V_S100_MANDATORY, V_S100_CODES, V_Q10_R1, V_Q10_R2, V_Q20_R1, V_Q30_R1, V_Q40_R1, V_Q40_R2, V_Q50_R1, V_Q50_R2, V_Q60_R1, V_Q60_R2, V_Q70_R1, V_Q70_R2, V_Q80_R1, V_Q90_R1, V_Q100_R1, V_Q110_R1, V_Q120_R1, V_Q130_R1, V_Q140_R1, V_Q140_R2, V_Q150_R1, V_Q160_R1, V_Q170_R1, V_Q180_R1, V_Q190_R1, V_Q190_R2, V_Q200_R1, V_Q200_R2, V_Q210_R1, V_Q220_R1, V_Q230_R1, V_Q240_R1, V_Q240_R2, V_Q250_R1, V_Q250_R2, V_Q260_INVALID_CODES, V_Q280_NUMERIC_RANGE, V_Q290_MANDATORY, V_Q290_PERCENTAGE_TOTAL, V_Q300_MANDATORY, V_Q310_PERCENTAGE_TOTAL, V_Q320_NUMERIC_RANGE, V_Q330_PERCENTAGE_TOTAL, V_Q350_NUMERIC_RANGE, V_Q360_PERCENTAGE_TOTAL, V_Q380_NUMERIC_RANGE, V_Q390_PERCENTAGE_TOTAL, V_Q410_NUMERIC_RANGE, V_Q420_PERCENTAGE_TOTAL, V_Q430_INVALID_CODES, V_Q440_ROUTING, V_Q440_MANDATORY, V_Q440_NUMERIC_RANGE, V_Q450_ROUTING, V_Q450_NUMERIC_RANGE, V_Q460_OPEN_END, V_Q470_NUMERIC_RANGE, V_Q480_OPEN_END).
FREQUENCIES VARIABLES=V_CONSENT2_MANDATORY V_CONSENT2_CODES V_CONSENT2_SCREENOUT V_PT10_CAN_MANDATORY V_PT10_CAN_CODES V_PT10_CAN_SCREENOUT V_PT20_MAY_MANDATORY V_PT20_MAY_CODES V_PT20_MAY_SCREENOUT V_S10_MANDATORY V_S10_CODES V_S10_SCREENOUT V_S20_MANDATORY V_S20_CODES V_S20_SCREENOUT V_S30_MANDATORY V_S30_CODES V_S40_RANGE V_S40_SCREENOUT_LOW V_S40_SCREENOUT_HIGH V_S50_MANDATORY V_S50_CODES V_S50_SCREENOUT V_S60_MANDATORY V_S70_RANGE V_S70_TOTAL V_S80_RANGE V_S80_DRAVET_MINIMUM V_S85_RANGE V_S85_TOTAL V_S90_CODES V_S90_EXCLUSIVITY V_S100_MANDATORY V_S100_CODES V_Q10_R1 V_Q10_R2 V_Q20_R1 V_Q30_R1 V_Q40_R1 V_Q40_R2 V_Q50_R1 V_Q50_R2 V_Q60_R1 V_Q60_R2 V_Q70_R1 V_Q70_R2 V_Q80_R1 V_Q90_R1 V_Q100_R1 V_Q110_R1 V_Q120_R1 V_Q130_R1 V_Q140_R1 V_Q140_R2 V_Q150_R1 V_Q160_R1 V_Q170_R1 V_Q180_R1 V_Q190_R1 V_Q190_R2 V_Q200_R1 V_Q200_R2 V_Q210_R1 V_Q220_R1 V_Q230_R1 V_Q240_R1 V_Q240_R2 V_Q250_R1 V_Q250_R2 V_Q260_INVALID_CODES V_Q280_NUMERIC_RANGE V_Q290_MANDATORY V_Q290_PERCENTAGE_TOTAL V_Q300_MANDATORY V_Q310_PERCENTAGE_TOTAL V_Q320_NUMERIC_RANGE V_Q330_PERCENTAGE_TOTAL V_Q350_NUMERIC_RANGE V_Q360_PERCENTAGE_TOTAL V_Q380_NUMERIC_RANGE V_Q390_PERCENTAGE_TOTAL V_Q410_NUMERIC_RANGE V_Q420_PERCENTAGE_TOTAL V_Q430_INVALID_CODES V_Q440_ROUTING V_Q440_MANDATORY V_Q440_NUMERIC_RANGE V_Q450_ROUTING V_Q450_NUMERIC_RANGE V_Q460_OPEN_END V_Q470_NUMERIC_RANGE V_Q480_OPEN_END VALIDATION_OVERALL.

* MODEL WARNINGS.
* S60 provides termination labels for several named states, but no response codes are supplied, so those screen-out rules were omitted.
* S85 includes a termination instruction for a percentage greater than 80, but does not identify which age-group variable it applies to, so that conditional rule was omitted.
* S90 specifies termination when none of S90_1 through S90_7 is selected, but the structured rule schema does not safely express that compound condition without additional evidence.
* S100 contains three Yes/No screening questions but supplies only the base variable S100; row-level screen-out rules were omitted because row-specific variables are not provided.
* The questionnaire specifies cross-question disabling between advantage and disadvantage selections for Q200 and Q250, but the canonical variable structure does not provide a deterministic per-option cross-question representation; no such uncertain rule was emitted.
* Q120 and Q130 contain age-group conditional columns, but no existing filter variable is supplied for macro filtering; only structured routing evidence was retained where deterministic.
* Q300 states a 1-to-7 scale, but the parsed options list only codes 1 through 5; no invalid-code rule was added because the documented response coding is inconsistent.
* Q290, Q310, Q330, Q360, Q390, and Q420 contain age-group routing based on Q110 variables, but no existing SPSS filter variable was supplied; no macro filter was used.


EXECUTE.
