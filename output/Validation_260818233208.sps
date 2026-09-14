* Encoding: UTF-8.
* Generated deterministically by Survey Programming AI.
* Source: (V3_R98390) Caregiver AAU_Q2 2026 wave_v2 for Programming v2 (1).docx.
TITLE 'CAREGIVER AAU (Q2 2026 Wave)'.



*===============================================================================.
* SECTION MAIN: Questionnaire.
*===============================================================================.

* Question Q1.
* No validation generated: Introductory continuation screen; no respondent-data validation beyond the unstructured continue control is supported.



* Question Q2.


* [ERROR] Accept only the documented mutation-status responses.
COMPUTE V_Q2_INVALID_CODES = 0.
IF ((NOT MISSING(Q2) AND NOT ANY(Q2, 1, 2, 3))) V_Q2_INVALID_CODES = 1.



* [ERROR] Require an answer to the mutation-status question.
COMPUTE V_Q2_MANDATORY = 0.
IF (MISSING(Q2)) V_Q2_MANDATORY = 1.




* Question Q3.


* [ERROR] Accept only whole-number child ages from 0 through 30.
COMPUTE V_Q3_NUMERIC_RANGE = 0.
IF ((NOT MISSING(Q3) AND NOT ANY(Q3, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30))) V_Q3_NUMERIC_RANGE = 1.



* [ERROR] Require the child age response.
COMPUTE V_Q3_MANDATORY = 0.
IF (MISSING(Q3)) V_Q3_MANDATORY = 1.




* Question Q3A.


* [ERROR] Accept only the seven documented care-journey responses.
COMPUTE V_Q3A_INVALID_CODES = 0.
IF ((NOT MISSING(Q3A) AND NOT ANY(Q3A, 1, 2, 3, 4, 5, 6, 7))) V_Q3A_INVALID_CODES = 1.



* [ERROR] Require one care-journey response.
COMPUTE V_Q3A_MANDATORY = 0.
IF (MISSING(Q3A)) V_Q3A_MANDATORY = 1.




* Question Q4.


* [ERROR] Require the first treatment recall entry.
COMPUTE V_Q4_MANDATORY = 0.
IF (MISSING(Q4)) V_Q4_MANDATORY = 1.



* [WARNING] Validate the treatment recall open-end responses.
COMPUTE V_Q4_OPEN_END = 0.
IF (MISSING(Q4)) V_Q4_OPEN_END = 1.




* Question Q5.


* [ERROR] Accept only the five documented familiarity ratings for each treatment.
COMPUTE V_Q5_INVALID_CODES = 0.
IF ((NOT MISSING(Q5) AND NOT ANY(Q5, 1, 2, 3, 4, 5))) V_Q5_INVALID_CODES = 1.



* [ERROR] Require a familiarity rating for each displayed treatment.
COMPUTE V_Q5_MANDATORY = 0.
IF (MISSING(Q5)) V_Q5_MANDATORY = 1.




* Question Q6.


* [ERROR] Accept only the four documented treatment-use status codes for each treatment.
COMPUTE V_Q6_INVALID_CODES = 0.
IF ((NOT MISSING(Q6) AND NOT ANY(Q6, 1, 2, 3, 4))) V_Q6_INVALID_CODES = 1.



* [ERROR] Require a treatment-use status for each displayed treatment.
COMPUTE V_Q6_MANDATORY = 0.
IF (MISSING(Q6)) V_Q6_MANDATORY = 1.




* Question Q7.


* [ERROR] Accept only the documented five treatment-satisfaction ratings.
COMPUTE V_Q7_INVALID_CODES = 0.
IF ((NOT MISSING(Q7) AND NOT ANY(Q7, 1, 2, 3, 4, 5))) V_Q7_INVALID_CODES = 1.



* [WARNING] Validate the satisfaction-reason open-end response when the question is displayed.
COMPUTE V_Q7_OPEN_END = 0.
IF (MISSING(Q7)) V_Q7_OPEN_END = 1.




* Question Q8.


* [ERROR] Accept only the five documented overall-impression ratings for each displayed treatment.
COMPUTE V_Q8_INVALID_CODES = 0.
IF ((NOT MISSING(Q8) AND NOT ANY(Q8, 1, 2, 3, 4, 5))) V_Q8_INVALID_CODES = 1.




