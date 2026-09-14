* Encoding: UTF-8.

* ANALYST REVIEW DRAFT - review generation statistics before running this script.

COUNT QTEST_CASE = status screenstatus scrstatus qbegintime survey_key user_id ipaddress username useragent vendorid aid progdatabase primary_specialty hlistt captest qb001 qb002 s2_98_other s9_98_other q105_1 q105_2 q105_3 q105_4 q105_5 q105_6 q105_7 q105_8 q105_9 q105_10 q137 q140_98_other q210 q220_98_other q230_98_other q245 q255_98_other q305 q315 q320 q345_98_other q350_98_other hqloi qtimestamp_start qtimestamp_screener qtimestamp_sec1 qtimestamp_sec2 qtimestamp_sec3 qtimestamp_sec4 qtimestamp_main qtimestamp_surveyloi id surveyid prepwd qredirect qbrowser qdevice qstr hsid hscranswered helapse_1 helapse_2 qerrnum_1 qerrnum_2 qerrnum_3 checksum hrawlink hulink hcurrqid hprevqid hallqids showjumplinks iqsvars_client_id iqsvars_response_id iqsvars_survey_id iqsvars_geocode iqsvars_langcode raflags_1_other raflags_2_other raflags_3_other raflags_4_other raflags_5_other hraresult hidcapstr qpassword pnumber screenstatusbackup hdeviceinfo_1 hdeviceinfo_2 hdeviceinfo_3 hdeviceinfo_4 hdeviceinfo_5 hdeviceinfo_6 hdeviceinfo_7 hdeviceinfo_8 hdeviceinfo_9 hdeviceinfo_10 rvid_response_1 rvid_response_2 rvid_response_3 hqualityscoreanalyze_1 hqualityscoreanalyze_2 hqualityscoreanalyze_3 hqualityscoreanalyze_4 hqualityscoreanalyze_5 hqualityscoreanalyze_6 hqualityscoreanalyze_7 hqualityscoreanalyze_8 hqualityscoreanalyze_9 hqualityscoreanalyze_10 hqualityscoreanalyze_11 hqualityscoreanalyze_12 hqualityscoreanalyze_13 hqualityscoreanalyze_14 hqualityscoreanalyze_15 hqualityscoreanalyze_16 hqualityscoreanalyze_17 hqualityscoreanalyze_18 hqualityscoreanalyze_19 ('test','TEST','Test','TEst','TESt','tEST','?','.').
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


* REVIEW: Excluded qerrors_1: Unresolved extraction omission: no question mapping or generation block reference; No checks generated; analyst review required;.

* REVIEW: Excluded qerrors_10: Unresolved extraction omission: no question mapping or generation block reference; No checks generated; analyst review required;.

* REVIEW: Excluded qerrors_11: Unresolved extraction omission: no question mapping or generation block reference; No checks generated; analyst review required;.

* REVIEW: Excluded qerrors_12: Unresolved extraction omission: no question mapping or generation block reference; No checks generated; analyst review required;.

* REVIEW: Excluded qerrors_13: Unresolved extraction omission: no question mapping or generation block reference; No checks generated; analyst review required;.

* REVIEW: Excluded qerrors_14: Unresolved extraction omission: no question mapping or generation block reference; No checks generated; analyst review required;.

* REVIEW: Excluded qerrors_15: Unresolved extraction omission: no question mapping or generation block reference; No checks generated; analyst review required;.

* REVIEW: Excluded qerrors_16: Unresolved extraction omission: no question mapping or generation block reference; No checks generated; analyst review required;.

* REVIEW: Excluded qerrors_17: Unresolved extraction omission: no question mapping or generation block reference; No checks generated; analyst review required;.

* REVIEW: Excluded qerrors_18: Unresolved extraction omission: no question mapping or generation block reference; No checks generated; analyst review required;.

* REVIEW: Excluded qerrors_19: Unresolved extraction omission: no question mapping or generation block reference; No checks generated; analyst review required;.

* REVIEW: Excluded qerrors_2: Unresolved extraction omission: no question mapping or generation block reference; No checks generated; analyst review required;.

* REVIEW: Excluded qerrors_20: Unresolved extraction omission: no question mapping or generation block reference; No checks generated; analyst review required;.

