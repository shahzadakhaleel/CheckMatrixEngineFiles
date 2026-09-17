* Encoding: UTF-8.

* ANALYST REVIEW DRAFT - review generation statistics before running this script.

COUNT QTEST_CASE = user_id screenstatus scrstatus s10g_98_other s70g_98_other s90g_98_other q10g_98_other q40g_98_other q60x_1 q70g_98_other q80 q120g_99_other q140g_98_other q180 q190g_98_other q200g_98_other q230 q240g_98_other q250g_98_other q260_98_other q310g_98_other q330g_98_other q430_98_other q460 q480 ('test','TEST','Test','TEst','TESt','tEST','?','.').
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


* VALIDATION ERROR: Block B_Q120: Block B_Q120 changed its mapped source variables.

* VALIDATION ERROR: Block B_Q340_Q420: Block B_Q340_Q420 changed its mapped source variables.

* REVIEW: Block context without individual response-item mappings; review check coverage: q120g_99_other, q120x1_1, q120x1_2, q120x1_3, q120x1_4, q120x1_5, q120x1_6, q120x1_7, q120x1_98, q120x1_99, q120x2_1, q120x2_2, q120x2_3, q120x2_4, q120x2_5, q120x2_6, q120x2_7, q120x2_98, q120x2_99, q120x3_1, q120x3_2, q120x3_3, q120x3_4, q120x3_5, q120x3_6, q120x3_7, q120x3_98, q120x3_99, q120x4_1, q120x4_2, q120x4_3, q120x4_4, q120x4_5, q120x4_6, q120x4_7, q120x4_98, q120x4_99, q120x5_1, q120x5_2, q120x5_3, q120x5_4, q120x5_5, q120x5_6, q120x5_7, q120x5_98, q120x5_99, q130x1_1, q130x1_3, q130x1_4, q130x2_1, q130x2_3, q130x2_4, q130x3_1, q130x3_3, q130x3_4, q130x4_1, q130x4_3, q130x4_4, q130x5_1, q130x5_3, q130x5_4, q190_1, q190_2, q190_3, q190_4, q190_5, q190_6, q190_7, q190_8, q190_98, q190_99, q190g_98_other, q200_1, q200_2, q200_3, q200_4, q200_5, q200_6, q200_7, q200_8, q200_98, q200_99, q200g_98_other, q210x1_1, q210x2_1, q210x3_1, q210x4_1, q210x5_1, q240_1, q240_10, q240_11, q240_12, q240_13, q240_2, q240_3, q240_4, q240_5, q240_6, q240_7, q240_8, q240_9, q240_98, q240g_98_other, q250_1, q250_10, q250_11, q250_12, q250_13, q250_2, q250_3, q250_4, q250_5, q250_6, q250_7, q250_8, q250_9, q250_98, q250g_98_other, q290x1_1, q290x2_1, q290x3_1, q290x4_1, q290x5_1, q310g_98_other, q310x1_1, q310x1_2, q310x1_98, q310x2_1, q310x2_2, q310x2_98, q310x3_1, q310x3_2, q310x3_98, q310x4_1, q310x4_2, q310x4_98, q310x5_1, q310x5_2, q310x5_98, q320x1_1, q320x2_1, q320x3_1, q320x4_1, q320x5_1, q330g_98_other, q330x1_1, q330x1_2, q330x1_3, q330x1_98, q330x2_1, q330x2_2, q330x2_3, q330x2_98, q330x3_1, q330x3_2, q330x3_3, q330x3_98, q330x4_1, q330x4_2, q330x4_3, q330x4_98, q330x5_1, q330x5_2, q330x5_3, q330x5_98, q350x1_1, q350x2_1, q350x3_1, q350x4_1, q350x5_1, q360x1_1, q360x1_2, q360x1_3, q360x1_98, q380x1_1, q380x2_1, q380x3_1, q380x4_1, q380x5_1, q390x1_1, q390x1_2, q390x1_3, q390x1_98, q410x1_1, q410x2_1, q410x3_1, q410x4_1, q410x5_1, q420x1_1, q420x1_2, q420x1_3, q420x1_98.

* REVIEW: Excluded q360x2_1: Unresolved extraction omission: no question mapping or generation block reference; No checks generated; analyst review required;.

* REVIEW: Excluded q360x2_2: Unresolved extraction omission: no question mapping or generation block reference; No checks generated; analyst review required;.

