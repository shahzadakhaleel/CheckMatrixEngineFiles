* Encoding: UTF-8.

* ANALYST REVIEW DRAFT - review generation statistics before running this script.

COUNT QTEST_CASE = uuid user_id scrStatus S1r5oe S2r9oe S3r6oe S8r7oe Q3r4oe Q15 Q18 Q25 ('test','TEST','Test','TEst','TESt','tEST','?','.').
exe.
FREQ QTEST_CASE.
exe.


*------------------------------------ DEFINE MACROS ------------------------------------

*================================================================================

*                                MULTI_A                                 *

*================================================================================

Define !MULTI_A (svar !TOKENS (1) /evar !TOKENS (1) /qnt !TOKENS (1) /ctr !TOKENS (1))
tit !qnt.
temporary.
count var_cnt = !svar to !evar(1).

tit !qnt - Nothing Selected.
sel if var_cnt = 0.
list respid, !svar to !evar.

tit !qnt - Invalid Punches.
temporary.
count var1_cnt = !svar to !evar(0 1).
sel if var1_cnt <>  !ctr.
list respid, !svar to !evar.
temporary.
count var1_cnt = !svar to !evar(1).
sel if var1_cnt =  !ctr.
tit !qnt - Error Flag-ALL Respondents have punch 1 ONLY.
list respid, !svar to !evar.
!EndDefine.