* REVIEW: Excluded qerrors_21: Unresolved extraction omission: no question mapping or generation block reference; No checks generated; analyst review required;.

* REVIEW: Excluded qerrors_22: Unresolved extraction omission: no question mapping or generation block reference; No checks generated; analyst review required;.

* REVIEW: Excluded qerrors_23: Unresolved extraction omission: no question mapping or generation block reference; No checks generated; analyst review required;.

* REVIEW: Excluded qerrors_24: Unresolved extraction omission: no question mapping or generation block reference; No checks generated; analyst review required;.

* REVIEW: Excluded qerrors_25: Unresolved extraction omission: no question mapping or generation block reference; No checks generated; analyst review required;.

* REVIEW: Excluded qerrors_26: Unresolved extraction omission: no question mapping or generation block reference; No checks generated; analyst review required;.

* REVIEW: Excluded qerrors_27: Unresolved extraction omission: no question mapping or generation block reference; No checks generated; analyst review required;.

* REVIEW: Excluded qerrors_28: Unresolved extraction omission: no question mapping or generation block reference; No checks generated; analyst review required;.

* REVIEW: Excluded qerrors_29: Unresolved extraction omission: no question mapping or generation block reference; No checks generated; analyst review required;.

* REVIEW: Excluded qerrors_3: Unresolved extraction omission: no question mapping or generation block reference; No checks generated; analyst review required;.

* REVIEW: Excluded qerrors_30: Unresolved extraction omission: no question mapping or generation block reference; No checks generated; analyst review required;.

* REVIEW: Excluded qerrors_31: Unresolved extraction omission: no question mapping or generation block reference; No checks generated; analyst review required;.

* REVIEW: Excluded qerrors_32: Unresolved extraction omission: no question mapping or generation block reference; No checks generated; analyst review required;.

* REVIEW: Excluded qerrors_33: Unresolved extraction omission: no question mapping or generation block reference; No checks generated; analyst review required;.

* REVIEW: Excluded qerrors_34: Unresolved extraction omission: no question mapping or generation block reference; No checks generated; analyst review required;.

* REVIEW: Excluded qerrors_35: Unresolved extraction omission: no question mapping or generation block reference; No checks generated; analyst review required;.

* REVIEW: Excluded qerrors_36: Unresolved extraction omission: no question mapping or generation block reference; No checks generated; analyst review required;.

* REVIEW: Excluded qerrors_37: Unresolved extraction omission: no question mapping or generation block reference; No checks generated; analyst review required;.

* REVIEW: Excluded qerrors_38: Unresolved extraction omission: no question mapping or generation block reference; No checks generated; analyst review required;.

* REVIEW: Excluded qerrors_39: Unresolved extraction omission: no question mapping or generation block reference; No checks generated; analyst review required;.

* REVIEW: Excluded qerrors_4: Unresolved extraction omission: no question mapping or generation block reference; No checks generated; analyst review required;.

* REVIEW: Excluded qerrors_40: Unresolved extraction omission: no question mapping or generation block reference; No checks generated; analyst review required;.

* REVIEW: Excluded qerrors_5: Unresolved extraction omission: no question mapping or generation block reference; No checks generated; analyst review required;.

* REVIEW: Excluded qerrors_51: Unresolved extraction omission: no question mapping or generation block reference; No checks generated; analyst review required;.

* REVIEW: Excluded qerrors_6: Unresolved extraction omission: no question mapping or generation block reference; No checks generated; analyst review required;.

* REVIEW: Excluded qerrors_7: Unresolved extraction omission: no question mapping or generation block reference; No checks generated; analyst review required;.

* REVIEW: Excluded qerrors_8: Unresolved extraction omission: no question mapping or generation block reference; No checks generated; analyst review required;.

* REVIEW: Excluded qerrors_9: Unresolved extraction omission: no question mapping or generation block reference; No checks generated; analyst review required;.

* REVIEW: Excluded qerrors_OEAlert: Unresolved extraction omission: no question mapping or generation block reference; No checks generated; analyst review required;.

* REVIEW: Excluded qerrors_OEAlertN: Unresolved extraction omission: no question mapping or generation block reference; No checks generated; analyst review required;.

* REVIEW: Excluded qerrors_OEMin: Unresolved extraction omission: no question mapping or generation block reference; No checks generated; analyst review required;.