* REVIEW: Excluded q360x2_3: Unresolved extraction omission: no question mapping or generation block reference; No checks generated; analyst review required;.

* REVIEW: Excluded q360x2_98: Unresolved extraction omission: no question mapping or generation block reference; No checks generated; analyst review required;.

* REVIEW: Excluded q360x3_1: Unresolved extraction omission: no question mapping or generation block reference; No checks generated; analyst review required;.

* REVIEW: Excluded q360x3_2: Unresolved extraction omission: no question mapping or generation block reference; No checks generated; analyst review required;.

* REVIEW: Excluded q360x3_3: Unresolved extraction omission: no question mapping or generation block reference; No checks generated; analyst review required;.

* REVIEW: Excluded q360x3_98: Unresolved extraction omission: no question mapping or generation block reference; No checks generated; analyst review required;.

* REVIEW: Excluded q360x4_1: Unresolved extraction omission: no question mapping or generation block reference; No checks generated; analyst review required;.

* REVIEW: Excluded q360x4_2: Unresolved extraction omission: no question mapping or generation block reference; No checks generated; analyst review required;.

* REVIEW: Excluded q360x4_3: Unresolved extraction omission: no question mapping or generation block reference; No checks generated; analyst review required;.

* REVIEW: Excluded q360x4_98: Unresolved extraction omission: no question mapping or generation block reference; No checks generated; analyst review required;.

* REVIEW: Excluded q360x5_1: Unresolved extraction omission: no question mapping or generation block reference; No checks generated; analyst review required;.

* REVIEW: Excluded q360x5_2: Unresolved extraction omission: no question mapping or generation block reference; No checks generated; analyst review required;.

* REVIEW: Excluded q360x5_3: Unresolved extraction omission: no question mapping or generation block reference; No checks generated; analyst review required;.

* REVIEW: Excluded q360x5_98: Unresolved extraction omission: no question mapping or generation block reference; No checks generated; analyst review required;.

* REVIEW: Excluded q390x2_1: Unresolved extraction omission: no question mapping or generation block reference; No checks generated; analyst review required;.

* REVIEW: Excluded q390x2_2: Unresolved extraction omission: no question mapping or generation block reference; No checks generated; analyst review required;.

* REVIEW: Excluded q390x2_3: Unresolved extraction omission: no question mapping or generation block reference; No checks generated; analyst review required;.

* REVIEW: Excluded q390x2_98: Unresolved extraction omission: no question mapping or generation block reference; No checks generated; analyst review required;.

* REVIEW: Excluded q390x3_1: Unresolved extraction omission: no question mapping or generation block reference; No checks generated; analyst review required;.

* REVIEW: Excluded q390x3_2: Unresolved extraction omission: no question mapping or generation block reference; No checks generated; analyst review required;.

* REVIEW: Excluded q390x3_3: Unresolved extraction omission: no question mapping or generation block reference; No checks generated; analyst review required;.

* REVIEW: Excluded q390x3_98: Unresolved extraction omission: no question mapping or generation block reference; No checks generated; analyst review required;.

* REVIEW: Excluded q390x4_1: Unresolved extraction omission: no question mapping or generation block reference; No checks generated; analyst review required;.

* REVIEW: Excluded q390x4_2: Unresolved extraction omission: no question mapping or generation block reference; No checks generated; analyst review required;.

* REVIEW: Excluded q390x4_3: Unresolved extraction omission: no question mapping or generation block reference; No checks generated; analyst review required;.

* REVIEW: Excluded q390x4_98: Unresolved extraction omission: no question mapping or generation block reference; No checks generated; analyst review required;.

* REVIEW: Excluded q390x5_1: Unresolved extraction omission: no question mapping or generation block reference; No checks generated; analyst review required;.

* REVIEW: Excluded q390x5_2: Unresolved extraction omission: no question mapping or generation block reference; No checks generated; analyst review required;.

* REVIEW: Excluded q390x5_3: Unresolved extraction omission: no question mapping or generation block reference; No checks generated; analyst review required;.

* REVIEW: Excluded q390x5_98: Unresolved extraction omission: no question mapping or generation block reference; No checks generated; analyst review required;.

* REVIEW: Excluded q420x2_1: Unresolved extraction omission: no question mapping or generation block reference; No checks generated; analyst review required;.

* REVIEW: Excluded q420x2_2: Unresolved extraction omission: no question mapping or generation block reference; No checks generated; analyst review required;.