/* !MULTI_A svar=var evar=var qnt=ABC ctr=5.

*================================================================================

*                                MULTI_B                                 *

*================================================================================

Define !MULTI_B (svar !TOKENS (1) /evar !TOKENS (1) /qnt !TOKENS (1) /ctr !TOKENS (1))
tit !qnt.
temporary.
count var_cnt = !svar to !evar(1).

tit !qnt - Nothing Selected.
sel if var_cnt = 0.
list respid, !svar to !evar.

tit !qnt - Invalid Punches.
count var1_cnt = !svar to !evar(0 1).
temporary.
sel if var1_cnt <>  !ctr.
list respid, !svar to !evar.

tit !qnt - None/DK selected with valid codes.
count var_cnt = !svar to !evar(1).
temporary.
sel if var_cnt > 1 and !evar=1.
list respid, !svar to !evar.
temporary.
count var1_cnt = !svar to !evar(1).
sel if var1_cnt =  !ctr.
tit !qnt - Error Flag-ALL Respondents have punch 1 ONLY.
list respid, !svar to !evar.
!EndDefine.

/* !MULTI_B svar=var evar=var qnt=ABC ctr=5.


*================================================================================

*                                MULTI_A_FLT                                 *

*================================================================================

Define !MULTI_A_FLT (svar !TOKENS (1) /evar !TOKENS (1) /qnt !TOKENS (1) /ctr !TOKENS (1) /filter !TOKENS (1))
tit !qnt.
FILTER by !filter.

count var_cnt = !svar to !evar(1).

tit !qnt - Nothing Selected.
temporary.
sel if var_cnt = 0.
list respid, !svar to !evar.

tit !qnt - Invalid Punches.
temporary.
count var1_cnt = !svar to !evar(0 1).
sel if var1_cnt <>  !ctr.
list respid, !svar to !evar.
temporary.
count var1_cnt = !svar to !evar(1).
sel if var1_cnt =  !ctr.
tit !qnt - Error Flag-ALL Respondents have punch 1 ONLY.
list respid, !svar to !evar.
filter off.

*--- Added Missing Fill check ---*.
if (sum(!filter,0)<>1 and nvalid(!svar to !evar) > 0) flag=1.
exe.
tit !qnt - Missing Filter but Answers Present.
temporary.
sel if flag>0.
list respid flag !filter !svar to !evar.
del var flag !filter.

!EndDefine.

/* !MULTI_A_FLT svar=svar evar=evar qnt=abc ctr= 2 filter=flt_name.

*================================================================================

*                                MULTI_B_FLT                                 *

*================================================================================

Define !MULTI_B_FLT (svar !TOKENS (1) /evar !TOKENS (1) /qnt !TOKENS (1) /ctr !TOKENS (1) /filter !TOKENS (1))
tit !qnt.
FILTER by !filter.
count var_cnt = !svar to !evar (1).
 
tit !qnt - Nothing Selected.
temporary.
sel if var_cnt = 0.
list respid, !svar to !evar.
 
tit !qnt - Invalid Punches.
count var1_cnt = !svar to !evar (0 1).
temporary.
sel if var1_cnt <> !ctr.
list respid, !svar to !evar.
 
tit !qnt - None/DK selected with valid codes.
count var_cnt = !svar to !evar (1).
temporary.
sel if var_cnt > 1 and !evar=1.
list respid, !svar to !evar.
 
temporary.
count var1_cnt = !svar to !evar (1).
sel if var1_cnt = !ctr.
tit !qnt - Error Flag-ALL Respondents have punch 1 ONLY.
list respid, !svar to !evar.
filter off.
 
*--- Added Missing Fill check ---*.
if (sum(!filter,0)<>1 and nvalid(!svar to !evar) > 0) flag=1.
exe.
tit !qnt - Missing Filter but Answers Present.
temporary.
sel if flag>0.
list respid flag !filter !svar to !evar.
del var flag !filter.

!EndDefine.

/* !MULTI_B_FLT svar=svar evar=evar qnt=abc ctr= 2 filter=flt_name.


*================================================================================

*                                Rank_ALL_CHK                                 *

*================================================================================

Define !Rank_ALL_CHK (svar !TOKENS (1) /evar !TOKENS (1) /qnt !TOKENS (1) /rank !TOKENS (1) /opr !TOKENS (1)) 
tit !qnt.

COMPUTE scoreval =nvalid(!svar to !evar).                                                                     
exe.                                                                                                          
                                                                                                              
tit !qnt - RANK NOT MATCHING TO !rank.                                                                        
temporary.                                                                                                    
sel if scoreval !opr !rank.                                                                                   
list respid, !svar to !evar.                                                                                  
                                                                                                              
COMPUTE minrank =min(!svar to !evar).                                                                         
exe.                                                                                                          
                                                                                                              
COMPUTE maxrank =max(!svar to !evar).                                                                         
exe.                                                                                                          
                                                                                                              
tit !qnt - INVALID RANKS .                                                                                    
temporary.                                                                                                    
sel if (minrank !opr 1 OR maxrank !opr scoreval).                                                             
list respid, !svar to !evar.                                                                                  
                                                                                                              
                                                                                                              
EXECUTE.                                                                                                      
*Compute scoreval to determine the number of valid values in each row for comparison.                         
COMPUTE k = 0.                                                                                                
EXECUTE.                                                                                                      
*create the output value of k all values =0.                                                                  
VECTOR X = !svar to !evar.                                                                                    
LOOP #i = 1 to scoreval.                                                                                      
+ LOOP #j = (#i+1) to scoreval.                                                                               
+ IF X(#i) = X(#j) k=1.                                                                                       
END LOOP.                                                                                                     
END LOOP.                                                                                                     
EXECUTE .                                                                                                     
                                                                                                              
tit !qnt - RANK DUPLICATE.                                                                                    
temporary.                                                                                                    
sel if k=1.                                                                                                   
list respid, !svar to !evar.                                                                                  
del var scoreval k minrank maxrank.                                                                           
                                                                                                              
!EndDefine.    

/* !Rank_ALL_CHK svar=svar evar=evar qnt=abc rank=5  opr=<>.


*================================================================================

*                                Rank_ALL_CHK_FLT                                 *

*================================================================================

Define !Rank_ALL_CHK_FLT (svar !TOKENS (1) /evar !TOKENS (1) /qnt !TOKENS (1) /rank !TOKENS (1) /opr !TOKENS (1) /filter !TOKENS (1)) 
tit !qnt.
        
FILTER by !filter.                                                                                                    
                                                                                                              
COMPUTE scoreval =nvalid(!svar to !evar).                                                                     
exe.                                                                                                          
                                                                                                              
tit !qnt - RANK NOT MATCHING TO !rank.                                                                        
temporary.                                                                                                    
sel if scoreval !opr !rank.                                                                                   
list respid, !svar to !evar.                                                                                  
                                                                                                              
COMPUTE minrank =min(!svar to !evar).                                                                         
exe.                                                                                                          
                                                                                                              
COMPUTE maxrank =max(!svar to !evar).                                                                         
exe.                                                                                                          
                                                                                                              
tit !qnt - INVALID RANKS .                                                                                    
temporary.                                                                                                    
sel if (minrank !opr 1 OR maxrank !opr scoreval).                                                             
list respid, !svar to !evar.                                                                                  
                                                                                                              
                                                                                                              
EXECUTE.                                                                                                      
*Compute scoreval to determine the number of valid values in each row for comparison.                         
COMPUTE k = 0.                                                                                                
EXECUTE.                                                                                                      
*create the output value of k all values =0.                                                                  
VECTOR X = !svar to !evar.                                                                                    
LOOP #i = 1 to scoreval.                                                                                      
+ LOOP #j = (#i+1) to scoreval.                                                                               
+ IF X(#i) = X(#j) k=1.                                                                                       
END LOOP.                                                                                                     
END LOOP.                                                                                                     
EXECUTE .                                                                                                     
                                                                                                              
tit !qnt - RANK DUPLICATE.                                                                                    
temporary.                                                                                                    
sel if k=1.                                                                                                   
list respid, !svar to !evar.                                                                                  
del var scoreval k minrank maxrank.      
filter off.    

*--- Added Missing Fill check ---*.
if (sum(!filter,0)<>1 and nvalid(!svar to !evar) > 0) flag=1.
exe.
tit !qnt - Missing Filter but Answers Present.
temporary.
sel if flag>0.
list respid flag !filter !svar to !evar.
del var flag !filter.                                                                 
                                                                                                              
  !EndDefine.    

/* !Rank_ALL_CHK_FLT svar=svar evar=evar qnt=abc rank=5 opr=<> filter=flt_name.


*================================================================================

*                                String                                 *

*================================================================================

define !String (ask=!TOKENS (1) /opr=!TOKENS (1) /value=!TOKENS (1) / myvars=!CMDEND)
!do !i !in (!myvars).
tit !i.
if !ask !opr !value temp=1.
if temp=1 and (!i="") !concat(!i,"_flag")=1.
if miss(temp) and (!i<>"") !concat(!i,"_flag")=2.
temporary.
select if !concat(!i,"_flag")>0.
list respid !ask !concat(!i,"_flag")  !i.
delete variables !concat(!i,"_flag") temp .
!doend
!enddefine.   

/* !String ask=FLTvar opr=> value=0 myvars=var.


*================================================================================

*                                Numeric                                 *

*================================================================================

define !Numeric (ask=!TOKENS (1) /opr=!TOKENS (1) /value=!TOKENS (1) / min=!TOKENS (1)  / max=!TOKENS (1)  / myvars=!CMDEND)
!do !i !in (!myvars).
tit !i.
if !ask !opr !value temp=1.
if temp=1 and (miss(!i) or ~range(!i,!min,!max)) !concat(!i,"_flag")=1.
if miss(temp) and ~miss(!i) !concat(!i,"_flag")=2.
temporary.
select if !concat(!i,"_flag")>0.
list respid !ask !concat(!i,"_flag")  !i.
delete variables !concat(!i,"_flag") temp .
!doend
!enddefine. 

/* !Numeric ask=FLTvar opr== value=0 min=0 max=100 myvars=var.


*================================================================================

*                                Sum_to_var                                 *

*================================================================================

Define !Sum_to_var (svar !TOKENS (1) /evar !TOKENS (1) /qnt !TOKENS (1) /ctr !TOKENS (1) /opr !TOKENS (1))                        
tit !qnt.
                                                                                                                   
compute SumX=sum(!svar to !evar).                                                                                                 
exe.                                                                                                                              
                                                                                                                                  
tit !qnt - SUM NOT MATCHING TO !ctr.                                                                                              
temporary.                                                                                                                        
sel if SumX !opr !ctr.                                                                                                            
list respid, !svar to !evar.                                                                                                      
del var SumX.                                                                                                                     
!EndDefine.     

/* !Sum_to_var svar=svar evar=evar qnt=abc ctr=100 opr=<>.       


********************** Input definitions **********************.

* svar   = Starting variable.  
* evar   = Ending variable.  
* qnt    = Question ID (for reporting / title).  
* ctr    = Control value ? can be a variable name or a fixed number (e.g., 100),  
            used based on the logic to be checked.  
* opr    = Operator to apply in condition (=, ~=, <>, <, >, >=, <=).  
* rank   = Ranking value ? can be a variable name or a fixed number,  
            used in ranking/ordering checks.  
* ask    = Variable used for “ask logic” (whether the question should be asked).  
* min    = Minimum valid range value.  
* max    = Maximum valid range value.  
* myvars = Variables to be validated.  
* values = Comparison value ? can be a variable name or a fixed number.  
* filter = Filter variable name (to apply conditions only on a subset).  


*------------------------------------ END MACROS ------------------------------------


* VALIDATION ERROR: Respondent ID is absent from SAV; set respondent_id in project settings.

***************************************USER_ID.

tit user_id.
temporary.
sel if user_id=''.
list respid, user_id.

***************************************SCRSTATUS.

tit scrStatus.
temporary.
sel if scrStatus='' or scrStatus<>'COMPLETE'.
list respid, scrStatus.

***************************************HIDCHANGE.

tit hidChange.
temporary.
sel if miss(hidChange) or ~range(hidChange,0,10).
list respid, hidChange.

***************************************B01.

tit QCOUNTRY.
temporary.
sel if miss(qCountry) or ~any(qCountry,98,1033).
list respid, qCountry.

***************************************B02.

tit S1.
temporary.
sel if miss(S1) or ~range(S1,1,5).
list respid, S1.
tit S1r5oe.
temporary.
sel if S1=5 and S1r5oe="".
list respid, S1, S1r5oe.

***************************************B03.

tit S2.
temporary.
sel if miss(S2) or ~range(S2,1,9).
list respid, S2.
tit S2r9oe.
temporary.
sel if S2=9 and S2r9oe="".
list respid, S2, S2r9oe.

***************************************B04.

tit S3.
temporary.
sel if miss(S3) or ~range(S3,1,6).
list respid, S3.
tit S3r6oe.
temporary.
sel if S3=6 and S3r6oe="".
list respid, S3, S3r6oe.

***************************************B05.

tit S4-S7,S9.
temporary.
sel if miss(S4) or ~range(S4,0,99) or miss(S5) or ~range(S5,0,100) or miss(S6) or ~range(S6,1,52) or miss(S7) or ~range(S7,1,6) or miss(S9) or ~range(S9,0,300).
list respid, S4, S5, S6, S7, S9.

***************************************B06.

tit S8.
temporary.
sel if nvalid(S8r1 to S8r8)>0 and (S8r1<>0 and S8r1<>1 or S8r2<>0 and S8r2<>1 or S8r3<>0 and S8r3<>1 or S8r4<>0 and S8r4<>1 or S8r5<>0 and S8r5<>1 or S8r6<>0 and S8r6<>1 or S8r7<>0 and S8r7<>1 or S8r8<>0 and S8r8<>1 or S8r1<>1).
list respid, S8r1 to S8r8.
tit S8r7oe.
temporary.
sel if S8r7=1 and S8r7oe="".
list respid, S8r7, S8r7oe.

***************************************B07.

tit S10.
temporary.
sel if miss(S10r1) or S10r1<0 or S10r1>S9 or miss(S10r2) or S10r2<0 or S10r2>S9 or miss(S10r3) or S10r3<0 or S10r3>S9.
list respid, S9, S10r1, S10r2, S10r3.
compute S10_total=sum(S10r1,S10r2,S10r3).
exe.
tit S10 total.
temporary.
sel if S10_total>S9.
list respid, S9, S10r1, S10r2, S10r3, S10_total.
del var S10_total.
exe.

***************************************B08.

tit Q1.
temporary.
sel if miss(Q1r1c1) or ~range(Q1r1c1,0,300) or miss(Q1r2c1) or ~range(Q1r2c1,0,300) or miss(Q1r3c1) or ~range(Q1r3c1,0,300) or miss(Q1r4c1) or ~range(Q1r4c1,0,300) or miss(Q1r5c1) or ~range(Q1r5c1,0,300) or miss(Q1r6c1) or ~range(Q1r6c1,0,300) or miss(Q1r7c1) or ~range(Q1r7c1,0,300) or miss(Q1r8c1) or ~range(Q1r8c1,0,300).
list respid, Q1r1c1 to Q1r8c1.

***************************************B09.

tit Q1a-Q1d.
temporary.
sel if miss(Q1ar21c1) or ~range(Q1ar21c1,0,300) or miss(Q1ar22c1) or ~range(Q1ar22c1,0,300) or miss(Q1ar23c1) or ~range(Q1ar23c1,0,300) or miss(Q1br31c1) or ~range(Q1br31c1,0,300) or miss(Q1br32c1) or ~range(Q1br32c1,0,300) or miss(Q1br33c1) or ~range(Q1br33c1,0,300) or miss(Q1c) or ~range(Q1c,0,300) or miss(Q1d) or ~range(Q1d,0,300).
list respid, Q1r2c1, Q1r3c1, Q1ar21c1, Q1ar22c1, Q1ar23c1, Q1br31c1, Q1br32c1, Q1br33c1, Q1c, Q1d.
compute Q1a_bvmd_total=sum(Q1ar21c1,Q1ar22c1,Q1ar23c1).
compute Q1b_arb_total=sum(Q1br31c1,Q1br32c1,Q1br33c1).
exe.
tit Q1a total.
temporary.
sel if Q1r2c1>0 and Q1a_bvmd_total<>Q1r2c1.
list respid, Q1r2c1, Q1ar21c1, Q1ar22c1, Q1ar23c1.
tit Q1b total.
temporary.
sel if Q1r3c1>0 and Q1b_arb_total<>Q1r3c1.
list respid, Q1r3c1, Q1br31c1, Q1br32c1, Q1br33c1.
del var Q1a_bvmd_total Q1b_arb_total.
exe.

***************************************B10.

tit Q2.
temporary.
sel if miss(Q2) or ~range(Q2,1,7).
list respid, Q2.

***************************************B11.

tit Q3.
temporary.
sel if miss(Q3r1c1) or Q3r1c1<0 or miss(Q3r2c1) or Q3r2c1<0 or miss(Q3r3c1) or Q3r3c1<0 or miss(Q3r4c1) or Q3r4c1<0.
list respid, Q3r1c1, Q3r2c1, Q3r3c1, Q3r4c1.
compute S10_best1=sum(S10r1,S10r2).
compute Q3_total=sum(Q3r1c1,Q3r2c1,Q3r3c1,Q3r4c1).
exe.
tit Q3 total.
temporary.
sel if Q3_total<>S10_best1.
list respid, S10r1, S10r2, Q3r1c1, Q3r2c1, Q3r3c1, Q3r4c1.
tit Q3r4oe.
temporary.
sel if Q3r4c1>0 and Q3r4oe="".
list respid, Q3r4c1, Q3r4oe.
del var Q3_total S10_best1.
exe.

***************************************B12.

tit Q4.
compute S10_best1=sum(S10r1,S10r2).
exe.
temporary.
sel if miss(Q4r1) or Q4r1<0 or Q4r1>S10_best1 or miss(Q4r2) or Q4r2<0 or Q4r2>S10_best1 or miss(Q4r3) or Q4r3<0 or Q4r3>S10_best1 or miss(Q4r4) or Q4r4<0 or Q4r4>S10_best1 or miss(Q4r5) or Q4r5<0 or Q4r5>S10_best1 or miss(Q4r6) or Q4r6<0 or Q4r6>S10_best1.
list respid, S10_best1, Q4r1 to Q4r6.
del var S10_best1.
exe.

***************************************B13.

tit Q5.
compute S10_best1=sum(S10r1,S10r2).
compute Q5_total=sum(Q5r1,Q5r2,Q5r3,Q5r4,Q5r5,Q5r6).
exe.
temporary.
sel if miss(Q5r1) or Q5r1<0 or Q5r1>S10_best1 or miss(Q5r2) or Q5r2<0 or Q5r2>S10_best1 or miss(Q5r3) or Q5r3<0 or Q5r3>S10_best1 or miss(Q5r4) or Q5r4<0 or Q5r4>S10_best1 or miss(Q5r5) or Q5r5<0 or Q5r5>S10_best1 or miss(Q5r6) or Q5r6<0 or Q5r6>S10_best1 or Q5_total<>S10_best1.
list respid, S10_best1, Q5r1 to Q5r6, Q5_total.
del var Q5_total S10_best1.
exe.

***************************************B14.

tit Q6.
compute Q5_referred=sum(Q5r1,Q5r2).
compute Q6_total=sum(Q6r1,Q6r2).
exe.
temporary.
sel if miss(Q6r1) or Q6r1<0 or Q6r1>Q5_referred or miss(Q6r2) or Q6r2<0 or Q6r2>Q5_referred or Q6_total<>Q5_referred.
list respid, Q5r1, Q5r2, Q6r1, Q6r2, Q6_total.
del var Q5_referred Q6_total.
exe.

***************************************B15.

tit Q7.
compute Q7_total=sum(Q7r1c1,Q7r2c1,Q7r3c1,Q7r4c1,Q7r5c1,Q7r6c1).
exe.
temporary.
sel if miss(Q7r1c1) or Q7r1c1<0 or Q7r1c1>S10r1 or miss(Q7r2c1) or Q7r2c1<0 or Q7r2c1>S10r1 or miss(Q7r3c1) or Q7r3c1<0 or Q7r3c1>S10r1 or miss(Q7r4c1) or Q7r4c1<0 or Q7r4c1>S10r1 or miss(Q7r5c1) or Q7r5c1<0 or Q7r5c1>S10r1 or miss(Q7r6c1) or Q7r6c1<0 or Q7r6c1>S10r1 or Q7_total<>S10r1.
list respid, S10r1, Q7r1c1 to Q7r6c1, Q7_total.
del var Q7_total.
exe.

***************************************B16.

tit Q8.
compute S10_best1=sum(S10r1,S10r2).
compute Q8_total=sum(Q8r1,Q8r2,Q8r3).
exe.
temporary.
sel if miss(Q8r1) or Q8r1<0 or Q8r1>S10_best1 or miss(Q8r2) or Q8r2<0 or Q8r2>S10_best1 or miss(Q8r3) or Q8r3<0 or Q8r3>S10_best1 or Q8_total<>S10_best1.
list respid, S10_best1, Q8r1, Q8r2, Q8r3, Q8_total.
del var Q8_total S10_best1.
exe.

***************************************B17.

tit Q9.
compute Q9_total=sum(Q9r1,Q9r2,Q9r3,Q9r4,Q9r5).
exe.
temporary.
sel if miss(Q9r1) or ~range(Q9r1,0,100) or miss(Q9r2) or ~range(Q9r2,0,100) or miss(Q9r3) or ~range(Q9r3,0,100) or miss(Q9r4) or ~range(Q9r4,0,100) or miss(Q9r5) or ~range(Q9r5,0,100) or Q9_total<>100.
list respid, Q9r1 to Q9r5, Q9_total.
del var Q9_total.
exe.

***************************************B18.

tit Q10-Q11b.
temporary.
sel if miss(Q10) or ~range(Q10,0,99) or miss(Q11) or ~range(Q11,1,3) or miss(Q11a) or ~range(Q11a,0,99) or miss(Q11b) or ~range(Q11b,0,99).
list respid, Q10, Q11, Q11a, Q11b.

***************************************B19.

tit Q12.
temporary.
sel if miss(Q12r1) or ~range(Q12r1,1,7) or miss(Q12r2) or ~range(Q12r2,1,7) or miss(Q12r3) or ~range(Q12r3,1,7) or miss(Q12r4) or ~range(Q12r4,1,7).
list respid, Q12r1 to Q12r4.

***************************************B20.

tit Q13.
temporary.
sel if miss(Q13r1) or ~range(Q13r1,1,7) or miss(Q13r2) or ~range(Q13r2,1,7) or miss(Q13r3) or ~range(Q13r3,1,7).
list respid, Q13r1 to Q13r3.

***************************************B21.

tit Q14.
temporary.
sel if miss(Q14r1) or ~range(Q14r1,1,7) or miss(Q14r2) or ~range(Q14r2,1,7) or miss(Q14r3) or ~range(Q14r3,1,7) or miss(Q14r4) or ~range(Q14r4,1,7).
list respid, Q14r1 to Q14r4.

***************************************B22.

tit Q15.
temporary.
sel if Q15="".
list respid, Q15.

***************************************B23.

tit Q16-Q18.
compute S10_best1=sum(S10r1,S10r2).
exe.
temporary.
sel if miss(Q16) or ~range(Q16,0,100) or miss(Q17) or Q17<0 or Q17>S10r1 or Q18="".
list respid, S10r1, S10_best1, Q16, Q17, Q18.
del var S10_best1.
exe.

***************************************B24.

tit Q19.
temporary.
sel if miss(Q19a) or ~range(Q19a,0,10) or miss(Q19b) or Q19b<0 or Q19b>Q19a or miss(Q19c) or Q19c<0 or Q19c>Q19b.
list respid, Q17, Q19a, Q19b, Q19c.

***************************************B25.

tit Q20.
temporary.
sel if miss(Q20a) or ~range(Q20a,0,10) or miss(Q20b) or Q20b<0 or Q20b>Q20a or miss(Q20c) or Q20c<0 or Q20c>Q20b.
list respid, Q17, S10r1, Q20a, Q20b, Q20c.

***************************************B26.

tit Q21-Q22.
temporary.
sel if miss(Q21) or Q21<0 or Q21>S10r2 or miss(Q22) or Q22<0 or Q22>S10r2.
list respid, S10r2, Q21, Q22.

***************************************B27.

tit Q23.
temporary.
sel if miss(Q23a) or ~range(Q23a,0,10) or miss(Q23b) or Q23b<0 or Q23b>Q23a or miss(Q23c) or Q23c<0 or Q23c>Q23b.
list respid, Q22, Q23a, Q23b, Q23c.

***************************************B28.

tit Q24.
temporary.
sel if miss(Q24a) or ~range(Q24a,0,10) or miss(Q24b) or Q24b<0 or Q24b>Q24a or miss(Q24c) or Q24c<0 or Q24c>Q24b.
list respid, Q22, S10r2, Q24a, Q24b, Q24c.

***************************************B29.

tit Q25.
temporary.
sel if Q25="".
list respid, Q25.

***************************************B30.

tit Q26.
temporary.
sel if miss(Q26r1) or ~range(Q26r1,1,4) or miss(Q26r2) or ~range(Q26r2,1,4) or miss(Q26r3) or ~range(Q26r3,1,4) or miss(Q26r4) or ~range(Q26r4,1,4).
list respid, Q26r1 to Q26r4.

***************************************B31.

tit qtRegion.
temporary.
sel if miss(qtRegion) or ~range(qtRegion,1,5).
list respid, qtRegion.

***************************************HIDOEBATCH.

tit hidOEBatch.
temporary.
sel if miss(hidOEBatch) or hidOEBatch<>99.
list respid, hidOEBatch.

***************************************HIDDVBATCH.

tit hidDVBatch.
temporary.
sel if miss(hidDVBatch) or hidDVBatch<>99.
list respid, hidDVBatch.