* REVIEW: Excluded qerrors_other: Unresolved extraction omission: no question mapping or generation block reference; No checks generated; analyst review required;.

* REVIEW: Excluded qerrors_password: Unresolved extraction omission: no question mapping or generation block reference; No checks generated; analyst review required;.

* REVIEW: Excluded qerrors_Postal: Unresolved extraction omission: no question mapping or generation block reference; No checks generated; analyst review required;.

* REVIEW: Excluded qerrors_S1: Unresolved extraction omission: no question mapping or generation block reference; No checks generated; analyst review required;.

* REVIEW: Excluded qerrors_S2: Unresolved extraction omission: no question mapping or generation block reference; No checks generated; analyst review required;.

* REVIEW: Excluded qerrors_S3: Unresolved extraction omission: no question mapping or generation block reference; No checks generated; analyst review required;.

* REVIEW: Excluded qerrors_S4: Unresolved extraction omission: no question mapping or generation block reference; No checks generated; analyst review required;.

* REVIEW: Excluded qerrors_S5: Unresolved extraction omission: no question mapping or generation block reference; No checks generated; analyst review required;.

* REVIEW: Excluded qerrors_S6: Unresolved extraction omission: no question mapping or generation block reference; No checks generated; analyst review required;.

* REVIEW: Excluded qerrors_S7: Unresolved extraction omission: no question mapping or generation block reference; No checks generated; analyst review required;.

* REVIEW: Excluded qerrors_S8: Unresolved extraction omission: no question mapping or generation block reference; No checks generated; analyst review required;.

* REVIEW: Excluded qerrors_Toutmsg: Unresolved extraction omission: no question mapping or generation block reference; No checks generated; analyst review required;.

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

***************************************b01.

tit b01 - Screener response domains.
temporary.
sel if miss(ae1) or ~range(ae1,1,2) or miss(s2) or ~ANY(s2,1,2,3,4,5,98) or miss(s3) or ~range(s3,1,2) or miss(s4) or ~ANY(s4,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,99) or miss(s5_1) or ~range(s5_1,0,100) or miss(s6_1) or ~range(s6_1,0,99).
list respid, ae1 s2 s3 s4 s5_1 s6_1.
tit b01 - Patient-count bounds.
temporary.
sel if miss(s7_1) or ~range(s7_1,0,10000) or miss(s7_2) or ~range(s7_2,0,10000) or miss(s7_3) or ~range(s7_3,0,10000) or miss(s7_4) or ~range(s7_4,0,10000) or miss(s7_5) or ~range(s7_5,0,10000) or miss(s7_6) or ~range(s7_6,0,10000) or miss(s7_7) or ~range(s7_7,0,10000).
list respid, s7_1 s7_2 s7_3 s7_4 s7_5 s7_6 s7_7.
tit b01 - Pericarditis category consistency.
temporary.
sel if miss(s8_1) or miss(s8_2) or ~range(s8_1,0,s7_2) or ~range(s8_2,0,s7_2) or sum(s8_1,s8_2)<>s7_2.
list respid, s7_2 s8_1 s8_2.
tit b01 - Etiology bounds and total.
temporary.
sel if miss(s9_1) or miss(s9_2) or miss(s9_3) or miss(s9_4) or miss(s9_98) or ~range(s9_1,0,s8_1) or ~range(s9_2,0,s8_1) or ~range(s9_3,0,s8_1) or ~range(s9_4,0,s8_1) or ~range(s9_98,0,s8_1) or sum(s9_1,s9_2,s9_3,s9_4,s9_98)<>s8_1.
list respid, s8_1 s9_1 s9_2 s9_3 s9_4 s9_98.
tit b01 - Other etiology text linkage.
temporary.
sel if (s9_98=1 and (miss(s9_98_other) or s9_98_other="")) or (s9_98<>1 and s9_98_other<>"").
list respid, s9_98 s9_98_other.

***************************************b02.