* REVIEW: Excluded q420x2_3: Unresolved extraction omission: no question mapping or generation block reference; No checks generated; analyst review required;.

* REVIEW: Excluded q420x2_98: Unresolved extraction omission: no question mapping or generation block reference; No checks generated; analyst review required;.

* REVIEW: Excluded q420x3_1: Unresolved extraction omission: no question mapping or generation block reference; No checks generated; analyst review required;.

* REVIEW: Excluded q420x3_2: Unresolved extraction omission: no question mapping or generation block reference; No checks generated; analyst review required;.

* REVIEW: Excluded q420x3_3: Unresolved extraction omission: no question mapping or generation block reference; No checks generated; analyst review required;.

* REVIEW: Excluded q420x3_98: Unresolved extraction omission: no question mapping or generation block reference; No checks generated; analyst review required;.

* REVIEW: Excluded q420x4_1: Unresolved extraction omission: no question mapping or generation block reference; No checks generated; analyst review required;.

* REVIEW: Excluded q420x4_2: Unresolved extraction omission: no question mapping or generation block reference; No checks generated; analyst review required;.

* REVIEW: Excluded q420x4_3: Unresolved extraction omission: no question mapping or generation block reference; No checks generated; analyst review required;.

* REVIEW: Excluded q420x4_98: Unresolved extraction omission: no question mapping or generation block reference; No checks generated; analyst review required;.

* REVIEW: Excluded q420x5_1: Unresolved extraction omission: no question mapping or generation block reference; No checks generated; analyst review required;.

* REVIEW: Excluded q420x5_2: Unresolved extraction omission: no question mapping or generation block reference; No checks generated; analyst review required;.

* REVIEW: Excluded q420x5_3: Unresolved extraction omission: no question mapping or generation block reference; No checks generated; analyst review required;.

* REVIEW: Excluded q420x5_98: Unresolved extraction omission: no question mapping or generation block reference; No checks generated; analyst review required;.

***************************************RESPID.

tit respid.
temporary.
sel if miss(respid) or respid<=0.
list respid, respid.

***************************************USER_ID.

tit user_id.
temporary.
sel if user_id=''.
list respid, user_id.

***************************************INTERVIEW_START.

tit interview_start.
temporary.
sel if miss(interview_start).
list respid, interview_start.

***************************************INTERVIEW_END.

tit interview_end.
temporary.
sel if miss(interview_end).
list respid, interview_end.

***************************************SCREENSTATUS.

tit screenstatus.
temporary.
sel if screenstatus='' or screenstatus<>'COMPLETE'.
list respid, screenstatus.

***************************************SCRSTATUS.

tit scrstatus.
temporary.
sel if scrstatus='' or scrstatus<>'COMPLETE'.
list respid, scrstatus.

***************************************HIDCHANGE.

tit hidchange.
temporary.
sel if miss(hidchange) or ~range(hidchange,0,10).
list respid, hidchange.

***************************************B_CONSENT.

!Numeric ask=consent opr=<> value=0 min=1 max=2 myvars=consent.
!Numeric ask=tt_it opr=<> value=0 min=1 max=2 myvars=tt_it.
!Numeric ask=tt_fr opr=<> value=0 min=1 max=2 myvars=tt_fr.
!Numeric ask=tt_de opr=<> value=0 min=1 max=2 myvars=tt_de.
!Numeric ask=tt_usuk opr=<> value=0 min=1 max=3 myvars=tt_usuk.
!Numeric ask=ae_it opr=<> value=0 min=1 max=3 myvars=ae_it.
!Numeric ask=ae_es opr=<> value=0 min=1 max=3 myvars=ae_es.
!Numeric ask=sit opr=<> value=0 min=1 max=2 myvars=sit.
!Numeric ask=pt10 opr=<> value=0 min=1 max=2 myvars=pt10.
!Numeric ask=pt20 opr=<> value=0 min=1 max=2 myvars=pt20.

***************************************B_S10.

!Numeric ask=s10 opr=<> value=0 min=1 max=98 myvars=s10.
!String ask=s10 opr=<> value=0 myvars=s10g_98_other.

***************************************B_S20_S30.

!Numeric ask=s20 opr=<> value=0 min=1 max=3 myvars=s20.
!Numeric ask=s30 opr=<> value=0 min=1 max=2 myvars=s30.

***************************************B_S40.