* Question Q8A.


* [WARNING] Validate the explanation open-end for each very-positive treatment shown.
COMPUTE V_Q8A_OPEN_END = 0.
IF (MISSING(Q8A)) V_Q8A_OPEN_END = 1.




* Question Q8B.


* [WARNING] Validate the explanation open-end for each very-negative treatment shown.
COMPUTE V_Q8B_OPEN_END = 0.
IF (MISSING(Q8B)) V_Q8B_OPEN_END = 1.




* Question Q9.


* [ERROR] Validate the treatment-consideration multi-response selection.
COMPUTE V_Q9_MULTIPLE_RESPONSE = 0.
IF ((NOT MISSING(Q9_1) AND NOT ANY(Q9_1, 0, 1)) OR (NOT MISSING(Q9_2) AND NOT ANY(Q9_2, 0, 1)) OR (NOT MISSING(Q9_3) AND NOT ANY(Q9_3, 0, 1)) OR (NOT MISSING(Q9_4) AND NOT ANY(Q9_4, 0, 1)) OR (NOT MISSING(Q9_5) AND NOT ANY(Q9_5, 0, 1)) OR (NOT MISSING(Q9_6) AND NOT ANY(Q9_6, 0, 1)) OR (NOT MISSING(Q9_7) AND NOT ANY(Q9_7, 0, 1)) OR (NOT MISSING(Q9_8) AND NOT ANY(Q9_8, 0, 1)) OR (NOT MISSING(Q9_9) AND NOT ANY(Q9_9, 0, 1)) OR (NOT MISSING(Q9_10) AND NOT ANY(Q9_10, 0, 1))) V_Q9_MULTIPLE_RESPONSE = 1.



* [ERROR] Accept only the documented treatment options.
COMPUTE V_Q9_INVALID_CODES = 0.
IF ((NOT MISSING(Q9) AND NOT ANY(Q9, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10))) V_Q9_INVALID_CODES = 1.



* [WARNING] Validate the follow-up explanation when at least one treatment is selected.
COMPUTE V_Q9_OPEN_END = 0.
IF (MISSING(Q9)) V_Q9_OPEN_END = 1.




* Question Q10.


* [WARNING] Validate the treatment-concern open-end response where applicable.
COMPUTE V_Q10_OPEN_END = 0.
IF (MISSING(Q10)) V_Q10_OPEN_END = 1.




* Question Q11.


* [ERROR] Validate the select-all caregiver-advice responses.
COMPUTE V_Q11_MULTIPLE_RESPONSE = 0.
IF ((NOT MISSING(Q11_1) AND NOT ANY(Q11_1, 0, 1)) OR (NOT MISSING(Q11_2) AND NOT ANY(Q11_2, 0, 1)) OR (NOT MISSING(Q11_3) AND NOT ANY(Q11_3, 0, 1)) OR (NOT MISSING(Q11_5) AND NOT ANY(Q11_5, 0, 1)) OR (NOT MISSING(Q11_6) AND NOT ANY(Q11_6, 0, 1)) OR (NOT MISSING(Q11_7) AND NOT ANY(Q11_7, 0, 1)) OR (NOT MISSING(Q11_8) AND NOT ANY(Q11_8, 0, 1)) OR (NOT MISSING(Q11_O) AND NOT ANY(Q11_O, 0, 1)) OR (NOT MISSING(Q11_9) AND NOT ANY(Q11_9, 0, 1)) OR (NOT MISSING(Q11_10) AND NOT ANY(Q11_10, 0, 1))) V_Q11_MULTIPLE_RESPONSE = 1.




* Question Q27.


* [ERROR] Accept only the documented five preparedness ratings.
COMPUTE V_Q27_INVALID_CODES = 0.
IF ((NOT MISSING(Q27) AND NOT ANY(Q27, 1, 2, 3, 4, 5))) V_Q27_INVALID_CODES = 1.



* [WARNING] Validate the explanation of appointment preparedness.
COMPUTE V_Q27_OPEN_END = 0.
IF (MISSING(Q27)) V_Q27_OPEN_END = 1.




* Question Q28.