tit b02 - Open-text awareness responses.
!String ask=q105_1 opr== value=0 myvars=q105_1 q105_2 q105_3 q105_4 q105_5 q105_6 q105_7 q105_8 q105_9 q105_10.
tit b02 - Awareness grid.
temporary.
sel if miss(q110_1) or ~range(q110_1,1,4) or miss(q110_2) or ~range(q110_2,1,4) or miss(q110_3) or ~range(q110_3,1,4) or miss(q110_4) or ~range(q110_4,1,4) or miss(q110_5) or ~range(q110_5,1,4).
list respid, q110_1 q110_2 q110_3 q110_4 q110_5.
tit b02 - Prescribing, opinion, and preference grids.
temporary.
sel if miss(q115_1) or ~range(q115_1,1,3) or miss(q115_2) or ~range(q115_2,1,3) or miss(q115_3) or ~range(q115_3,1,3) or miss(q115_4) or ~range(q115_4,1,3) or miss(q115_5) or ~range(q115_5,1,3) or miss(q120_1) or ~range(q120_1,1,7) or miss(q120_2) or ~range(q120_2,1,7) or miss(q120_3) or ~range(q120_3,1,7) or miss(q120_4) or ~range(q120_4,1,7) or miss(q120_5) or ~range(q120_5,1,7) or miss(q125_1) or ~range(q125_1,1,7) or miss(q125_2) or ~range(q125_2,1,7) or miss(q125_3) or ~range(q125_3,1,7) or miss(q125_4) or ~range(q125_4,1,7) or miss(q125_5) or ~range(q125_5,1,7).
list respid, q115_1 q115_2 q115_3 q115_4 q115_5 q120_1 q120_2 q120_3 q120_4 q120_5 q125_1 q125_2 q125_3 q125_4 q125_5.
tit b02 - Ad awareness selection set.
!MULTI_B svar=q135_1 evar=q135_99 qnt=q135 ctr=6.
compute q140_filter=q135_5.
exe.
tit b02 - Arcalyst advertising source selection.
!MULTI_B_FLT svar=q140_1 evar=q140_99 qnt=q140 ctr=13 filter=q140_filter.
tit b02 - Arcalyst other-text linkage.
temporary.
sel if (q140_98=1 and (miss(q140_98_other) or q140_98_other="")) or (q140_98<>1 and q140_98_other<>"").
list respid, q140_98 q140_98_other.
tit b02 - Open-text test-case review.
compute q137_test_flag=0.
if index(q137,"test")>0 or index(q137,"TEST")>0 or index(q137,"Test")>0 or index(q137,"?")>0 or index(q137,".")>0 q137_test_flag=1.
exe.
temporary.
sel if q137_test_flag=1.
list respid, q137 q137_test_flag.
del var q140_filter q137_test_flag.

***************************************b03.

tit b03 - Blinded ad recall domains.
temporary.
sel if miss(q205) or ~range(q205,1,2) or (q205=1 and (miss(q220) or ~ANY(q220,1,2,3,4,5,98,99))) or (q205=1 and miss(q240_1)) or (q205=1 and ~range(q240_1,1,99)).
list respid, q205 q220 q240_1.
tit b03 - Blinded ad source selection.
temporary.
sel if q205=1 and (miss(q230_1) or miss(q230_2) or miss(q230_3) or miss(q230_4) or miss(q230_5) or miss(q230_6) or miss(q230_7) or miss(q230_8) or miss(q230_9) or miss(q230_10) or miss(q230_11) or miss(q230_98) or miss(q230_99)).
list respid, q205 q230_1 q230_2 q230_3 q230_4 q230_5 q230_6 q230_7 q230_8 q230_9 q230_10 q230_11 q230_98 q230_99.
tit b03 - Exclusive none and other links.
temporary.
sel if q205=1 and ((q230_99=1 and sum(q230_1,q230_2,q230_3,q230_4,q230_5,q230_6,q230_7,q230_8,q230_9,q230_10,q230_11,q230_98)>0) or (q230_98=1 and (miss(q230_98_other) or q230_98_other="")) or (q230_98<>1 and q230_98_other<>"") or (q220=98 and (miss(q220_98_other) or q220_98_other="")) or (q220<>98 and q220_98_other<>"")).
list respid, q205 q220 q220_98_other q230_98 q230_99 q230_98_other.
tit b03 - Downstream open-text test-case review.
compute q210_test_flag=0.
if index(q210,"test")>0 or index(q210,"TEST")>0 or index(q210,"Test")>0 or index(q210,"?")>0 or index(q210,".")>0 q210_test_flag=1.
compute q245_test_flag=0.
if index(q245,"test")>0 or index(q245,"TEST")>0 or index(q245,"Test")>0 or index(q245,"?")>0 or index(q245,".")>0 q245_test_flag=1.
exe.
temporary.
sel if q205=1 and (q210_test_flag=1 or q245_test_flag=1).
list respid, q205 q210 q210_test_flag q245 q245_test_flag.
del var q210_test_flag q245_test_flag.

