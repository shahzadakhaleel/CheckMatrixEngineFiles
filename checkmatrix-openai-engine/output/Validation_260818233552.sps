* Encoding: UTF-8.
* Generated deterministically by Survey Programming AI.
* Source: 2026 Arcalyst HCP Ad Tracker W1_Programming_v6.docx.
TITLE '2026 Recurrent Pericarditis (HCP) Ad Tracker'.



*===============================================================================.
* SECTION MAIN: Questionnaire.
*===============================================================================.

* Question W1.
* No validation generated: Informational quota and sampling instructions; no respondent-entered answer is defined.



* Question AE1.


* [ERROR] Consent confirmation is required before proceeding.
COMPUTE V_AE1_MANDATORY = 0.
IF (MISSING(AE1)) V_AE1_MANDATORY = 1.




* Question S2.


* [ERROR] Primary medical specialty is required for screening.
COMPUTE V_S2_MANDATORY = 0.
IF (MISSING(S2)) V_S2_MANDATORY = 1.




* Question S3.


* [ERROR] Practice-status response is required for screening.
COMPUTE V_S3_MANDATORY = 0.
IF (MISSING(S3)) V_S3_MANDATORY = 1.



* [ERROR] Respondents who are not in full-time active practice terminate.
COMPUTE V_S3_SCREENOUT_NO = 0.
IF (S3 = 'No') V_S3_SCREENOUT_NO = 1.




* Question S4.


* [ERROR] Primary practice location is required for screening.
COMPUTE V_S4_MANDATORY = 0.
IF (MISSING(S4)) V_S4_MANDATORY = 1.




* Question S5.


* [ERROR] Direct-patient-care percentage is required for screening.
COMPUTE V_S5_MANDATORY = 0.
IF (MISSING(S5)) V_S5_MANDATORY = 1.




* Question S6.


* [ERROR] Years in practice is required for screening.
COMPUTE V_S6_MANDATORY = 0.
IF (MISSING(S6)) V_S6_MANDATORY = 1.




* Question S7.


* [ERROR] Patient counts for all listed conditions must be entered, including zero where not applicable.
COMPUTE V_S7_MANDATORY = 0.
IF (MISSING(S7)) V_S7_MANDATORY = 1.




* Question S8.


* [ERROR] Counts for recurrent and single-episode pericarditis must be entered.
COMPUTE V_S8_MANDATORY = 0.
IF (MISSING(S8)) V_S8_MANDATORY = 1.




* Question S7_2.
* No validation generated: Display-only sum counter; no respondent-entered response is defined.



* Question S9.


* [ERROR] Etiology counts are required.
COMPUTE V_S9_MANDATORY = 0.
IF (MISSING(S9)) V_S9_MANDATORY = 1.




* Question S8_1.
* No validation generated: The supplied content is a termination/calculation instruction with incomplete sum logic and does not define a clear respondent response variable.




*===============================================================================.
* SECTION 1: Brand Metrics & Ad Recall.
*===============================================================================.

* Question Q105.


* [WARNING] Therapy awareness responses are collected in separate open-text boxes, with 'none' instructed in the first box when applicable.
COMPUTE V_Q105_OPEN_END = 0.
IF (MISSING(Q105)) V_Q105_OPEN_END = 1.




* Question Q110.
* No validation generated: The response scale and underlying therapy-specific variables are incomplete in the supplied canonical content.



* Question Q115.
* No validation generated: The question text is truncated and does not provide response options or sufficient variable detail for a supported check.



* Question Q120.


* [ERROR] Each product rating must use the stated 1-to-7 scale.
COMPUTE V_Q120_INVALID_CODES = 0.
IF ((NOT MISSING(Q120) AND NOT ANY(Q120, 1, 2, 3, 4, 5, 6, 7))) V_Q120_INVALID_CODES = 1.



* [ERROR] Overall product-importance ratings are requested for all respondents.
COMPUTE V_Q120_MANDATORY = 0.
IF (MISSING(Q120)) V_Q120_MANDATORY = 1.




* Question Q125.


* [ERROR] Each product-preference rating must use the stated 1-to-7 scale.
COMPUTE V_Q125_INVALID_CODES = 0.
IF ((NOT MISSING(Q125) AND NOT ANY(Q125, 1, 2, 3, 4, 5, 6, 7))) V_Q125_INVALID_CODES = 1.




* Question Q130.


