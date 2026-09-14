* Encoding: UTF-8.
* Generated deterministically by Survey Programming AI.
* Source: (V3_R93941) 12847_BD_Nexus_Post_Market_Surveillance_Qre_260429_James_02.docx.
TITLE 'Nexus Post Market Surveillance Questionnaires for Picot 1 and Picot 2'.
* Project: 12847.


*===============================================================================.
* SECTION Questionnaire for PICOT 1 - “Multistep” or “25 Steps” function.: Questionnaire for PICOT 1 - “Multistep” or “25 Steps” function..
*===============================================================================.

* Question Q0.


* [ERROR] Response must use one of the two defined Q0 answer codes.
COMPUTE V_Q0_INVALID_CODES = 0.
IF ((NOT MISSING(Q0) AND NOT ANY(Q0, 1, 2))) V_Q0_INVALID_CODES = 1.



* [INFO] Respondents selecting that they have not used the function are routed to thank and close.
COMPUTE V_Q0_SCREEN_OUT = 0.
IF (Q0 = 2) V_Q0_SCREEN_OUT = 1.




* Question Q1.


* [ERROR] Selected clinical-area codes must be among the twelve defined options.
COMPUTE V_Q1_INVALID_CODES = 0.
IF ((NOT MISSING(Q1) AND NOT ANY(Q1, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12))) V_Q1_INVALID_CODES = 1.



* [ERROR] Responses must conform to the select-all-that-apply structure for Q1.
COMPUTE V_Q1_MULTIPLE_RESPONSE = 0.
IF ((NOT MISSING(Q1_1) AND NOT ANY(Q1_1, 0, 1)) OR (NOT MISSING(Q1_2) AND NOT ANY(Q1_2, 0, 1)) OR (NOT MISSING(Q1_3) AND NOT ANY(Q1_3, 0, 1)) OR (NOT MISSING(Q1_4) AND NOT ANY(Q1_4, 0, 1)) OR (NOT MISSING(Q1_5) AND NOT ANY(Q1_5, 0, 1)) OR (NOT MISSING(Q1_6) AND NOT ANY(Q1_6, 0, 1)) OR (NOT MISSING(Q1_7) AND NOT ANY(Q1_7, 0, 1)) OR (NOT MISSING(Q1_8) AND NOT ANY(Q1_8, 0, 1)) OR (NOT MISSING(Q1_9) AND NOT ANY(Q1_9, 0, 1)) OR (NOT MISSING(Q1_10) AND NOT ANY(Q1_10, 0, 1)) OR (NOT MISSING(Q1_11) AND NOT ANY(Q1_11, 0, 1)) OR (NOT MISSING(Q1_12) AND NOT ANY(Q1_12, 0, 1))) V_Q1_MULTIPLE_RESPONSE = 1.





*===============================================================================.
* SECTION Q2 to Q8: Q2 to Q8.
*===============================================================================.

* Question Q2_01.


* [ERROR] Response must use one of the seven defined frequency codes.
COMPUTE V_Q2_01_INVALID_CODES = 0.
IF ((NOT MISSING(Q2_01) AND NOT ANY(Q2_01, 1, 2, 3, 4, 5, 6, 7))) V_Q2_01_INVALID_CODES = 1.




* Question Q2_02.


* [ERROR] Response must use one of the seven defined frequency codes.
COMPUTE V_Q2_02_INVALID_CODES = 0.
IF ((NOT MISSING(Q2_02) AND NOT ANY(Q2_02, 1, 2, 3, 4, 5, 6, 7))) V_Q2_02_INVALID_CODES = 1.




* Question Q2_03.


* [ERROR] Response must use one of the seven defined frequency codes.
COMPUTE V_Q2_03_INVALID_CODES = 0.
IF ((NOT MISSING(Q2_03) AND NOT ANY(Q2_03, 1, 2, 3, 4, 5, 6, 7))) V_Q2_03_INVALID_CODES = 1.




* Question Q2_04.


* [ERROR] Response must use one of the seven defined frequency codes.
COMPUTE V_Q2_04_INVALID_CODES = 0.
IF ((NOT MISSING(Q2_04) AND NOT ANY(Q2_04, 1, 2, 3, 4, 5, 6, 7))) V_Q2_04_INVALID_CODES = 1.




* Question Q2_05.