***************************************b04.

tit b04 - Advertisement evaluation domains.
temporary.
sel if miss(q310) or ~range(q310,1,5) or miss(q340) or ~range(q340,1,2) or (q340=1 and (miss(q345_1) or miss(q345_2) or miss(q345_3) or miss(q345_4) or miss(q345_5) or miss(q345_6) or miss(q345_7) or miss(q345_8) or miss(q345_9) or miss(q345_10) or miss(q345_11) or miss(q345_98) or miss(q345_97))) or ((q350_5=1 or q350_6=1) and (miss(q355) or ~range(q355,1,6))).
list respid, q310 q340 q345_1 q345_2 q345_3 q345_4 q345_5 q345_6 q345_7 q345_8 q345_9 q345_10 q345_11 q345_98 q345_97 q350_5 q350_6 q355.
tit b04 - Evaluation grid response domains.
temporary.
sel if miss(q325_1) or ~range(q325_1,1,3) or miss(q325_2) or ~range(q325_2,1,3) or miss(q325_3) or ~range(q325_3,1,3) or miss(q325_4) or ~range(q325_4,1,3) or miss(q325_5) or ~range(q325_5,1,3) or miss(q325_6) or ~range(q325_6,1,3) or miss(q325_7) or ~range(q325_7,1,3) or miss(q325_8) or ~range(q325_8,1,3) or miss(q325_9) or ~range(q325_9,1,3) or miss(q325_10) or ~range(q325_10,1,3) or miss(q325_11) or ~range(q325_11,1,3).
list respid, q325_1 q325_2 q325_3 q325_4 q325_5 q325_6 q325_7 q325_8 q325_9 q325_10 q325_11.
tit b04 - Conditional text linkage.
temporary.
sel if (q310=4 or q310=5) and (miss(q315) or q315="") or (q310=1 or q310=2) and (miss(q320) or q320="") or (q310<>4 and q310<>5 and q315<>"") or (q310<>1 and q310<>2 and q320<>"") or (q340=1 and q345_98=1 and (miss(q345_98_other) or q345_98_other="")) or (q340=1 and q345_98<>1 and q345_98_other<>"") or (q350_98=1 and (miss(q350_98_other) or q350_98_other="")) or (q350_98<>1 and q350_98_other<>"").
list respid, q310 q315 q320 q340 q345_98 q345_98_other q350_98 q350_98_other.
compute q305_test_flag=0.
if index(q305,"test")>0 or index(q305,"TEST")>0 or index(q305,"Test")>0 or index(q305,"?")>0 or index(q305,".")>0 q305_test_flag=1.
compute q315_test_flag=0.
if index(q315,"test")>0 or index(q315,"TEST")>0 or index(q315,"Test")>0 or index(q315,"?")>0 or index(q315,".")>0 q315_test_flag=1.
compute q320_test_flag=0.
if index(q320,"test")>0 or index(q320,"TEST")>0 or index(q320,"Test")>0 or index(q320,"?")>0 or index(q320,".")>0 q320_test_flag=1.
exe.
tit b04 - Open-text test-case review.
temporary.
sel if q305_test_flag=1 or q315_test_flag=1 or q320_test_flag=1.
list respid, q305 q305_test_flag q315 q315_test_flag q320 q320_test_flag.
del var q305_test_flag q315_test_flag q320_test_flag.

***************************************b05.

tit b05 - Demographic domains.
temporary.
sel if miss(d1) or ~ANY(d1,1,2,97) or miss(d2_1) or ~range(d2_1,0,100) or miss(d3) or ~range(d3,1,3) or miss(d4) or ~range(d4,1,3) or miss(d5) or ~range(d5,1,2).
list respid, d1 d2_1 d3 d4 d5.

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