* [ERROR] Respondents may select as many or as few treatments as applicable for each attribute.
COMPUTE V_Q130_MULTIPLE_RESPONSE = 0.
IF ((NOT MISSING(Q130_1) AND NOT ANY(Q130_1, 0, 1)) OR (NOT MISSING(Q130_2) AND NOT ANY(Q130_2, 0, 1)) OR (NOT MISSING(Q130_3) AND NOT ANY(Q130_3, 0, 1)) OR (NOT MISSING(Q130_4) AND NOT ANY(Q130_4, 0, 1)) OR (NOT MISSING(Q130_5) AND NOT ANY(Q130_5, 0, 1)) OR (NOT MISSING(Q130_6) AND NOT ANY(Q130_6, 0, 1)) OR (NOT MISSING(Q130_7) AND NOT ANY(Q130_7, 0, 1)) OR (NOT MISSING(Q130_8) AND NOT ANY(Q130_8, 0, 1)) OR (NOT MISSING(Q130_9) AND NOT ANY(Q130_9, 0, 1)) OR (NOT MISSING(Q130_10) AND NOT ANY(Q130_10, 0, 1)) OR (NOT MISSING(Q130_11) AND NOT ANY(Q130_11, 0, 1)) OR (NOT MISSING(Q130_12) AND NOT ANY(Q130_12, 0, 1)) OR (NOT MISSING(Q130_13) AND NOT ANY(Q130_13, 0, 1)) OR (NOT MISSING(Q130_14) AND NOT ANY(Q130_14, 0, 1))) V_Q130_MULTIPLE_RESPONSE = 1.




* Question Q135.


* [ERROR] Respondents may select all applicable advertised products.
COMPUTE V_Q135_MULTIPLE_RESPONSE = 0.
IF ((NOT MISSING(Q135) AND NOT ANY(Q135, 0, 1))) V_Q135_MULTIPLE_RESPONSE = 1.




* Question Q137.


* [WARNING] Recall of the Arcalyst advertisement is collected as an open-text response when the relevant advertisement was recalled.
COMPUTE V_Q137_OPEN_END = 0.
IF (MISSING(Q137)) V_Q137_OPEN_END = 1.




* Question Q140.


* [ERROR] Respondents may select all applicable advertising locations.
COMPUTE V_Q140_MULTIPLE_RESPONSE = 0.
IF ((NOT MISSING(Q140) AND NOT ANY(Q140, 0, 1))) V_Q140_MULTIPLE_RESPONSE = 1.





*===============================================================================.
* SECTION 2: Blinded Ad Recall.
*===============================================================================.

* Question Q205.
* No validation generated: Yes/No response codes are not supplied in the canonical content, and the stated base/routing condition is incomplete.



* Question Q210.


* [WARNING] Advertisement therapy or brand is collected as an open-text response when the advertisement was seen.
COMPUTE V_Q210_OPEN_END = 0.
IF (MISSING(Q210)) V_Q210_OPEN_END = 1.




* Question Q220.
* No validation generated: The question text is truncated and does not provide response options or sufficient variable detail.



* Question Q230.


* [ERROR] Respondents may select all applicable locations where the advertisement was seen.
COMPUTE V_Q230_MULTIPLE_RESPONSE = 0.
IF ((NOT MISSING(Q230) AND NOT ANY(Q230, 0, 1))) V_Q230_MULTIPLE_RESPONSE = 1.




* Question Q240.


* [ERROR] Response is required for respondents who recalled seeing the advertisement.
COMPUTE V_Q240_R1 = 0.
IF (MISSING(Q240)) V_Q240_R1 = 1.



* [ERROR] Estimated number of times seen must be between 1 and 99.
!Numeric svar=Q240 min=1 max=99.
COMPUTE V_Q240_R2 = 0.
IF ((NOT MISSING(Q240) AND NOT ANY(Q240, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99))) V_Q240_R2 = 1.




* Question Q245.


* [ERROR] Open-ended response is required for respondents who recalled seeing the advertisement.
COMPUTE V_Q245_R1 = 0.
IF (MISSING(Q245)) V_Q245_R1 = 1.



* [ERROR] Validate the advertisement main-message open-text response.
!String svar=Q245.
COMPUTE V_Q245_R2 = 0.
IF (MISSING(Q245)) V_Q245_R2 = 1.




* Question Q250.


* [ERROR] At least one message response is required for respondents who recalled seeing the advertisement.
COMPUTE V_Q250_R1 = 0.
IF (MISSING(Q250)) V_Q250_R1 = 1.