* [ERROR] Response must use one of the seven defined frequency codes.
COMPUTE V_Q2_05_INVALID_CODES = 0.
IF ((NOT MISSING(Q2_05) AND NOT ANY(Q2_05, 1, 2, 3, 4, 5, 6, 7))) V_Q2_05_INVALID_CODES = 1.




* Question Q3_01.


* [ERROR] Response must use one of the five defined outcome-rating codes.
COMPUTE V_Q3_01_INVALID_CODES = 0.
IF ((NOT MISSING(Q3_01) AND NOT ANY(Q3_01, 1, 2, 3, 4, 5))) V_Q3_01_INVALID_CODES = 1.




* Question Q3_02.


* [ERROR] Response must use one of the five defined outcome-rating codes.
COMPUTE V_Q3_02_INVALID_CODES = 0.
IF ((NOT MISSING(Q3_02) AND NOT ANY(Q3_02, 1, 2, 3, 4, 5))) V_Q3_02_INVALID_CODES = 1.




* Question Q3_03.


* [ERROR] Response must use one of the five defined outcome-rating codes.
COMPUTE V_Q3_03_INVALID_CODES = 0.
IF ((NOT MISSING(Q3_03) AND NOT ANY(Q3_03, 1, 2, 3, 4, 5))) V_Q3_03_INVALID_CODES = 1.




* Question Q3_04.


* [ERROR] Response must use one of the five defined outcome-rating codes.
COMPUTE V_Q3_04_INVALID_CODES = 0.
IF ((NOT MISSING(Q3_04) AND NOT ANY(Q3_04, 1, 2, 3, 4, 5))) V_Q3_04_INVALID_CODES = 1.




* Question Q3_05.


* [ERROR] Response must use one of the five defined outcome-rating codes.
COMPUTE V_Q3_05_INVALID_CODES = 0.
IF ((NOT MISSING(Q3_05) AND NOT ANY(Q3_05, 1, 2, 3, 4, 5))) V_Q3_05_INVALID_CODES = 1.




* Question Q4_01.


* [ERROR] Response must use one of the five defined value-rating codes.
COMPUTE V_Q4_01_INVALID_CODES = 0.
IF ((NOT MISSING(Q4_01) AND NOT ANY(Q4_01, 1, 2, 3, 4, 5))) V_Q4_01_INVALID_CODES = 1.




* Question Q4_02.


* [ERROR] Response must use one of the five defined value-rating codes.
COMPUTE V_Q4_02_INVALID_CODES = 0.
IF ((NOT MISSING(Q4_02) AND NOT ANY(Q4_02, 1, 2, 3, 4, 5))) V_Q4_02_INVALID_CODES = 1.




* Question Q4_03.


* [ERROR] Response must use one of the five defined value-rating codes.
COMPUTE V_Q4_03_INVALID_CODES = 0.
IF ((NOT MISSING(Q4_03) AND NOT ANY(Q4_03, 1, 2, 3, 4, 5))) V_Q4_03_INVALID_CODES = 1.




* Question Q4_04.


* [ERROR] Response must use one of the five defined value-rating codes.
COMPUTE V_Q4_04_INVALID_CODES = 0.
IF ((NOT MISSING(Q4_04) AND NOT ANY(Q4_04, 1, 2, 3, 4, 5))) V_Q4_04_INVALID_CODES = 1.




* Question Q4_05.


* [ERROR] Response must use one of the five defined value-rating codes.
COMPUTE V_Q4_05_INVALID_CODES = 0.
IF ((NOT MISSING(Q4_05) AND NOT ANY(Q4_05, 1, 2, 3, 4, 5))) V_Q4_05_INVALID_CODES = 1.




* Question Q5_01.


* [ERROR] Ranking responses must use ranks through 5 as specified for the five outcomes.
COMPUTE V_Q5_01_RANKING = 0.
IF ((NOT MISSING(Q5_01_1) AND NOT RANGE(Q5_01_1, 1, 5)) OR (NOT MISSING(Q5_01_2) AND NOT RANGE(Q5_01_2, 1, 5)) OR (NOT MISSING(Q5_01_3) AND NOT RANGE(Q5_01_3, 1, 5)) OR (NOT MISSING(Q5_01_4) AND NOT RANGE(Q5_01_4, 1, 5)) OR (NOT MISSING(Q5_01_5) AND NOT RANGE(Q5_01_5, 1, 5))) V_Q5_01_RANKING = 1.




* Question Q5_02.


