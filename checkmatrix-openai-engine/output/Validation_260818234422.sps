* Encoding: UTF-8.
* Generated deterministically by Survey Programming AI.
* Source: (V3_R99342) 2026JULY2_NF-NET Opportunity Market Research_HCP Quant Flash Survey_v5.docx.
TITLE '30-40'.



*===============================================================================.
* SECTION MAIN: Questionnaire.
*===============================================================================.

* Question Q1.


* [ERROR] Response is required for the primary medical specialty question.
COMPUTE V_Q1_R1 = 0.
IF (MISSING(Q1)) V_Q1_R1 = 1.



* [ERROR] Disqualify respondents selecting a listed ineligible medical specialty.
COMPUTE V_Q1_R2 = 0.
IF (ANY(Q1, 'Gastroenterology', 'Primary Care Provider', 'Nurse Practitioner', 'Physician Assistant', 'Other (please specify):')) V_Q1_R2 = 1.




* Question Q2.


* [ERROR] Response is required for the percentage estimate.
COMPUTE V_Q2_R1 = 0.
IF (MISSING(Q2)) V_Q2_R1 = 1.




* Question Q3.


* [ERROR] Response is required for current practice state.
COMPUTE V_Q3_R1 = 0.
IF (MISSING(Q3)) V_Q3_R1 = 1.



* [ERROR] Disqualify respondents practicing in the listed states.
COMPUTE V_Q3_R2 = 0.
IF (ANY(Q3, 'Vermont', 'West Virginia', 'Maine', 'Massachusetts', 'Minnesota')) V_Q3_R2 = 1.




* Question Q4.


* [ERROR] Response is required for the percentage estimate.
COMPUTE V_Q4_R1 = 0.
IF (MISSING(Q4)) V_Q4_R1 = 1.




* Question Q5.


* [ERROR] All professional-time percentage responses are required.
COMPUTE V_Q5_R1 = 0.
IF (MISSING(Q5)) V_Q5_R1 = 1.



* [ERROR] Professional-time percentages must sum to 100.
!Sum_to_var svar=Q5 value=100.
COMPUTE V_Q5_R3 = 0.
IF (SUM(Q5) <> 100.0) V_Q5_R3 = 1.




* Question Q6.


* [ERROR] Response is required for the percentage estimate.
COMPUTE V_Q6_R1 = 0.
IF (MISSING(Q6)) V_Q6_R1 = 1.




* Question S6.
* No validation generated: Derived recruitment-classification field with no respondent-entered response or independently specified validation rule.



* Question Q7.


* [ERROR] Response is required for the prescribing-likelihood scale.
COMPUTE V_Q7_R1 = 0.
IF (MISSING(Q7)) V_Q7_R1 = 1.



* [ERROR] Response must be one of the seven specified likelihood-scale values.
COMPUTE V_Q7_R2 = 0.
IF ((NOT MISSING(Q7) AND NOT ANY(Q7, 1, 2, 3, 4, 5, 6, 7))) V_Q7_R2 = 1.




* Question Q8.


* [ERROR] Response is required for the number of actively managed NET patients.
COMPUTE V_Q8_R1 = 0.
IF (MISSING(Q8)) V_Q8_R1 = 1.



* [ERROR] Disqualify respondents reporting fewer than 20 actively managed NET patients.
COMPUTE V_Q8_R3 = 0.
IF (Q8 < 20) V_Q8_R3 = 1.




* Question Q9.


* [ERROR] Responses are required for both NET patient-category counts.
COMPUTE V_Q9_R1 = 0.
IF (MISSING(Q9)) V_Q9_R1 = 1.




* Question Q10.


* [ERROR] Response is required for the percentage estimate.
COMPUTE V_Q10_R1 = 0.
IF (MISSING(Q10)) V_Q10_R1 = 1.




* Question Q11.


* [ERROR] Response is required for the comfort-level question.
COMPUTE V_Q11_R1 = 0.
IF (MISSING(Q11)) V_Q11_R1 = 1.



* [ERROR] Response must be one of the five specified comfort-level options.
COMPUTE V_Q11_R2 = 0.
IF ((NOT MISSING(Q11) AND NOT ANY(Q11, 'Not comfortable at all', 'Slightly comfortable', 'Moderately comfortable', 'Very comfortable', 'Extremely comfortable'))) V_Q11_R2 = 1.



* [ERROR] Disqualify respondents reporting no more than moderate comfort.
COMPUTE V_Q11_R3 = 0.
IF (ANY(Q11, 'Not comfortable at all', 'Slightly comfortable', 'Moderately comfortable')) V_Q11_R3 = 1.




* Question Q12.