* [ERROR] Validate the select-all appointment-preparation responses.
COMPUTE V_Q28_MULTIPLE_RESPONSE = 0.
IF ((NOT MISSING(Q28_1) AND NOT ANY(Q28_1, 0, 1)) OR (NOT MISSING(Q28_2) AND NOT ANY(Q28_2, 0, 1)) OR (NOT MISSING(Q28_3) AND NOT ANY(Q28_3, 0, 1)) OR (NOT MISSING(Q28_4) AND NOT ANY(Q28_4, 0, 1)) OR (NOT MISSING(Q28_5) AND NOT ANY(Q28_5, 0, 1)) OR (NOT MISSING(Q28_6) AND NOT ANY(Q28_6, 0, 1)) OR (NOT MISSING(Q28_7) AND NOT ANY(Q28_7, 0, 1)) OR (NOT MISSING(Q28_8) AND NOT ANY(Q28_8, 0, 1)) OR (NOT MISSING(Q28_9) AND NOT ANY(Q28_9, 0, 1)) OR (NOT MISSING(Q28_10) AND NOT ANY(Q28_10, 0, 1)) OR (NOT MISSING(Q28_11) AND NOT ANY(Q28_11, 0, 1)) OR (NOT MISSING(Q28_O) AND NOT ANY(Q28_O, 0, 1))) V_Q28_MULTIPLE_RESPONSE = 1.



* [WARNING] Validate the open-end response for the something-else option.
COMPUTE V_Q28_OPEN_END = 0.
IF (MISSING(Q28)) V_Q28_OPEN_END = 1.




* Question Q12.


* [ERROR] Validate the select-all emotions response.
COMPUTE V_Q12_MULTIPLE_RESPONSE = 0.
IF ((NOT MISSING(Q12) AND NOT ANY(Q12, 0, 1))) V_Q12_MULTIPLE_RESPONSE = 1.




* Question Q13.


* [ERROR] Accept only the three documented doctor-discussion outcomes.
COMPUTE V_Q13_INVALID_CODES = 0.
IF ((NOT MISSING(Q13) AND NOT ANY(Q13, 1, 2, 3))) V_Q13_INVALID_CODES = 1.



* [ERROR] Require one doctor-discussion outcome.
COMPUTE V_Q13_MANDATORY = 0.
IF (MISSING(Q13)) V_Q13_MANDATORY = 1.



* [WARNING] Validate the answer-specific explanation open-end.
COMPUTE V_Q13_OPEN_END = 0.
IF (MISSING(Q13)) V_Q13_OPEN_END = 1.




* Question Q14.


* [ERROR] Accept only the documented five comfort ratings for each grid column.
COMPUTE V_Q14_INVALID_CODES = 0.
IF ((NOT MISSING(Q14) AND NOT ANY(Q14, 1, 2, 3, 4, 5))) V_Q14_INVALID_CODES = 1.



* [ERROR] Require a comfort rating for each displayed topic.
COMPUTE V_Q14_MANDATORY = 0.
IF (MISSING(Q14)) V_Q14_MANDATORY = 1.




* Question Q15.


* [ERROR] Validate the select-all comfort-support responses.
COMPUTE V_Q15_MULTIPLE_RESPONSE = 0.
IF ((NOT MISSING(Q15_1) AND NOT ANY(Q15_1, 0, 1)) OR (NOT MISSING(Q15_2) AND NOT ANY(Q15_2, 0, 1)) OR (NOT MISSING(Q15_3) AND NOT ANY(Q15_3, 0, 1)) OR (NOT MISSING(Q15_4) AND NOT ANY(Q15_4, 0, 1)) OR (NOT MISSING(Q15_5) AND NOT ANY(Q15_5, 0, 1)) OR (NOT MISSING(Q15_6) AND NOT ANY(Q15_6, 0, 1)) OR (NOT MISSING(Q15_7) AND NOT ANY(Q15_7, 0, 1)) OR (NOT MISSING(Q15_O) AND NOT ANY(Q15_O, 0, 1))) V_Q15_MULTIPLE_RESPONSE = 1.



* [ERROR] Accept only the documented support-resource response codes.
COMPUTE V_Q15_INVALID_CODES = 0.
IF ((NOT MISSING(Q15) AND NOT ANY(Q15, 1, 2, 3, 4, 5, 6, 7))) V_Q15_INVALID_CODES = 1.




* Question Q16.