* [ERROR] Ranking responses must use ranks through 5 as specified for the five outcomes.
COMPUTE V_Q5_02_RANKING = 0.
IF ((NOT MISSING(Q5_02_1) AND NOT RANGE(Q5_02_1, 1, 5)) OR (NOT MISSING(Q5_02_2) AND NOT RANGE(Q5_02_2, 1, 5)) OR (NOT MISSING(Q5_02_3) AND NOT RANGE(Q5_02_3, 1, 5)) OR (NOT MISSING(Q5_02_4) AND NOT RANGE(Q5_02_4, 1, 5)) OR (NOT MISSING(Q5_02_5) AND NOT RANGE(Q5_02_5, 1, 5))) V_Q5_02_RANKING = 1.




* Question Q5_03.


* [ERROR] Ranking responses must use ranks through 5 as specified for the five outcomes.
COMPUTE V_Q5_03_RANKING = 0.
IF ((NOT MISSING(Q5_03_1) AND NOT RANGE(Q5_03_1, 1, 5)) OR (NOT MISSING(Q5_03_2) AND NOT RANGE(Q5_03_2, 1, 5)) OR (NOT MISSING(Q5_03_3) AND NOT RANGE(Q5_03_3, 1, 5)) OR (NOT MISSING(Q5_03_4) AND NOT RANGE(Q5_03_4, 1, 5)) OR (NOT MISSING(Q5_03_5) AND NOT RANGE(Q5_03_5, 1, 5))) V_Q5_03_RANKING = 1.




* Question Q5_04.


* [ERROR] Ranking responses must use ranks through 5 as specified for the five outcomes.
COMPUTE V_Q5_04_RANKING = 0.
IF ((NOT MISSING(Q5_04_1) AND NOT RANGE(Q5_04_1, 1, 5)) OR (NOT MISSING(Q5_04_2) AND NOT RANGE(Q5_04_2, 1, 5)) OR (NOT MISSING(Q5_04_3) AND NOT RANGE(Q5_04_3, 1, 5)) OR (NOT MISSING(Q5_04_4) AND NOT RANGE(Q5_04_4, 1, 5)) OR (NOT MISSING(Q5_04_5) AND NOT RANGE(Q5_04_5, 1, 5))) V_Q5_04_RANKING = 1.




* Question Q5_05.


* [ERROR] Ranking responses must use ranks through 5 as specified for the five outcomes.
COMPUTE V_Q5_05_RANKING = 0.
IF ((NOT MISSING(Q5_05_1) AND NOT RANGE(Q5_05_1, 1, 5)) OR (NOT MISSING(Q5_05_2) AND NOT RANGE(Q5_05_2, 1, 5)) OR (NOT MISSING(Q5_05_3) AND NOT RANGE(Q5_05_3, 1, 5)) OR (NOT MISSING(Q5_05_4) AND NOT RANGE(Q5_05_4, 1, 5)) OR (NOT MISSING(Q5_05_5) AND NOT RANGE(Q5_05_5, 1, 5))) V_Q5_05_RANKING = 1.




* Question Q6_01.


* [ERROR] Response must use one of the five defined capability-rating codes.
COMPUTE V_Q6_01_INVALID_CODES = 0.
IF ((NOT MISSING(Q6_01) AND NOT ANY(Q6_01, 1, 2, 3, 4, 5))) V_Q6_01_INVALID_CODES = 1.




* Question Q6_02.


* [ERROR] Response must use one of the five defined capability-rating codes.
COMPUTE V_Q6_02_INVALID_CODES = 0.
IF ((NOT MISSING(Q6_02) AND NOT ANY(Q6_02, 1, 2, 3, 4, 5))) V_Q6_02_INVALID_CODES = 1.




* Question Q6_03.


* [ERROR] Response must use one of the five defined capability-rating codes.
COMPUTE V_Q6_03_INVALID_CODES = 0.
IF ((NOT MISSING(Q6_03) AND NOT ANY(Q6_03, 1, 2, 3, 4, 5))) V_Q6_03_INVALID_CODES = 1.




* Question Q6_04.


* [ERROR] Response must use one of the five documented rating codes.
COMPUTE V_Q6_04_INVALID_CODES = 0.
IF ((NOT MISSING(Q6_04) AND NOT ANY(Q6_04, '1', '2', '3', '4', '5'))) V_Q6_04_INVALID_CODES = 1.