!Numeric ask=s40_1 opr=<> value=0 min=3 max=35 myvars=s40_1.

***************************************B_S50_S60.

!Numeric ask=s50 opr=<> value=0 min=1 max=7 myvars=s50.
!Numeric ask=s60 opr=<> value=0 min=1 max=53 myvars=s60.

***************************************B_S70.

!Numeric ask=s70_1 opr=<> value=0 min=0 max=100 myvars=s70_1.
!Numeric ask=s70_2 opr=<> value=0 min=0 max=100 myvars=s70_2.
!Numeric ask=s70_3 opr=<> value=0 min=0 max=100 myvars=s70_3.
!Numeric ask=s70_98 opr=<> value=0 min=0 max=100 myvars=s70_98.
!String ask=s70_98 opr=<> value=0 myvars=s70g_98_other.
!Sum_to_var svar=s70_1 evar=s70_98 qnt=S70_SUM ctr=100 opr=<>.

***************************************B_S80.

!Numeric ask=s80_1 opr=<> value=0 min=0 max=100 myvars=s80_1.
!Numeric ask=s80_2 opr=<> value=0 min=0 max=100 myvars=s80_2.
!Numeric ask=s80_3 opr=<> value=0 min=0 max=100 myvars=s80_3.
!Numeric ask=s80_4 opr=<> value=0 min=0 max=100 myvars=s80_4.

***************************************B_S85.

!Numeric ask=s85_1 opr=<> value=0 min=0 max=100 myvars=s85_1.
!Numeric ask=s85_2 opr=<> value=0 min=0 max=100 myvars=s85_2.
!Numeric ask=s85_3 opr=<> value=0 min=0 max=100 myvars=s85_3.
!Numeric ask=s85_4 opr=<> value=0 min=0 max=100 myvars=s85_4.
!Numeric ask=s85_5 opr=<> value=0 min=0 max=100 myvars=s85_5.
!Sum_to_var svar=s85_1 evar=s85_5 qnt=S85_SUM ctr=100 opr=<>.

***************************************B_S90.

!MULTI_B svar=s90_1 evar=s90_98 qnt=S90 ctr=10.
!String ask=s90_98 opr=<> value=0 myvars=s90g_98_other.

***************************************B_S100.

!Numeric ask=s100_1 opr=<> value=0 min=1 max=2 myvars=s100_1.
!Numeric ask=s100_2 opr=<> value=0 min=1 max=2 myvars=s100_2.
!Numeric ask=s100_3 opr=<> value=0 min=1 max=2 myvars=s100_3.

***************************************B_Q10.

!Numeric ask=q10_1 opr=<> value=0 min=0 max=100 myvars=q10_1.
!Numeric ask=q10_2 opr=<> value=0 min=0 max=100 myvars=q10_2.
!Numeric ask=q10_3 opr=<> value=0 min=0 max=100 myvars=q10_3.
!Numeric ask=q10_4 opr=<> value=0 min=0 max=100 myvars=q10_4.
!Numeric ask=q10_98 opr=<> value=0 min=0 max=100 myvars=q10_98.
!Numeric ask=q10dk_99 opr=<> value=0 min=0 max=99 myvars=q10dk_99.
!String ask=q10_98 opr=<> value=0 myvars=q10g_98_other.
!Sum_to_var svar=q10_1 evar=q10_98 qnt=Q10_SUM ctr=100 opr=<>.

***************************************B_Q20_Q30.

!Numeric ask=q20_1 opr=<> value=0 min=0 max=100 myvars=q20_1.
!Numeric ask=q20_2 opr=<> value=0 min=0 max=100 myvars=q20_2.
!Sum_to_var svar=q20_1 evar=q20_2 qnt=Q20_SUM ctr=100 opr=<>.
!Numeric ask=q30_1 opr=<> value=0 min=0 max=100 myvars=q30_1.

***************************************B_Q40.

!MULTI_B svar=q40_1 evar=q40_98 qnt=Q40 ctr=5.
!String ask=q40_98 opr=<> value=0 myvars=q40g_98_other.

***************************************B_Q50_Q60.

!Numeric ask=q50_1 opr=<> value=0 min=1 max=7 myvars=q50_1.
!Numeric ask=q60x_1 opr=<> value=0 min=1 max=100000 myvars=q60x_1.

***************************************B_Q70_Q90.