* [ERROR] Validate the select-all information-source responses.
COMPUTE V_Q16_MULTIPLE_RESPONSE = 0.
IF ((NOT MISSING(Q16_1) AND NOT ANY(Q16_1, 0, 1)) OR (NOT MISSING(Q16_2) AND NOT ANY(Q16_2, 0, 1)) OR (NOT MISSING(Q16_3) AND NOT ANY(Q16_3, 0, 1)) OR (NOT MISSING(Q16_4) AND NOT ANY(Q16_4, 0, 1)) OR (NOT MISSING(Q16_12) AND NOT ANY(Q16_12, 0, 1)) OR (NOT MISSING(Q16_5) AND NOT ANY(Q16_5, 0, 1)) OR (NOT MISSING(Q16_6) AND NOT ANY(Q16_6, 0, 1)) OR (NOT MISSING(Q16_7) AND NOT ANY(Q16_7, 0, 1)) OR (NOT MISSING(Q16_8) AND NOT ANY(Q16_8, 0, 1)) OR (NOT MISSING(Q16_9) AND NOT ANY(Q16_9, 0, 1)) OR (NOT MISSING(Q16_10) AND NOT ANY(Q16_10, 0, 1)) OR (NOT MISSING(Q16_11) AND NOT ANY(Q16_11, 0, 1))) V_Q16_MULTIPLE_RESPONSE = 1.



* [ERROR] Accept only the documented information-source codes.
COMPUTE V_Q16_INVALID_CODES = 0.
IF ((NOT MISSING(Q16) AND NOT ANY(Q16, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12))) V_Q16_INVALID_CODES = 1.



* [WARNING] Validate the something-else information-source explanation.
COMPUTE V_Q16_OPEN_END = 0.
IF (MISSING(Q16)) V_Q16_OPEN_END = 1.




* Question Q17.


* [ERROR] Require a first information-source selection from the dynamically inserted Q16 responses.
COMPUTE V_Q17_MANDATORY = 0.
IF (MISSING(Q17)) V_Q17_MANDATORY = 1.




* Question Q18.


* [ERROR] Validate the materials-and-resources multi-response selection.
COMPUTE V_Q18_MULTIPLE_RESPONSE = 0.
IF ((NOT MISSING(Q18_1) AND NOT ANY(Q18_1, 0, 1)) OR (NOT MISSING(Q18_4) AND NOT ANY(Q18_4, 0, 1)) OR (NOT MISSING(Q18_2) AND NOT ANY(Q18_2, 0, 1)) OR (NOT MISSING(Q18_3) AND NOT ANY(Q18_3, 0, 1)) OR (NOT MISSING(Q18_O) AND NOT ANY(Q18_O, 0, 1))) V_Q18_MULTIPLE_RESPONSE = 1.



* [WARNING] Validate the descriptions of materials received from providers.
COMPUTE V_Q18_OPEN_END = 0.
IF (MISSING(Q18)) V_Q18_OPEN_END = 1.




* Question Q19A.


* [WARNING] Validate the spontaneous OJEMDA association open-end response.
COMPUTE V_Q19A_OPEN_END = 0.
IF (MISSING(Q19A)) V_Q19A_OPEN_END = 1.




* Question Q19.


* [WARNING] Validate the three topic-specific OJEMDA knowledge open ends.
COMPUTE V_Q19_OPEN_END = 0.
IF (MISSING(Q19)) V_Q19_OPEN_END = 1.




* Question Q20.


* [ERROR] Validate that Q20 is applicable when Q5.r9 is at least 2.
COMPUTE V_Q20_R1 = 0.
IF (((Q5.r9 >= 2) AND (MISSING(Q20))) OR ((NOT (Q5.r9 >= 2)) AND (NOT MISSING(Q20)))) V_Q20_R1 = 1.



* [INFO] Validate the open-ended response format for questions about OJEMDA.
COMPUTE V_Q20_R2 = 0.
IF (MISSING(Q20)) V_Q20_R2 = 1.




* Question Q21.


* [ERROR] Validate that Q21 is applicable when Q5.r9 is at least 2.
COMPUTE V_Q21_R1 = 0.
IF (((Q5.r9 >= 2) AND (MISSING(Q21))) OR ((NOT (Q5.r9 >= 2)) AND (NOT MISSING(Q21)))) V_Q21_R1 = 1.