* Question Q6_05.


* [ERROR] Response must use one of the five documented rating codes.
COMPUTE V_Q6_05_INVALID_CODES = 0.
IF ((NOT MISSING(Q6_05) AND NOT ANY(Q6_05, '1', '2', '3', '4', '5'))) V_Q6_05_INVALID_CODES = 1.




* Question Q7_01.


* [ERROR] Response must use one of the five documented importance-rating codes.
COMPUTE V_Q7_01_INVALID_CODES = 0.
IF ((NOT MISSING(Q7_01) AND NOT ANY(Q7_01, '1', '2', '3', '4', '5'))) V_Q7_01_INVALID_CODES = 1.




* Question Q7_02.


* [ERROR] Response must use one of the five documented importance-rating codes.
COMPUTE V_Q7_02_INVALID_CODES = 0.
IF ((NOT MISSING(Q7_02) AND NOT ANY(Q7_02, '1', '2', '3', '4', '5'))) V_Q7_02_INVALID_CODES = 1.




* Question Q7_03.


* [ERROR] Response must use one of the five documented importance-rating codes.
COMPUTE V_Q7_03_INVALID_CODES = 0.
IF ((NOT MISSING(Q7_03) AND NOT ANY(Q7_03, '1', '2', '3', '4', '5'))) V_Q7_03_INVALID_CODES = 1.




* Question Q7_04.


* [ERROR] Response must use one of the five documented importance-rating codes.
COMPUTE V_Q7_04_INVALID_CODES = 0.
IF ((NOT MISSING(Q7_04) AND NOT ANY(Q7_04, '1', '2', '3', '4', '5'))) V_Q7_04_INVALID_CODES = 1.




* Question Q7_05.


* [ERROR] Response must use one of the five documented importance-rating codes.
COMPUTE V_Q7_05_INVALID_CODES = 0.
IF ((NOT MISSING(Q7_05) AND NOT ANY(Q7_05, '1', '2', '3', '4', '5'))) V_Q7_05_INVALID_CODES = 1.




* Question Q8_01.


* [ERROR] Rank must use one of the documented rank codes.
COMPUTE V_Q8_01_INVALID_CODES = 0.
IF ((NOT MISSING(Q8_01) AND NOT ANY(Q8_01, '1', '2', '3', '4', '5'))) V_Q8_01_INVALID_CODES = 1.



* [ERROR] Rank must fall within the documented range from 1 through 5.
COMPUTE V_Q8_01_RANKING = 0.
IF ((NOT MISSING(Q8_01_1) AND NOT RANGE(Q8_01_1, 1, 5)) OR (NOT MISSING(Q8_01_2) AND NOT RANGE(Q8_01_2, 1, 5)) OR (NOT MISSING(Q8_01_3) AND NOT RANGE(Q8_01_3, 1, 5)) OR (NOT MISSING(Q8_01_4) AND NOT RANGE(Q8_01_4, 1, 5)) OR (NOT MISSING(Q8_01_5) AND NOT RANGE(Q8_01_5, 1, 5))) V_Q8_01_RANKING = 1.



* [ERROR] The five capability ranks must not duplicate one another.
COMPUTE V_Q8_DUPLICATE_RANKINGS = 0.
IF (NOT MISSING(Q8_01) AND Q8_01 = Q8_02) V_Q8_DUPLICATE_RANKINGS = 1.
IF (NOT MISSING(Q8_01) AND Q8_01 = Q8_03) V_Q8_DUPLICATE_RANKINGS = 1.
IF (NOT MISSING(Q8_01) AND Q8_01 = Q8_04) V_Q8_DUPLICATE_RANKINGS = 1.
IF (NOT MISSING(Q8_01) AND Q8_01 = Q8_05) V_Q8_DUPLICATE_RANKINGS = 1.
IF (NOT MISSING(Q8_02) AND Q8_02 = Q8_03) V_Q8_DUPLICATE_RANKINGS = 1.
IF (NOT MISSING(Q8_02) AND Q8_02 = Q8_04) V_Q8_DUPLICATE_RANKINGS = 1.
IF (NOT MISSING(Q8_02) AND Q8_02 = Q8_05) V_Q8_DUPLICATE_RANKINGS = 1.
IF (NOT MISSING(Q8_03) AND Q8_03 = Q8_04) V_Q8_DUPLICATE_RANKINGS = 1.
IF (NOT MISSING(Q8_03) AND Q8_03 = Q8_05) V_Q8_DUPLICATE_RANKINGS = 1.
IF (NOT MISSING(Q8_04) AND Q8_04 = Q8_05) V_Q8_DUPLICATE_RANKINGS = 1.




