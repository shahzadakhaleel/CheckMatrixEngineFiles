* Encoding: UTF-8.
* Generated deterministically by Survey Programming AI.
* Source: (V3_R93941) 12847_BD_Nexus_Post_Market_Surveillance_Qre_260429_James_02.docx.
TITLE 'To'.



*===============================================================================.
* SECTION MAIN: Questionnaire.
*===============================================================================.

* Question Q0.
* No validation generated: The question is optional and its response options are present only as un-coded text, so no evidence-supported code or routing check can be defined.



* Question Q1.


* [ERROR] Validate the select-all-that-apply response structure for clinical areas, including the other option.
COMPUTE V_Q1_R1 = 0.
IF ((NOT MISSING(Q1) AND NOT ANY(Q1, 0, 1))) V_Q1_R1 = 1.




* Question Q2.


* [ERROR] Allow only the stated frequency-scale responses from 1 through 7 for each medication or product item.
COMPUTE V_Q2_R1 = 0.
IF ((NOT MISSING(Q2) AND NOT ANY(Q2, 1, 2, 3, 4, 5, 6, 7))) V_Q2_R1 = 1.




* Question Q3.


* [ERROR] Allow only the stated five-point outcome-experience scale from 1 through 5.
COMPUTE V_Q3_R1 = 0.
IF ((NOT MISSING(Q3) AND NOT ANY(Q3, 1, 2, 3, 4, 5))) V_Q3_R1 = 1.




* Question Q4.


* [ERROR] Allow only the stated five-point outcome-value scale from 1 through 5.
COMPUTE V_Q4_R1 = 0.
IF ((NOT MISSING(Q4) AND NOT ANY(Q4, 1, 2, 3, 4, 5))) V_Q4_R1 = 1.




* Question Q5.


* [ERROR] Validate that the five listed outcomes use ranking values no higher than 5.
COMPUTE V_Q5_R1 = 0.
IF ((NOT MISSING(Q5) AND NOT RANGE(Q5, 1, 5))) V_Q5_R1 = 1.




* Question Q6.


* [ERROR] Allow only the stated five-point medication-error-reduction scale from 1 through 5.
COMPUTE V_Q6_R1 = 0.
IF ((NOT MISSING(Q6) AND NOT ANY(Q6, 1, 2, 3, 4, 5))) V_Q6_R1 = 1.




* Question Q7.


* [ERROR] Allow only the stated five-point capability-value scale from 1 through 5.
COMPUTE V_Q7_R1 = 0.
IF ((NOT MISSING(Q7) AND NOT ANY(Q7, 1, 2, 3, 4, 5))) V_Q7_R1 = 1.




* Question Q8.


* [ERROR] Validate that the five listed capabilities use ranking values no higher than 5.
COMPUTE V_Q8_R1 = 0.
IF ((NOT MISSING(Q8) AND NOT RANGE(Q8, 1, 5))) V_Q8_R1 = 1.




* Question Q9.
* No validation generated: The question is optional and its categorical response options are not supplied with explicit response codes or variables.



* Question Q10.
* No validation generated: The question is optional and its categorical response options are not supplied with explicit response codes or variables; the following Q11 content is instructional text rather than a canonical Q10 validation target.



* Question Q12.


* [ERROR] Validate the select-all-that-apply response structure for alternative activities, including the other option.
COMPUTE V_Q12_R1 = 0.
IF ((NOT MISSING(Q12) AND NOT ANY(Q12, 0, 1))) V_Q12_R1 = 1.





*===============================================================================.
* FINAL VALIDATION SUMMARY.
*===============================================================================.
COMPUTE VALIDATION_OVERALL = MAX(V_Q1_R1, V_Q2_R1, V_Q3_R1, V_Q4_R1, V_Q5_R1, V_Q6_R1, V_Q7_R1, V_Q8_R1, V_Q12_R1).
FREQUENCIES VARIABLES=V_Q1_R1 V_Q2_R1 V_Q3_R1 V_Q4_R1 V_Q5_R1 V_Q6_R1 V_Q7_R1 V_Q8_R1 V_Q12_R1 VALIDATION_OVERALL.



EXECUTE.