* [ERROR] Validate the select-all-that-apply message responses.
COMPUTE V_Q250_R2 = 0.
IF ((NOT MISSING(Q250) AND NOT ANY(Q250, 0, 1))) V_Q250_R2 = 1.




* Question Q255.


* [ERROR] Validate the select-all-that-apply actions taken after seeing the advertisement.
COMPUTE V_Q255_R1 = 0.
IF ((NOT MISSING(Q255) AND NOT ANY(Q255, 0, 1))) V_Q255_R1 = 1.





*===============================================================================.
* SECTION 3: Ad Evaluation.
*===============================================================================.

* Question Q305.


* [ERROR] Main-message open-ended response is required for all respondents.
COMPUTE V_Q305_R1 = 0.
IF (MISSING(Q305)) V_Q305_R1 = 1.



* [ERROR] Validate the advertisement main-message open-text response.
!String svar=Q305.
COMPUTE V_Q305_R2 = 0.
IF (MISSING(Q305)) V_Q305_R2 = 1.




* Question Q310.


* [ERROR] Overall advertisement impression is required for all respondents.
COMPUTE V_Q310_R1 = 0.
IF (MISSING(Q310)) V_Q310_R1 = 1.



* [ERROR] Overall impression must use one of the five stated response values.
COMPUTE V_Q310_R2 = 0.
IF ((NOT MISSING(Q310) AND NOT ANY(Q310, 1, 2, 3, 4, 5))) V_Q310_R2 = 1.




* Question Q315.


* [ERROR] Open-ended likes response is required for respondents who disliked the advertisement.
COMPUTE V_Q315_R1 = 0.
IF (MISSING(Q315)) V_Q315_R1 = 1.



* [ERROR] Validate the open-ended response describing what is liked about the advertisement.
!String svar=Q315.
COMPUTE V_Q315_R2 = 0.
IF (MISSING(Q315)) V_Q315_R2 = 1.




* Question Q320.


* [ERROR] Open-ended dislikes response is required for all respondents.
COMPUTE V_Q320_R1 = 0.
IF (MISSING(Q320)) V_Q320_R1 = 1.



* [ERROR] Validate the open-ended response describing what is disliked about the advertisement.
!String svar=Q320.
COMPUTE V_Q320_R2 = 0.
IF (MISSING(Q320)) V_Q320_R2 = 1.




* Question Q325.


* [ERROR] Each grid row requires one agreement response.
COMPUTE V_Q325_R1 = 0.
IF (MISSING(Q325)) V_Q325_R1 = 1.



* [ERROR] Each grid response must use one of the stated agreement codes 1, 2, or 3.
COMPUTE V_Q325_R2 = 0.
IF ((NOT MISSING(Q325) AND NOT ANY(Q325, 1, 2, 3))) V_Q325_R2 = 1.




* Question Q340.


* [ERROR] Prior advertisement recall response is required for all respondents.
COMPUTE V_Q340_R1 = 0.
IF (MISSING(Q340)) V_Q340_R1 = 1.




* Question Q345.


* [ERROR] At least one remembered advertisement location is required for all respondents.
COMPUTE V_Q345_R1 = 0.
IF (MISSING(Q345)) V_Q345_R1 = 1.



* [ERROR] Validate the select-all-that-apply remembered advertisement locations.
COMPUTE V_Q345_R2 = 0.
IF ((NOT MISSING(Q345) AND NOT ANY(Q345, 0, 1))) V_Q345_R2 = 1.




* Question Q350.


* [ERROR] At least one intended action response is required.
COMPUTE V_Q350_R1 = 0.
IF (MISSING(Q350)) V_Q350_R1 = 1.



* [ERROR] Validate the select-all-that-apply intended actions after seeing the advertisement.
COMPUTE V_Q350_R2 = 0.
IF ((NOT MISSING(Q350) AND NOT ANY(Q350, 0, 1))) V_Q350_R2 = 1.




* Question Q355.


* [ERROR] Timeframe response is required for all respondents.
COMPUTE V_Q355_R1 = 0.
IF (MISSING(Q355)) V_Q355_R1 = 1.





*===============================================================================.
* SECTION 8: Demographics.
*===============================================================================.

* Question D1.


* [ERROR] Biological sex response is required for all respondents.
COMPUTE V_D1_R1 = 0.
IF (MISSING(D1)) V_D1_R1 = 1.




* Question D2.


* [ERROR] Age response is required for all respondents.
COMPUTE V_D2_R1 = 0.
IF (MISSING(D2)) V_D2_R1 = 1.