* Question Q8_02.


* [ERROR] Rank must use one of the documented rank codes.
COMPUTE V_Q8_02_INVALID_CODES = 0.
IF ((NOT MISSING(Q8_02) AND NOT ANY(Q8_02, '1', '2', '3', '4', '5'))) V_Q8_02_INVALID_CODES = 1.



* [ERROR] Rank must fall within the documented range from 1 through 5.
COMPUTE V_Q8_02_RANKING = 0.
IF ((NOT MISSING(Q8_02_1) AND NOT RANGE(Q8_02_1, 1, 5)) OR (NOT MISSING(Q8_02_2) AND NOT RANGE(Q8_02_2, 1, 5)) OR (NOT MISSING(Q8_02_3) AND NOT RANGE(Q8_02_3, 1, 5)) OR (NOT MISSING(Q8_02_4) AND NOT RANGE(Q8_02_4, 1, 5)) OR (NOT MISSING(Q8_02_5) AND NOT RANGE(Q8_02_5, 1, 5))) V_Q8_02_RANKING = 1.




* Question Q8_03.


* [ERROR] Rank must use one of the documented rank codes.
COMPUTE V_Q8_03_INVALID_CODES = 0.
IF ((NOT MISSING(Q8_03) AND NOT ANY(Q8_03, '1', '2', '3', '4', '5'))) V_Q8_03_INVALID_CODES = 1.



* [ERROR] Rank must fall within the documented range from 1 through 5.
COMPUTE V_Q8_03_RANKING = 0.
IF ((NOT MISSING(Q8_03_1) AND NOT RANGE(Q8_03_1, 1, 5)) OR (NOT MISSING(Q8_03_2) AND NOT RANGE(Q8_03_2, 1, 5)) OR (NOT MISSING(Q8_03_3) AND NOT RANGE(Q8_03_3, 1, 5)) OR (NOT MISSING(Q8_03_4) AND NOT RANGE(Q8_03_4, 1, 5)) OR (NOT MISSING(Q8_03_5) AND NOT RANGE(Q8_03_5, 1, 5))) V_Q8_03_RANKING = 1.




* Question Q8_04.


* [ERROR] Rank must use one of the documented rank codes.
COMPUTE V_Q8_04_INVALID_CODES = 0.
IF ((NOT MISSING(Q8_04) AND NOT ANY(Q8_04, '1', '2', '3', '4', '5'))) V_Q8_04_INVALID_CODES = 1.



* [ERROR] Rank must fall within the documented range from 1 through 5.
COMPUTE V_Q8_04_RANKING = 0.
IF ((NOT MISSING(Q8_04_1) AND NOT RANGE(Q8_04_1, 1, 5)) OR (NOT MISSING(Q8_04_2) AND NOT RANGE(Q8_04_2, 1, 5)) OR (NOT MISSING(Q8_04_3) AND NOT RANGE(Q8_04_3, 1, 5)) OR (NOT MISSING(Q8_04_4) AND NOT RANGE(Q8_04_4, 1, 5)) OR (NOT MISSING(Q8_04_5) AND NOT RANGE(Q8_04_5, 1, 5))) V_Q8_04_RANKING = 1.




* Question Q8_05.


* [ERROR] Rank must use one of the documented rank codes.
COMPUTE V_Q8_05_INVALID_CODES = 0.
IF ((NOT MISSING(Q8_05) AND NOT ANY(Q8_05, '1', '2', '3', '4', '5'))) V_Q8_05_INVALID_CODES = 1.



* [ERROR] Rank must fall within the documented range from 1 through 5.
COMPUTE V_Q8_05_RANKING = 0.
IF ((NOT MISSING(Q8_05_1) AND NOT RANGE(Q8_05_1, 1, 5)) OR (NOT MISSING(Q8_05_2) AND NOT RANGE(Q8_05_2, 1, 5)) OR (NOT MISSING(Q8_05_3) AND NOT RANGE(Q8_05_3, 1, 5)) OR (NOT MISSING(Q8_05_4) AND NOT RANGE(Q8_05_4, 1, 5)) OR (NOT MISSING(Q8_05_5) AND NOT RANGE(Q8_05_5, 1, 5))) V_Q8_05_RANKING = 1.