* [ERROR] Allow only the stated 1-to-5 comparison scale values.
COMPUTE V_Q21_R2 = 0.
IF ((NOT MISSING(Q21) AND NOT ANY(Q21, 1, 2, 3, 4, 5))) V_Q21_R2 = 1.




* Question Q22.


* [ERROR] Validate that Q22 is applicable when Q6.9 equals 1 or 2.
COMPUTE V_Q22_R1 = 0.
IF (((ANY(Q6.9, 1, 2)) AND (MISSING(Q22))) OR ((NOT (ANY(Q6.9, 1, 2))) AND (NOT MISSING(Q22)))) V_Q22_R1 = 1.



* [ERROR] Validate the multi-response structure for Q22.
COMPUTE V_Q22_R2 = 0.
IF ((NOT MISSING(Q22_1) AND NOT ANY(Q22_1, 0, 1)) OR (NOT MISSING(Q22_2) AND NOT ANY(Q22_2, 0, 1)) OR (NOT MISSING(Q22_3) AND NOT ANY(Q22_3, 0, 1)) OR (NOT MISSING(Q22_4) AND NOT ANY(Q22_4, 0, 1)) OR (NOT MISSING(Q22_5) AND NOT ANY(Q22_5, 0, 1)) OR (NOT MISSING(Q22_6) AND NOT ANY(Q22_6, 0, 1)) OR (NOT MISSING(Q22_7) AND NOT ANY(Q22_7, 0, 1)) OR (NOT MISSING(Q22_8) AND NOT ANY(Q22_8, 0, 1)) OR (NOT MISSING(Q22_O) AND NOT ANY(Q22_O, 0, 1)) OR (NOT MISSING(Q22_9) AND NOT ANY(Q22_9, 0, 1)) OR (NOT MISSING(Q22_10) AND NOT ANY(Q22_10, 0, 1))) V_Q22_R2 = 1.



* [ERROR] Allow only the listed Q22 response codes 1 through 10.
COMPUTE V_Q22_R3 = 0.
IF ((NOT MISSING(Q22) AND NOT ANY(Q22, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10))) V_Q22_R3 = 1.




* Question Q23.


* [ERROR] Validate that Q23 is applicable when Q22 equals 8.
COMPUTE V_Q23_R1 = 0.
IF (((Q22 = 8) AND (MISSING(Q23))) OR ((NOT (Q22 = 8)) AND (NOT MISSING(Q23)))) V_Q23_R1 = 1.



* [INFO] Validate the open-ended explanation of why OJEMDA was not pursued.
COMPUTE V_Q23_R2 = 0.
IF (MISSING(Q23)) V_Q23_R2 = 1.




* Question Q23A.


* [INFO] Validate the open-ended explanation of the biggest reason selected.
COMPUTE V_Q23A_R1 = 0.
IF (MISSING(Q23A)) V_Q23A_R1 = 1.




* Question Q31.


* [INFO] Validate the open-ended description of drivers for pursuing OJEMDA.
COMPUTE V_Q31_R1 = 0.
IF (MISSING(Q31)) V_Q31_R1 = 1.




* Question Q24.


* [ERROR] Allow only the two stated discussion-origin response codes.
COMPUTE V_Q24_R1 = 0.
IF ((NOT MISSING(Q24) AND NOT ANY(Q24, 1, 2))) V_Q24_R1 = 1.




* Question Q32.


* [ERROR] Validate the multi-response structure for reasons that kept the respondent from asking about OJEMDA.
COMPUTE V_Q32_R1 = 0.
IF ((NOT MISSING(Q32_1) AND NOT ANY(Q32_1, 0, 1)) OR (NOT MISSING(Q32_2) AND NOT ANY(Q32_2, 0, 1)) OR (NOT MISSING(Q32_3) AND NOT ANY(Q32_3, 0, 1)) OR (NOT MISSING(Q32_4) AND NOT ANY(Q32_4, 0, 1)) OR (NOT MISSING(Q32_5) AND NOT ANY(Q32_5, 0, 1)) OR (NOT MISSING(Q32_6) AND NOT ANY(Q32_6, 0, 1)) OR (NOT MISSING(Q32_7) AND NOT ANY(Q32_7, 0, 1)) OR (NOT MISSING(Q32_8) AND NOT ANY(Q32_8, 0, 1)) OR (NOT MISSING(Q32_9) AND NOT ANY(Q32_9, 0, 1)) OR (NOT MISSING(Q32_10) AND NOT ANY(Q32_10, 0, 1))) V_Q32_R1 = 1.