* [ERROR] Response is required for the percentage estimate.
COMPUTE V_Q12_R1 = 0.
IF (MISSING(Q12)) V_Q12_R1 = 1.




* Question Q13.


* [ERROR] At least one response is required for the employment-status question.
COMPUTE V_Q13_R1 = 0.
IF (MISSING(Q13)) V_Q13_R1 = 1.



* [ERROR] Validate the multi-select employment-status response set.
COMPUTE V_Q13_R2 = 0.
IF ((NOT MISSING(Q13) AND NOT ANY(Q13, 0, 1))) V_Q13_R2 = 1.




* Question Q14.


* [ERROR] Response is required for the contract-role question.
COMPUTE V_Q14_R1 = 0.
IF (MISSING(Q14)) V_Q14_R1 = 1.



* [ERROR] Response must be Yes or No.
COMPUTE V_Q14_R2 = 0.
IF ((NOT MISSING(Q14) AND NOT ANY(Q14, 'Yes', 'No'))) V_Q14_R2 = 1.



* [ERROR] Disqualify respondents answering Yes.
COMPUTE V_Q14_R3 = 0.
IF (Q14 = 'Yes') V_Q14_R3 = 1.




* Question Q15.


* [ERROR] Response is required for re-contact permission.
COMPUTE V_Q15_R1 = 0.
IF (MISSING(Q15)) V_Q15_R1 = 1.



* [ERROR] Response must be Yes or No.
COMPUTE V_Q15_R2 = 0.
IF ((NOT MISSING(Q15) AND NOT ANY(Q15, 'Yes', 'No'))) V_Q15_R2 = 1.




* Question Q16.


* [ERROR] A ranking response is required.
COMPUTE V_Q16_R1 = 0.
IF (MISSING(Q16)) V_Q16_R1 = 1.



* [ERROR] Rank values must run from 1 through 5 for the five listed characteristics.
COMPUTE V_Q16_R2 = 0.
IF ((NOT MISSING(Q16) AND NOT RANGE(Q16, 1, 5))) V_Q16_R2 = 1.





*===============================================================================.
* FINAL VALIDATION SUMMARY.
*===============================================================================.
COMPUTE VALIDATION_OVERALL = MAX(V_Q1_R1, V_Q1_R2, V_Q2_R1, V_Q3_R1, V_Q3_R2, V_Q4_R1, V_Q5_R1, V_Q5_R3, V_Q6_R1, V_Q7_R1, V_Q7_R2, V_Q8_R1, V_Q8_R3, V_Q9_R1, V_Q10_R1, V_Q11_R1, V_Q11_R2, V_Q11_R3, V_Q12_R1, V_Q13_R1, V_Q13_R2, V_Q14_R1, V_Q14_R2, V_Q14_R3, V_Q15_R1, V_Q15_R2, V_Q16_R1, V_Q16_R2).
FREQUENCIES VARIABLES=V_Q1_R1 V_Q1_R2 V_Q2_R1 V_Q3_R1 V_Q3_R2 V_Q4_R1 V_Q5_R1 V_Q5_R3 V_Q6_R1 V_Q7_R1 V_Q7_R2 V_Q8_R1 V_Q8_R3 V_Q9_R1 V_Q10_R1 V_Q11_R1 V_Q11_R2 V_Q11_R3 V_Q12_R1 V_Q13_R1 V_Q13_R2 V_Q14_R1 V_Q14_R2 V_Q14_R3 V_Q15_R1 V_Q15_R2 V_Q16_R1 V_Q16_R2 VALIDATION_OVERALL.

* MODEL WARNINGS.
* The Q5 direct-patient-care disqualification was not emitted because no distinct variable for that component was supplied.
* The Q9 disqualification threshold was not emitted because the supplied base variable does not identify which of the two category counts is subject to the threshold.
* Q13's None-of-the-above exclusivity was not emitted because no distinct option variables or option codes were supplied.
* Omitted incomplete model rule: Rule Q2-R2 requires variables and a range or allowed_values.
* Omitted incomplete model rule: Rule Q4-R2 requires variables and a range or allowed_values.
* Omitted incomplete model rule: Rule Q5-R2 requires variables and a range or allowed_values.
* Omitted incomplete model rule: Rule Q6-R2 requires variables and a range or allowed_values.
* Omitted incomplete model rule: Rule Q8-R2 requires variables and a range or allowed_values.
* Omitted incomplete model rule: Rule Q9-R2 requires variables and a range or allowed_values.
* Omitted incomplete model rule: Rule Q10-R2 requires variables and a range or allowed_values.
* Omitted incomplete model rule: Rule Q12-R2 requires variables and a range or allowed_values.


EXECUTE.