*===============================================================================.
* SECTION Q9 to Q10: Q9 to Q10.
*===============================================================================.

* Question Q9.


* [ERROR] Response must use one of the seven documented answer codes.
COMPUTE V_Q9_INVALID_CODES = 0.
IF ((NOT MISSING(Q9) AND NOT ANY(Q9, '1', '2', '3', '4', '5', '6', '7'))) V_Q9_INVALID_CODES = 1.




* Question Q10.


* [ERROR] Response must use one of the seven documented answer codes.
COMPUTE V_Q10_INVALID_CODES = 0.
IF ((NOT MISSING(Q10) AND NOT ANY(Q10, '1', '2', '3', '4', '5', '6', '7'))) V_Q10_INVALID_CODES = 1.





*===============================================================================.
* SECTION Q11: Q11.
*===============================================================================.

* Question Q11_A.


* [ERROR] Response must use one of the five documented answer codes.
COMPUTE V_Q11_A_INVALID_CODES = 0.
IF ((NOT MISSING(Q11_A) AND NOT ANY(Q11_A, '1', '2', '3', '4', '5'))) V_Q11_A_INVALID_CODES = 1.




* Question Q11_B.


* [ERROR] Response must use one of the five documented answer codes.
COMPUTE V_Q11_B_INVALID_CODES = 0.
IF ((NOT MISSING(Q11_B) AND NOT ANY(Q11_B, '1', '2', '3', '4', '5'))) V_Q11_B_INVALID_CODES = 1.




* Question Q11_C.


* [ERROR] Response must use one of the five documented answer codes.
COMPUTE V_Q11_C_INVALID_CODES = 0.
IF ((NOT MISSING(Q11_C) AND NOT ANY(Q11_C, '1', '2', '3', '4', '5'))) V_Q11_C_INVALID_CODES = 1.




* Question Q11_D.


* [ERROR] Response must use one of the five documented answer codes.
COMPUTE V_Q11_D_INVALID_CODES = 0.
IF ((NOT MISSING(Q11_D) AND NOT ANY(Q11_D, '1', '2', '3', '4', '5'))) V_Q11_D_INVALID_CODES = 1.




* Question Q11_E.


* [ERROR] Response must use one of the six documented answer codes, including the exclusive not-applicable response.
COMPUTE V_Q11_E_INVALID_CODES = 0.
IF ((NOT MISSING(Q11_E) AND NOT ANY(Q11_E, '1', '2', '3', '4', '5', '6'))) V_Q11_E_INVALID_CODES = 1.





*===============================================================================.
* SECTION UNMAPPED: Unmapped validations.
*===============================================================================.

* Question Q12.


* [ERROR] Selected responses must use the six documented option codes.
COMPUTE V_Q12_INVALID_CODES = 0.
IF ((NOT MISSING(Q12) AND NOT ANY(Q12, '1', '2', '3', '4', '5', '6'))) V_Q12_INVALID_CODES = 1.



* [ERROR] Responses must be represented as selections from the documented select-all-that-apply options.
COMPUTE V_Q12_MULTIPLE_RESPONSE = 0.
IF ((NOT MISSING(Q12_1) AND NOT ANY(Q12_1, 0, 1)) OR (NOT MISSING(Q12_2) AND NOT ANY(Q12_2, 0, 1)) OR (NOT MISSING(Q12_3) AND NOT ANY(Q12_3, 0, 1)) OR (NOT MISSING(Q12_4) AND NOT ANY(Q12_4, 0, 1)) OR (NOT MISSING(Q12_5) AND NOT ANY(Q12_5, 0, 1)) OR (NOT MISSING(Q12_6) AND NOT ANY(Q12_6, 0, 1))) V_Q12_MULTIPLE_RESPONSE = 1.