* [ERROR] Allow only the listed Q32 response codes 1 through 10.
COMPUTE V_Q32_R2 = 0.
IF ((NOT MISSING(Q32) AND NOT ANY(Q32, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10))) V_Q32_R2 = 1.




* Question Q33.


* [ERROR] Validate the multi-response structure for Q33.
COMPUTE V_Q33_R1 = 0.
IF ((NOT MISSING(Q33_1) AND NOT ANY(Q33_1, 0, 1)) OR (NOT MISSING(Q33_2) AND NOT ANY(Q33_2, 0, 1)) OR (NOT MISSING(Q33_3) AND NOT ANY(Q33_3, 0, 1)) OR (NOT MISSING(Q33_4) AND NOT ANY(Q33_4, 0, 1)) OR (NOT MISSING(Q33_5) AND NOT ANY(Q33_5, 0, 1)) OR (NOT MISSING(Q33_6) AND NOT ANY(Q33_6, 0, 1)) OR (NOT MISSING(Q33_7) AND NOT ANY(Q33_7, 0, 1)) OR (NOT MISSING(Q33_8) AND NOT ANY(Q33_8, 0, 1)) OR (NOT MISSING(Q33_9) AND NOT ANY(Q33_9, 0, 1))) V_Q33_R1 = 1.



* [ERROR] Enforce the instruction to select up to three responses.
COMPUTE V_Q33_R2 = 0.
IF (SUM(Q33_1, Q33_2, Q33_3, Q33_4, Q33_5, Q33_6, Q33_7, Q33_8, Q33_9) > 3) V_Q33_R2 = 1.



* [ERROR] Allow only the listed Q33 response codes 1 through 9.
COMPUTE V_Q33_R3 = 0.
IF ((NOT MISSING(Q33) AND NOT ANY(Q33, 1, 2, 3, 4, 5, 6, 7, 8, 9))) V_Q33_R3 = 1.




* Question Q25.


* [INFO] Validate the open-ended description of the child’s OJEMDA experience.
COMPUTE V_Q25_R1 = 0.
IF (MISSING(Q25)) V_Q25_R1 = 1.




* Question Q26.


* [ERROR] Validate that Q26 is applicable when Q6.9 equals 1 or 2.
COMPUTE V_Q26_R1 = 0.
IF (((ANY(Q6.9, 1, 2)) AND (MISSING(Q26))) OR ((NOT (ANY(Q6.9, 1, 2))) AND (NOT MISSING(Q26)))) V_Q26_R1 = 1.



* [ERROR] Allow only the stated 1-to-5 likelihood scale values.
COMPUTE V_Q26_R2 = 0.
IF ((NOT MISSING(Q26) AND NOT ANY(Q26, 1, 2, 3, 4, 5))) V_Q26_R2 = 1.