!Numeric ask=q70 opr=<> value=0 min=1 max=98 myvars=q70.
!String ask=q70 opr=<> value=0 myvars=q70g_98_other.
!String ask=q70 opr=<> value=0 myvars=q80.
!Numeric ask=q70 opr=<> value=0 min=0 max=100 myvars=q90_1.

***************************************B_Q100_Q110.

!Numeric ask=q100_1 opr=<> value=0 min=0 max=100 myvars=q100_1.
!Numeric ask=q100_2 opr=<> value=0 min=0 max=100 myvars=q100_2.
!Numeric ask=q100_3 opr=<> value=0 min=0 max=100 myvars=q100_3.
!Sum_to_var svar=q100_1 evar=q100_3 qnt=Q100_SUM ctr=100 opr=<>.
!Numeric ask=q110_1 opr=<> value=0 min=0 max=100 myvars=q110_1.
!Numeric ask=q110_2 opr=<> value=0 min=0 max=100 myvars=q110_2.
!Numeric ask=q110_3 opr=<> value=0 min=0 max=100 myvars=q110_3.
!Numeric ask=q110_4 opr=<> value=0 min=0 max=100 myvars=q110_4.
!Numeric ask=q110_5 opr=<> value=0 min=0 max=100 myvars=q110_5.
!Sum_to_var svar=q110_1 evar=q110_5 qnt=Q110_SUM ctr=100 opr=<>.

***************************************B_Q120.

* No draft generated: The five age-by-medication grids contain 45 noncontiguous SAV variables; the supplied macro library requires contiguous spans and no safe contiguous span can be verified without physical dictionary order for the full grid; Generate explicit per-variable checks in a subsequent analyst revision;.

***************************************B_Q130.

!Numeric ask=q130x1_1 opr=<> value=0 min=0 max=100 myvars=q130x1_1.
!Numeric ask=q130x1_3 opr=<> value=0 min=0 max=100 myvars=q130x1_3.
!Numeric ask=q130x1_4 opr=<> value=0 min=0 max=100 myvars=q130x1_4.
!Numeric ask=q130x2_1 opr=<> value=0 min=0 max=100 myvars=q130x2_1.
!Numeric ask=q130x2_3 opr=<> value=0 min=0 max=100 myvars=q130x2_3.
!Numeric ask=q130x2_4 opr=<> value=0 min=0 max=100 myvars=q130x2_4.
!Numeric ask=q130x3_1 opr=<> value=0 min=0 max=100 myvars=q130x3_1.
!Numeric ask=q130x3_3 opr=<> value=0 min=0 max=100 myvars=q130x3_3.
!Numeric ask=q130x3_4 opr=<> value=0 min=0 max=100 myvars=q130x3_4.
!Numeric ask=q130x4_1 opr=<> value=0 min=0 max=100 myvars=q130x4_1.
!Numeric ask=q130x4_3 opr=<> value=0 min=0 max=100 myvars=q130x4_3.
!Numeric ask=q130x4_4 opr=<> value=0 min=0 max=100 myvars=q130x4_4.
!Numeric ask=q130x5_1 opr=<> value=0 min=0 max=100 myvars=q130x5_1.
!Numeric ask=q130x5_3 opr=<> value=0 min=0 max=100 myvars=q130x5_3.
!Numeric ask=q130x5_4 opr=<> value=0 min=0 max=100 myvars=q130x5_4.

***************************************B_Q140_Q170.

!MULTI_B svar=q140_1 evar=q140_98 qnt=Q140 ctr=8.
!String ask=q140_98 opr=<> value=0 myvars=q140g_98_other.
!Numeric ask=q150_1 opr=<> value=0 min=0 max=100 myvars=q150_1.
!Numeric ask=q160_1 opr=<> value=0 min=0 max=100 myvars=q160_1.
!Numeric ask=q170_1 opr=<> value=0 min=0 max=100 myvars=q170_1.

***************************************B_Q180.

!String ask=q180 opr=<> value=0 myvars=q180.

***************************************B_Q190_Q200.

!MULTI_B svar=q190_1 evar=q190_98 qnt=Q190 ctr=10.
!String ask=q190_98 opr=<> value=0 myvars=q190g_98_other.
!MULTI_B svar=q200_1 evar=q200_98 qnt=Q200 ctr=10.
!String ask=q200_98 opr=<> value=0 myvars=q200g_98_other.

***************************************B_Q210_Q220.

