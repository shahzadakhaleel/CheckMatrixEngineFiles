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


* VALIDATION ERROR: Extraction validation: Block b11_dictionary_quality has unknown or absent question groups.

* VALIDATION ERROR: Block b01_screener: Block b01_screener assigns an undeclared temporary.

* VALIDATION ERROR: Block b08_ad_evaluation: Block b08_ad_evaluation assigns an undeclared temporary.

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

***************************************b01_screener.

tit SCREENER.
temporary.
sel if miss(ae1) or ~range(ae1,1,2).
list respid, ae1.
tit S2.
temporary.
sel if miss(s2) or ~range(s2,1,98).
list respid, s2.
tit S3.
temporary.
sel if miss(s3) or ~range(s3,1,2).
list respid, s3.
tit S4.
temporary.
sel if miss(s4) or ~range(s4,1,99).
list respid, s4.
tit S5.
temporary.
sel if miss(s5_1) or ~range(s5_1,0,100).
list respid, s5_1.
tit S6.
temporary.
sel if miss(s6_1) or ~range(s6_1,0,99).
list respid, s6_1.
do repeat x=s7_1 s7_2 s7_3 s7_4 s7_5 s7_6 s7_7.
compute flag=0.
if miss(x) or ~range(x,0,10000) flag=1.
end repeat.
tit S7.
temporary.
sel if flag=1.
list respid flag s7_1 s7_2 s7_3 s7_4 s7_5 s7_6 s7_7.
del var flag.
!Numeric ask=s8_1 opr== value=0 min=0 max=9999 myvars=s8_1.
!Numeric ask=s8_2 opr== value=0 min=0 max=9999 myvars=s8_2.
!Numeric ask=s9_1 opr== value=0 min=0 max=9999 myvars=s9_1.
!Numeric ask=s9_2 opr== value=0 min=0 max=9999 myvars=s9_2.
!Numeric ask=s9_3 opr== value=0 min=0 max=9999 myvars=s9_3.
!Numeric ask=s9_4 opr== value=0 min=0 max=9999 myvars=s9_4.
!Numeric ask=s9_98 opr== value=0 min=0 max=9999 myvars=s9_98.

***************************************b02_q105.

tit Q105.
temporary.
sel if q105_1="".
list respid, q105_1.

***************************************b03_q110_q115.

!Numeric ask=q110_1 opr== value=0 min=1 max=4 myvars=q110_1 q110_2 q110_3 q110_4 q110_5.
!Numeric ask=q115_1 opr== value=0 min=1 max=3 myvars=q115_1 q115_2 q115_3 q115_4 q115_5.

***************************************b04_q120_q125.

!Numeric ask=q120_1 opr== value=0 min=1 max=7 myvars=q120_1 q120_2 q120_3 q120_4 q120_5.
!Numeric ask=q125_1 opr== value=0 min=1 max=7 myvars=q125_1 q125_2 q125_3 q125_4 q125_5.

***************************************b05_q130.

!MULTI_B svar=q130_1_1 evar=q130_1_99 qnt=Q130_1 ctr=6.
!MULTI_B svar=q130_2_1 evar=q130_2_99 qnt=Q130_2 ctr=6.
!MULTI_B svar=q130_3_1 evar=q130_3_99 qnt=Q130_3 ctr=6.
!MULTI_B svar=q130_4_1 evar=q130_4_99 qnt=Q130_4 ctr=6.
!MULTI_B svar=q130_5_1 evar=q130_5_99 qnt=Q130_5 ctr=6.
!MULTI_B svar=q130_6_1 evar=q130_6_99 qnt=Q130_6 ctr=6.
!MULTI_B svar=q130_7_1 evar=q130_7_99 qnt=Q130_7 ctr=6.
!MULTI_B svar=q130_8_1 evar=q130_8_99 qnt=Q130_8 ctr=6.
!MULTI_B svar=q130_9_1 evar=q130_9_99 qnt=Q130_9 ctr=6.
!MULTI_B svar=q130_10_1 evar=q130_10_99 qnt=Q130_10 ctr=6.
!MULTI_B svar=q130_11_1 evar=q130_11_99 qnt=Q130_11 ctr=6.
!MULTI_B svar=q130_12_1 evar=q130_12_99 qnt=Q130_12 ctr=6.
!MULTI_B svar=q130_13_1 evar=q130_13_99 qnt=Q130_13 ctr=6.
!MULTI_B svar=q130_14_1 evar=q130_14_99 qnt=Q130_14 ctr=6.

***************************************b06_q135_q140.

!MULTI_B svar=q135_1 evar=q135_99 qnt=Q135 ctr=6.
!String ask=q137 opr=> value=0 myvars=q137.
!MULTI_B svar=q140_1 evar=q140_99 qnt=Q140 ctr=13.
!String ask=q140_98 opr== value=1 myvars=q140_98_other.

***************************************b07_blinded_recall.

!Numeric ask=q205 opr== value=0 min=1 max=2 myvars=q205.
!String ask=q210 opr=> value=0 myvars=q210.
!Numeric ask=q220 opr== value=0 min=1 max=99 myvars=q220.
!String ask=q220 opr== value=98 myvars=q220_98_other.
!MULTI_B svar=q230_1 evar=q230_99 qnt=Q230 ctr=13.
!Numeric ask=q240_1 opr== value=0 min=1 max=99 myvars=q240_1.
!String ask=q245 opr=> value=0 myvars=q245.
!MULTI_B svar=q250_1 evar=q250_99 qnt=Q250 ctr=9.
!MULTI_B svar=q255_1 evar=q255_99 qnt=Q255 ctr=10.
!String ask=q255_98 opr== value=1 myvars=q255_98_other.

***************************************b08_ad_evaluation.

tit Q305.
temporary.
sel if q305="".
list respid, q305.
tit Q310.
temporary.
sel if miss(q310) or ~range(q310,1,5).
list respid, q310.
tit Q315.
temporary.
sel if q315="" and q310>=4.
list respid, q310 q315.
tit Q320.
temporary.
sel if q320="" and q310<=2.
list respid, q310 q320.
do repeat x=q325_1 q325_2 q325_3 q325_4 q325_5 q325_11 q325_6 q325_7 q325_8 q325_9 q325_10.
compute flag=0.
if miss(x) or ~range(x,1,3) flag=1.
end repeat.
tit Q325.
temporary.
sel if flag=1.
list respid flag q325_1 q325_2 q325_3 q325_4 q325_5 q325_11 q325_6 q325_7 q325_8 q325_9 q325_10.
del var flag.

***************************************b09_ad_recall_followup.

!Numeric ask=q340 opr== value=0 min=1 max=2 myvars=q340.
!MULTI_B svar=q345_1 evar=q345_97 qnt=Q345 ctr=13.
!MULTI_B svar=q350_1 evar=q350_10 qnt=Q350 ctr=10.
!Numeric ask=q355 opr== value=0 min=1 max=6 myvars=q355.

***************************************b10_demographics.

!Numeric ask=d1 opr== value=0 min=1 max=97 myvars=d1.
!Numeric ask=d2_1 opr== value=0 min=0 max=100 myvars=d2_1.
!Numeric ask=d3 opr== value=0 min=1 max=3 myvars=d3.
!Numeric ask=d4 opr== value=0 min=1 max=3 myvars=d4.
!Numeric ask=d5 opr== value=0 min=1 max=2 myvars=d5.

***************************************b11_dictionary_quality.

tit DICTIONARY QUALITY.
temporary.
sel if miss(responseid).
list respid responseid.
temporary.
sel if miss(status).
list respid status.

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