*===============================================================================.
* FINAL VALIDATION SUMMARY.
*===============================================================================.
COMPUTE VALIDATION_OVERALL = MAX(V_Q2_INVALID_CODES, V_Q2_MANDATORY, V_Q3_NUMERIC_RANGE, V_Q3_MANDATORY, V_Q3A_INVALID_CODES, V_Q3A_MANDATORY, V_Q4_MANDATORY, V_Q4_OPEN_END, V_Q5_INVALID_CODES, V_Q5_MANDATORY, V_Q6_INVALID_CODES, V_Q6_MANDATORY, V_Q7_INVALID_CODES, V_Q7_OPEN_END, V_Q8_INVALID_CODES, V_Q8A_OPEN_END, V_Q8B_OPEN_END, V_Q9_MULTIPLE_RESPONSE, V_Q9_INVALID_CODES, V_Q9_OPEN_END, V_Q10_OPEN_END, V_Q11_MULTIPLE_RESPONSE, V_Q27_INVALID_CODES, V_Q27_OPEN_END, V_Q28_MULTIPLE_RESPONSE, V_Q28_OPEN_END, V_Q12_MULTIPLE_RESPONSE, V_Q13_INVALID_CODES, V_Q13_MANDATORY, V_Q13_OPEN_END, V_Q14_INVALID_CODES, V_Q14_MANDATORY, V_Q15_MULTIPLE_RESPONSE, V_Q15_INVALID_CODES, V_Q16_MULTIPLE_RESPONSE, V_Q16_INVALID_CODES, V_Q16_OPEN_END, V_Q17_MANDATORY, V_Q18_MULTIPLE_RESPONSE, V_Q18_OPEN_END, V_Q19A_OPEN_END, V_Q19_OPEN_END, V_Q20_R1, V_Q20_R2, V_Q21_R1, V_Q21_R2, V_Q22_R1, V_Q22_R2, V_Q22_R3, V_Q23_R1, V_Q23_R2, V_Q23A_R1, V_Q31_R1, V_Q24_R1, V_Q32_R1, V_Q32_R2, V_Q33_R1, V_Q33_R2, V_Q33_R3, V_Q25_R1, V_Q26_R1, V_Q26_R2).
FREQUENCIES VARIABLES=V_Q2_INVALID_CODES V_Q2_MANDATORY V_Q3_NUMERIC_RANGE V_Q3_MANDATORY V_Q3A_INVALID_CODES V_Q3A_MANDATORY V_Q4_MANDATORY V_Q4_OPEN_END V_Q5_INVALID_CODES V_Q5_MANDATORY V_Q6_INVALID_CODES V_Q6_MANDATORY V_Q7_INVALID_CODES V_Q7_OPEN_END V_Q8_INVALID_CODES V_Q8A_OPEN_END V_Q8B_OPEN_END V_Q9_MULTIPLE_RESPONSE V_Q9_INVALID_CODES V_Q9_OPEN_END V_Q10_OPEN_END V_Q11_MULTIPLE_RESPONSE V_Q27_INVALID_CODES V_Q27_OPEN_END V_Q28_MULTIPLE_RESPONSE V_Q28_OPEN_END V_Q12_MULTIPLE_RESPONSE V_Q13_INVALID_CODES V_Q13_MANDATORY V_Q13_OPEN_END V_Q14_INVALID_CODES V_Q14_MANDATORY V_Q15_MULTIPLE_RESPONSE V_Q15_INVALID_CODES V_Q16_MULTIPLE_RESPONSE V_Q16_INVALID_CODES V_Q16_OPEN_END V_Q17_MANDATORY V_Q18_MULTIPLE_RESPONSE V_Q18_OPEN_END V_Q19A_OPEN_END V_Q19_OPEN_END V_Q20_R1 V_Q20_R2 V_Q21_R1 V_Q21_R2 V_Q22_R1 V_Q22_R2 V_Q22_R3 V_Q23_R1 V_Q23_R2 V_Q23A_R1 V_Q31_R1 V_Q24_R1 V_Q32_R1 V_Q32_R2 V_Q33_R1 V_Q33_R2 V_Q33_R3 V_Q25_R1 V_Q26_R1 V_Q26_R2 VALIDATION_OVERALL.

* MODEL WARNINGS.
* Q4 specifies a minimum of two characters for each open-end response, but the available rule schema has no typed text-length parameter; the open-end check is therefore emitted without that threshold.
* Q6 explicitly defines a real-time warning when more than one treatment is currently used, but the supplied schema cannot represent a count-based trigger without inventing row variables.
* Q8, Q9, Q10, and Q15-Q19A contain conditional routing text, but no existing filter variables or sufficiently row-specific structured predicates were supplied; uncertain conditional rules were omitted.
* Exclusive-option logic is described for Q11 and Q28 and implied for Q15 and Q18, but exclusive binary variable names were not supplied; exclusivity rules were omitted rather than invented.
* Q22 explicitly identifies exclusive options, but the canonical questionnaire supplies only the base variable and does not provide distinct exclusive response variables; no exclusive-answer rule was emitted.
* Several routing statements use OR conditions or dynamic inserted responses without a safely representable structured predicate; corresponding uncertain routing rules were omitted for Q23A, Q31, Q24, Q32, Q33, and Q25.

* MODEL NOTES.
* Open-ended checks validate the stated response format but do not impose mandatory completion because these questions are explicitly conditionally routed and marked not required.

EXECUTE.