* [ERROR] Age must be between 0 and 100.
!Numeric svar=D2 min=0 max=100.
COMPUTE V_D2_R2 = 0.
IF ((NOT MISSING(D2) AND NOT ANY(D2, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100))) V_D2_R2 = 1.




* Question D3.


* [ERROR] Geographic area response is required for all respondents.
COMPUTE V_D3_R1 = 0.
IF (MISSING(D3)) V_D3_R1 = 1.




* Question D4.


* [ERROR] Clinical setting response is required for all respondents.
COMPUTE V_D4_R1 = 0.
IF (MISSING(D4)) V_D4_R1 = 1.




* Question D5.THANK.


* [ERROR] Follow-up interview interest response is required.
COMPUTE V_D5_THANK_R1 = 0.
IF (MISSING(D5.THANK)) V_D5_THANK_R1 = 1.





*===============================================================================.
* FINAL VALIDATION SUMMARY.
*===============================================================================.
COMPUTE VALIDATION_OVERALL = MAX(V_AE1_MANDATORY, V_S2_MANDATORY, V_S3_MANDATORY, V_S3_SCREENOUT_NO, V_S4_MANDATORY, V_S5_MANDATORY, V_S6_MANDATORY, V_S7_MANDATORY, V_S8_MANDATORY, V_S9_MANDATORY, V_Q105_OPEN_END, V_Q120_INVALID_CODES, V_Q120_MANDATORY, V_Q125_INVALID_CODES, V_Q130_MULTIPLE_RESPONSE, V_Q135_MULTIPLE_RESPONSE, V_Q137_OPEN_END, V_Q140_MULTIPLE_RESPONSE, V_Q210_OPEN_END, V_Q230_MULTIPLE_RESPONSE, V_Q240_R1, V_Q240_R2, V_Q245_R1, V_Q245_R2, V_Q250_R1, V_Q250_R2, V_Q255_R1, V_Q305_R1, V_Q305_R2, V_Q310_R1, V_Q310_R2, V_Q315_R1, V_Q315_R2, V_Q320_R1, V_Q320_R2, V_Q325_R1, V_Q325_R2, V_Q340_R1, V_Q345_R1, V_Q345_R2, V_Q350_R1, V_Q350_R2, V_Q355_R1, V_D1_R1, V_D2_R1, V_D2_R2, V_D3_R1, V_D4_R1, V_D5_THANK_R1).
FREQUENCIES VARIABLES=V_AE1_MANDATORY V_S2_MANDATORY V_S3_MANDATORY V_S3_SCREENOUT_NO V_S4_MANDATORY V_S5_MANDATORY V_S6_MANDATORY V_S7_MANDATORY V_S8_MANDATORY V_S9_MANDATORY V_Q105_OPEN_END V_Q120_INVALID_CODES V_Q120_MANDATORY V_Q125_INVALID_CODES V_Q130_MULTIPLE_RESPONSE V_Q135_MULTIPLE_RESPONSE V_Q137_OPEN_END V_Q140_MULTIPLE_RESPONSE V_Q210_OPEN_END V_Q230_MULTIPLE_RESPONSE V_Q240_R1 V_Q240_R2 V_Q245_R1 V_Q245_R2 V_Q250_R1 V_Q250_R2 V_Q255_R1 V_Q305_R1 V_Q305_R2 V_Q310_R1 V_Q310_R2 V_Q315_R1 V_Q315_R2 V_Q320_R1 V_Q320_R2 V_Q325_R1 V_Q325_R2 V_Q340_R1 V_Q345_R1 V_Q345_R2 V_Q350_R1 V_Q350_R2 V_Q355_R1 V_D1_R1 V_D2_R1 V_D2_R2 V_D3_R1 V_D4_R1 V_D5_THANK_R1 VALIDATION_OVERALL.

* MODEL WARNINGS.
* The supplied batch contains incomplete or truncated canonical content for several numeric grids and questions; uncertain range, sum, routing, and code checks were omitted.
* The canonical batch declares 25 questions, and all 25 supplied questions are represented in questionnaire order.
* Q250 and Q255 specify exclusive response options, but no option-level variable names or codes are supplied; exclusivity rules were omitted.
* Q255 mentions an Other-specify response, but no separate open-text variable is supplied; an open-end consistency rule was omitted.
* Q350 text is truncated and does not provide the response options or any exclusivity details; only the supported multiple-response check was included.
* The Q340 base text is self-referential and does not provide a reliable routing predicate; no routing rule was added.


EXECUTE.