*===============================================================================.
* FINAL VALIDATION SUMMARY.
*===============================================================================.
COMPUTE VALIDATION_OVERALL = MAX(V_Q0_INVALID_CODES, V_Q0_SCREEN_OUT, V_Q1_INVALID_CODES, V_Q1_MULTIPLE_RESPONSE, V_Q2_01_INVALID_CODES, V_Q2_02_INVALID_CODES, V_Q2_03_INVALID_CODES, V_Q2_04_INVALID_CODES, V_Q2_05_INVALID_CODES, V_Q3_01_INVALID_CODES, V_Q3_02_INVALID_CODES, V_Q3_03_INVALID_CODES, V_Q3_04_INVALID_CODES, V_Q3_05_INVALID_CODES, V_Q4_01_INVALID_CODES, V_Q4_02_INVALID_CODES, V_Q4_03_INVALID_CODES, V_Q4_04_INVALID_CODES, V_Q4_05_INVALID_CODES, V_Q5_01_RANKING, V_Q5_02_RANKING, V_Q5_03_RANKING, V_Q5_04_RANKING, V_Q5_05_RANKING, V_Q6_01_INVALID_CODES, V_Q6_02_INVALID_CODES, V_Q6_03_INVALID_CODES, V_Q6_04_INVALID_CODES, V_Q6_05_INVALID_CODES, V_Q7_01_INVALID_CODES, V_Q7_02_INVALID_CODES, V_Q7_03_INVALID_CODES, V_Q7_04_INVALID_CODES, V_Q7_05_INVALID_CODES, V_Q8_01_INVALID_CODES, V_Q8_01_RANKING, V_Q8_DUPLICATE_RANKINGS, V_Q8_02_INVALID_CODES, V_Q8_02_RANKING, V_Q8_03_INVALID_CODES, V_Q8_03_RANKING, V_Q8_04_INVALID_CODES, V_Q8_04_RANKING, V_Q8_05_INVALID_CODES, V_Q8_05_RANKING, V_Q9_INVALID_CODES, V_Q10_INVALID_CODES, V_Q11_A_INVALID_CODES, V_Q11_B_INVALID_CODES, V_Q11_C_INVALID_CODES, V_Q11_D_INVALID_CODES, V_Q11_E_INVALID_CODES, V_Q12_INVALID_CODES, V_Q12_MULTIPLE_RESPONSE).
FREQUENCIES VARIABLES=V_Q0_INVALID_CODES V_Q0_SCREEN_OUT V_Q1_INVALID_CODES V_Q1_MULTIPLE_RESPONSE V_Q2_01_INVALID_CODES V_Q2_02_INVALID_CODES V_Q2_03_INVALID_CODES V_Q2_04_INVALID_CODES V_Q2_05_INVALID_CODES V_Q3_01_INVALID_CODES V_Q3_02_INVALID_CODES V_Q3_03_INVALID_CODES V_Q3_04_INVALID_CODES V_Q3_05_INVALID_CODES V_Q4_01_INVALID_CODES V_Q4_02_INVALID_CODES V_Q4_03_INVALID_CODES V_Q4_04_INVALID_CODES V_Q4_05_INVALID_CODES V_Q5_01_RANKING V_Q5_02_RANKING V_Q5_03_RANKING V_Q5_04_RANKING V_Q5_05_RANKING V_Q6_01_INVALID_CODES V_Q6_02_INVALID_CODES V_Q6_03_INVALID_CODES V_Q6_04_INVALID_CODES V_Q6_05_INVALID_CODES V_Q7_01_INVALID_CODES V_Q7_02_INVALID_CODES V_Q7_03_INVALID_CODES V_Q7_04_INVALID_CODES V_Q7_05_INVALID_CODES V_Q8_01_INVALID_CODES V_Q8_01_RANKING V_Q8_DUPLICATE_RANKINGS V_Q8_02_INVALID_CODES V_Q8_02_RANKING V_Q8_03_INVALID_CODES V_Q8_03_RANKING V_Q8_04_INVALID_CODES V_Q8_04_RANKING V_Q8_05_INVALID_CODES V_Q8_05_RANKING V_Q9_INVALID_CODES V_Q10_INVALID_CODES V_Q11_A_INVALID_CODES V_Q11_B_INVALID_CODES V_Q11_C_INVALID_CODES V_Q11_D_INVALID_CODES V_Q11_E_INVALID_CODES V_Q12_INVALID_CODES V_Q12_MULTIPLE_RESPONSE VALIDATION_OVERALL.

* MODEL WARNINGS.
* Q11_E contains conditional routing based on whether the respondent uses the BD neXus pump, but no source variable is provided; the routing rule was omitted.
* Q12 includes an Other, please specify option, but no separate open-text variable is provided; an other-specify consistency rule was omitted.

* MODEL NOTES.
* Questions are explicitly marked as not required, so no mandatory or missing-response rules were added.

EXECUTE.