!Numeric ask=q210x1_1 opr=<> value=0 min=0 max=100 myvars=q210x1_1.
!Numeric ask=q210x2_1 opr=<> value=0 min=0 max=100 myvars=q210x2_1.
!Numeric ask=q210x3_1 opr=<> value=0 min=0 max=100 myvars=q210x3_1.
!Numeric ask=q210x4_1 opr=<> value=0 min=0 max=100 myvars=q210x4_1.
!Numeric ask=q210x5_1 opr=<> value=0 min=0 max=100 myvars=q210x5_1.
!Numeric ask=q220_1 opr=<> value=0 min=1 max=11 myvars=q220_1.

***************************************B_Q230.

!String ask=q230 opr=<> value=0 myvars=q230.

***************************************B_Q240_Q250.

!MULTI_B svar=q240_1 evar=q240_98 qnt=Q240 ctr=14.
!String ask=q240_98 opr=<> value=0 myvars=q240g_98_other.
!MULTI_B svar=q250_1 evar=q250_98 qnt=Q250 ctr=14.
!String ask=q250_98 opr=<> value=0 myvars=q250g_98_other.

***************************************B_Q260_Q280.

!Numeric ask=q260 opr=<> value=0 min=1 max=99 myvars=q260.
!String ask=q260 opr=<> value=0 myvars=q260_98_other.
!Numeric ask=q270_1 opr=<> value=0 min=1 max=11 myvars=q270_1.
!Numeric ask=q280_1 opr=<> value=0 min=0 max=100 myvars=q280_1.

***************************************B_Q290_Q300.

!Numeric ask=q290x1_1 opr=<> value=0 min=0 max=100 myvars=q290x1_1.
!Numeric ask=q290x2_1 opr=<> value=0 min=0 max=100 myvars=q290x2_1.
!Numeric ask=q290x3_1 opr=<> value=0 min=0 max=100 myvars=q290x3_1.
!Numeric ask=q290x4_1 opr=<> value=0 min=0 max=100 myvars=q290x4_1.
!Numeric ask=q290x5_1 opr=<> value=0 min=0 max=100 myvars=q290x5_1.
!Numeric ask=q300_1 opr=<> value=0 min=1 max=5 myvars=q300_1.
!Numeric ask=q300_2 opr=<> value=0 min=1 max=5 myvars=q300_2.
!Numeric ask=q300_3 opr=<> value=0 min=1 max=5 myvars=q300_3.
!Numeric ask=q300_4 opr=<> value=0 min=1 max=5 myvars=q300_4.
!Numeric ask=q300_5 opr=<> value=0 min=1 max=5 myvars=q300_5.

***************************************B_Q310_Q330.

* No draft generated: These age-by-treatment allocation grids require routed, age-specific sum-to-100 validation and contain noncontiguous SAV variables; No safe approved macro call can be generated without unintended TO spans;.

***************************************B_Q340_Q420.

* No draft generated: Alternative-profile allocation grids require routed, age-specific sum-to-100 validation across multiple noncontiguous variable families; The supplied macros cannot safely represent these grids without physical-order verification;.

***************************************B_Q430_Q450.

!Numeric ask=q430 opr=<> value=0 min=1 max=99 myvars=q430.
!String ask=q430 opr=<> value=0 myvars=q430_98_other.
!Numeric ask=q430 opr=<> value=0 min=0 max=60 myvars=q440_1.
!Numeric ask=q430 opr=<> value=0 min=1 max=7 myvars=q450_1.

***************************************B_Q460_Q480.

!String ask=q460 opr=<> value=0 myvars=q460.
!Numeric ask=q470_1 opr=<> value=0 min=0 max=60 myvars=q470_1.
!Numeric ask=q470_2 opr=<> value=0 min=0 max=60 myvars=q470_2.
!String ask=q480 opr=<> value=0 myvars=q480.

***************************************B_HIDTYPE.

!Numeric ask=hidtype opr=<> value=0 min=1 max=2 myvars=hidtype.

***************************************SURVEYLOI.

tit surveyloi.
temporary.
sel if miss(surveyloi) or surveyloi<=0.
list respid, surveyloi.

***************************************HIDOEBATCH.

tit hidoebatch.
temporary.
sel if miss(hidoebatch) or hidoebatch<>99.
list respid, hidoebatch.

***************************************HIDDVBATCH.

tit hiddvbatch.
temporary.
sel if miss(hiddvbatch) or hiddvbatch<>99.
list respid, hiddvbatch.
