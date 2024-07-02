** Below is the Stata code used for the zonal difference-in-difference analysis **

// Labor Yearly Regressions // 

// Connecticut Zonal Analysis // 
*Data Setup*
clear all 
import excel "\Users\averyatencio\Documents\Master's Thesis\Labor Term Paper\Labor Code\Final Excels\CT_Combined_Yearly.xlsx", firstrow clear 
encode State, gen(state_num)
encode County, gen(county_num)
gen shooting = (county_num== 7)
gen postt = Year >= 2013
gen post2 = Year >= 2012
gen shootpost = shooting*postt
gen shootpost2 = shooting*post2


// EMPLOYMENT RATE //
//50 mi Employment Rate Regression // 
reg emp_rate_adj shooting postt shootpost i.county_num i.Year popden income OADR CCR POC if Year >= 2010 & Year <=2015 & within_50mi ==1, cluster(County) 
outreg2 using "CT_inpaper_EmpEstimation.doc", replace title("Employment Rate Conneticut Zonal Regressions") keep (shooting postt shootpost popden income OADR CCR POC) 

reg emp_rate_adj shooting postt shootpost i.county_num i.Year popden income OADR CCR POC if Year >= 2010 & Year <=2015 & within_50mi ==1, cluster(County) 
outreg2 using "CT_fulltable_EmpEstimation.doc", replace title("Full Employment Rate Conneticut Zonal Regressions")

** ROBUSTNESS : CT 50MILE ** 
reg emp_rate_adj shooting post2 shootpost2 i.county_num i.Year popden income OADR CCR POC if Year >= 2009 & Year <=2014 & within_50mi ==1, cluster(County) 
outreg2 using "RCCT_inpaper_EmpEstimation.doc", replace title("Employment Rate Conneticut Zonal Regressions") keep (shooting postt shootpost popden income OADR CCR POC) 


reg emp_rate_adj shooting post2 shootpost2 i.county_num i.Year popden income OADR CCR POC if Year >= 2009 & Year <=2014 & within_50mi ==1, cluster(County) 
outreg2 using "RCCT_fulltable_EmpEstimation.doc", replace title("Full Employment Rate Conneticut Zonal Regressions")

*************************************************************************
// 100 mi Employment Rate Regression // 
reg emp_rate_adj shooting postt shootpost i.county_num i.Year popden income OADR CCR POC if Year >= 2010 & Year <=2015 & within_100mi == 1, cluster(County)
outreg2 using "CT_inpaper_EmpEstimation.doc", append title("Employment Rate Conneticut Zonal Regressions") keep (shooting postt shootpost popden income OADR CCR POC) 

reg emp_rate_adj shooting postt shootpost i.county_num i.Year popden income OADR CCR POC if Year >= 2010 & Year <=2015 & within_100mi == 1, cluster(County)
outreg2 using "CT_fulltable_EmpEstimation.doc", append title(" Full Employment Rate Conneticut Zonal Regressions")

** ROBUSTNESS: 100MILES ** 
reg emp_rate_adj shooting post2 shootpost2 i.county_num i.Year popden income OADR CCR POC if Year >= 2009 & Year <=2014 & within_100mi == 1, cluster(County)
outreg2 using "RCCT_inpaper_EmpEstimation.doc", append title("Employment Rate Conneticut Zonal Regressions") keep (shooting postt shootpost popden income OADR CCR POC) 

reg emp_rate_adj shooting post2 shootpost2 i.county_num i.Year popden income OADR CCR POC if Year >= 2009 & Year <=2014 & within_100mi == 1, cluster(County)
outreg2 using "RCCT_fulltable_EmpEstimation.doc", append title("Full Employment Rate Conneticut Zonal Regressions")

*************************************************************************
// UNEMPLOYMENT RATE //
// 50 mi Unemployment Rate Regression // 
reg unemp_rate_adj shooting postt shootpost i.county_num i.Year popden income OADR CCR POC if Year >= 2010 & Year <=2015 & within_50mi ==1, cluster(County) 
outreg2 using "CT_inpaper_UnempEstimation.doc", replace title("Unemployment Rate Conneticut Zonal Regressions") keep (shooting postt shootpost popden income OADR CCR POC)

reg unemp_rate_adj shooting postt shootpost i.county_num i.Year popden income OADR CCR POC if Year >= 2010 & Year <=2015 & within_50mi ==1, cluster(County) 
outreg2 using "CT_fulltable_UnempEstimation.doc", replace title(" Full Unemployment Rate Conneticut Zonal Regressions")

** ROBUSTNESS: 50MI ** 
reg unemp_rate_adj shooting post2 shootpost2 i.county_num i.Year popden income OADR CCR POC if Year >= 2009 & Year <=2014 & within_50mi == 1, cluster(County)
outreg2 using "RCCT_inpaper_UnempEstimation.doc", replace title("Unemployment Rate Conneticut Zonal Regressions") keep (shooting postt shootpost popden income OADR CCR POC)

reg unemp_rate_adj shooting post2 shootpost2 i.county_num i.Year popden income OADR CCR POC if Year >= 2009 & Year <=2014 & within_50mi == 1, cluster(County)
outreg2 using "RCCT_fulltable_UnempEstimation.doc", replace title(" Full Unemployment Rate Conneticut Zonal Regressions")

*************************************************************************
// 100 mi Unemployment Rate Regression // 
reg unemp_rate_adj shooting postt shootpost i.county_num i.Year popden income OADR CCR POC if Year >= 2010 & Year <=2015 & within_100mi ==1, cluster(County) 
outreg2 using "CT_inpaper_UnempEstimation.doc", append title("Unemployment Rate Conneticut Zonal Regressions") keep (shooting postt shootpost popden income OADR CCR POC)

reg unemp_rate_adj shooting postt shootpost i.county_num i.Year popden income OADR CCR POC if Year >= 2010 & Year <=2015 & within_100mi ==1, cluster(County)
outreg2 using "CT_fulltable_UnempEstimation.doc", append title(" Full Unemployment Rate Conneticut Zonal Regressions")

** ROBUSTNESS: 100MI ** 
reg unemp_rate_adj shooting post2 shootpost2 i.county_num i.Year popden income OADR CCR POC if Year >= 2009 & Year <=2014 & within_100mi == 1, cluster(County)
outreg2 using "RCCT_inpaper_UnempEstimation.doc", append title("Unemployment Rate Conneticut Zonal Regressions") keep (shooting postt shootpost popden income OADR CCR POC)

reg unemp_rate_adj shooting post2 shootpost2 i.county_num i.Year popden income OADR CCR POC if Year >= 2009 & Year <=2014 & within_100mi == 1, cluster(County)
outreg2 using "RCCT_fulltable_UnempEstimation.doc", append title(" Full Unemployment Rate Conneticut Zonal Regressions")

********************************************************************
// LFPR // 
// 50 mi LFPR Regression // 
reg LFPR shooting postt shootpost i.county_num i.Year popden income OADR CCR POC if Year >= 2010 & Year <=2015 & within_50mi == 1, cluster(County)
outreg2 using "CT_inpaper_LFPREstimation.doc", replace title("LFPR Conneticut Zonal Regressions") keep (shooting postt shootpost popden income OADR CCR POC) 

reg LFPR shooting postt shootpost i.county_num i.Year popden income OADR CCR POC if Year >= 2010 & Year <=2015 & within_50mi == 1, cluster(County)
outreg2 using "CT_fulltable_LFPREstimation.doc", replace title(" Full LFPR Conneticut Zonal Regressions")

** ROBUSTNESS: 50MI ** 
reg LFPR shooting post2 shootpost2 i.county_num i.Year popden income OADR CCR POC if Year >= 2009 & Year <=2014 & within_50mi == 1, cluster(County)
outreg2 using "RCCT_inpaper_LFPREstimation.doc", replace title("LFPR Conneticut Zonal Regressions") keep (shooting postt shootpost popden income OADR CCR POC) 

reg LFPR shooting post2 shootpost2 i.county_num i.Year popden income OADR CCR POC if Year >= 2009 & Year <=2014 & within_50mi == 1, cluster(County)
outreg2 using "RCCT_fulltable_LFPREstimation.doc", replace title(" Full LFPR Conneticut Zonal Regressions")

*************************************************************************
// 100 mi LFPR Regression // 
reg LFPR shooting postt shootpost i.county_num i.Year popden income OADR CCR POC if Year >= 2010 & Year <=2015 & within_100mi == 1, cluster(County)
outreg2 using "CT_inpaper_LFPREstimation.doc", append title("LFPR Conneticut Zonal Regressions") keep (shooting postt shootpost popden income OADR CCR POC)

reg LFPR shooting postt shootpost i.county_num i.Year popden income OADR CCR POC if Year >= 2010 & Year <=2015 & within_100mi == 1, cluster(County)
outreg2 using "CT_fulltable_LFPREstimation.doc", append title(" Full LFPR Conneticut Zonal Regressions")

** ROBUSTNESS: 100MI ** 
reg LFPR shooting post2 shootpost2 i.county_num i.Year popden income OADR CCR POC if Year >= 2009 & Year <=2014 & within_100mi == 1, cluster(County)
outreg2 using "RCCT_inpaper_LFPREstimation.doc", append title("LFPR Conneticut Zonal Regressions") keep (shooting postt shootpost popden income OADR CCR POC) 

reg LFPR shooting post2 shootpost2 i.county_num i.Year popden income OADR CCR POC if Year >= 2009 & Year <=2014 & within_100mi == 1, cluster(County)
outreg2 using "RCCT_fulltable_LFPREstimation.doc", append title(" Full LFPR Conneticut Zonal Regressions")


** To ensure isolation of effects ** 
// OADR // 
reg OADR shooting postt shootpost i.county_num i.Year popden income CCR POC if Year >= 2010 & Year <=2015 & within_50mi ==1, cluster(County)
outreg2 using "CTOADR.doc", replace title("Conneticut Isolation Regressions") keep (shooting postt shootpost popden income CCR POC) 


// Housing Permits // 
reg Housing_Permits shooting postt shootpost i.county_num i.Year popden income OADR CCR POC if Year >= 2010 & Year <=2015 & within_50mi ==1, cluster(County)
outreg2 using "CTOADR.doc", append title("Conneticut Isolation Regressions") keep (shooting postt shootpost popden income OADR CCR POC) 

// CCR // 
reg CCR shooting postt shootpost i.county_num i.Year popden income POC OADR if Year >= 2010 & Year <=2015 & within_50mi ==1, cluster(County)
outreg2 using "CTOADR.doc", append title("Conneticut Isolation Regressions") keep (shooting postt shootpost popden income OADR POC) 

** Further Tests of CCR: Omission of CCR in Significant Shootposts ** 
// 50 mi Employment // 
reg emp_rate_adj shooting postt shootpost i.state_num i.county_num i.Year popden income OADR POC if Year >= 2010 & Year <=2015 & within_50mi ==1, cluster(County) 
outreg2 using "RC_inpaper_omissionstimation.doc", replace title(" Conneticut/Texas Omission Regressions") keep (shooting postt shootpost popden income OADR POC) 

// 100 mi Employment // 
reg emp_rate_adj shooting postt shootpost i.state_num i.county_num i.Year popden income OADR POC if Year >= 2010 & Year <=2015 & within_100mi ==1, cluster(County) 
outreg2 using "RC_inpaper_omissionstimation.doc", append title(" Conneticut/Texas Omission Regressions") keep (shooting postt shootpost popden income OADR POC) 


************************************************************************



// TEXAS// 
// Santa Fe Regression // 
clear all 
import excel "\Users\averyatencio\Documents\Master's Thesis\Labor Term Paper\Labor Code\Final Excels\TX_Total_Yearly.xlsx", firstrow clear
encode State, gen(state_num)
encode County, gen(county_num)
gen shooting = (county_num==6 )
gen postt = Year >= 2018 
gen post2 = Year >= 2019
gen shootpost = shooting*postt
gen shootpost2 = shooting*post2


// EMPLOYMENT RATE // 
// 50mi Employment Rate Regression // 
reg emp_rate_adj shooting postt shootpost i.county_num i.Year popden income OADR CCR POC if Year >= 2015 & Year <=2020 & within_50mi ==1, cluster(County) 
outreg2 using "TX_inpaper_EmpEstimation.doc", replace title("Employment Rate Texas Zonal Regressions") keep (shooting postt shootpost popden income OADR CCR POC) 

reg emp_rate_adj shooting postt shootpost i.county_num i.Year popden income OADR CCR POC if Year >= 2015 & Year <=2020 & within_50mi ==1, cluster(County) 
outreg2 using "TX_fulltable_EmpEstimation.doc", replace title("Full Employment Rate Texas Zonal Regressions") 

** ROBUSTNESS : 50MI ** 
reg emp_rate_adj shooting post2 shootpost2 i.county_num i.Year popden income OADR CCR POC if Year >= 2016 & Year <=2021 & within_50mi ==1, cluster(County) 
outreg2 using "RCTX_inpaper_EmpEstimation.doc", replace title("Employment Rate Texas Zonal Regressions") keep (shooting postt shootpost popden income OADR CCR POC) 

reg emp_rate_adj shooting post2 shootpost2 i.county_num i.Year popden income OADR CCR POC if Year >= 2016 & Year <=2021 & within_50mi ==1, cluster(County) 
outreg2 using "RCTX_fulltable_EmpEstimation.doc", replace title("Full Employment Rate Texas Zonal Regressions") 

*************************************************************************
// 100 mi Employment Rate Regression // 
reg emp_rate_adj shooting postt shootpost i.county_num i.Year popden income OADR CCR POC if Year >= 2015 & Year <=2020 & within_100mi== 1, cluster(County)
outreg2 using "TX_inpaper_EmpEstimation.doc", append title("Employment Rate Texas Zonal Regressions") keep (shooting postt shootpost popden income OADR CCR POC) 

reg emp_rate_adj shooting postt shootpost i.county_num i.Year popden income OADR CCR POC if Year >= 2015 & Year <=2020 & within_100mi== 1, cluster(County)
outreg2 using "TX_fulltable_EmpEstimation.doc", append title("Full Employment Rate Texas Zonal Regressions") 

** ROBUSTNESS: 100MI ** 
reg emp_rate_adj shooting post2 shootpost2 i.county_num i.Year popden income OADR CCR POC if Year >= 2016 & Year <=2021 & within_100mi ==1, cluster(County) 
outreg2 using "RCTX_inpaper_EmpEstimation.doc", append title("Employment Rate Texas Zonal Regressions") keep (shooting postt shootpost popden income OADR CCR POC) 

reg emp_rate_adj shooting post2 shootpost2 i.county_num i.Year popden income OADR CCR POC if Year >= 2016 & Year <=2021 & within_100mi ==1, cluster(County) 
outreg2 using "RCTX_fulltable_EmpEstimation.doc", append title("Full Employment Rate Texas Zonal Regressions") 

*************************************************************************
// UNEMPLOYMENT RATE // 
// 50mi Unemployment Rate Regression // 
reg unemp_rate_adj shooting postt shootpost i.county_num i.Year popden income OADR CCR POC if Year >= 2015 & Year <=2020 & within_50mi ==1, cluster(County) 
outreg2 using "TX_inpaper_UnempEstimation.doc", replace title("Unemployment Rate Texas Zonal Regressions") keep (shooting postt shootpost popden income OADR CCR POC) 

reg unemp_rate_adj shooting postt shootpost i.county_num i.Year popden income OADR CCR POC if Year >= 2015 & Year <=2020 & within_50mi ==1, cluster(County) 
outreg2 using "TX_fulltable_UnempEstimation.doc", replace title("Full Unemployment Rate Texas Zonal Regressions")

** ROBUSTNESS: 50 MI ** 
reg unemp_rate_adj shooting post2 shootpost2 i.county_num i.Year popden income OADR CCR POC if Year >= 2016 & Year <=2021 & within_50mi ==1, cluster(County) 
outreg2 using "RCTX_inpaper_UnempEstimation.doc", replace title("Unemployment Rate Texas Zonal Regressions") keep (shooting postt shootpost popden income OADR CCR POC) 

reg unemp_rate_adj shooting post2 shootpost2 i.county_num i.Year popden income OADR CCR POC if Year >= 2016 & Year <=2021 & within_50mi ==1, cluster(County) 
outreg2 using "RCTX_fulltable_UnempEstimation.doc", replace title("Full Unemployment Rate Texas Zonal Regressions")

*************************************************************************
// 100mi Unemployment Rate Regression // 
reg unemp_rate_adj shooting postt shootpost i.county_num i.Year popden income OADR CCR POC if Year >= 2015 & Year <=2020 & within_100mi ==1, cluster(County) 
outreg2 using "TX_inpaper_UnempEstimation.doc", append title("Unemployment Rate Texas Zonal Regressions") keep (shooting postt shootpost popden income OADR CCR POC ) 

reg unemp_rate_adj shooting postt shootpost i.county_num i.Year popden income OADR CCR POC if Year >= 2015 & Year <=2020 & within_100mi ==1, cluster(County) 
outreg2 using "TX_fulltable_UnempEstimation.doc", append title("Full Unemployment Rate Texas Zonal Regressions")

** ROBUSTNESS: 100MI ** 
reg unemp_rate_adj shooting post2 shootpost2 i.county_num i.Year popden income OADR CCR POC if Year >= 2016 & Year <=2021 & within_100mi ==1, cluster(County)
outreg2 using "RCTX_inpaper_UnempEstimation.doc", append title("Unemployment Rate Texas Zonal Regressions") keep (shooting postt shootpost popden income OADR CCR POC )

reg unemp_rate_adj shooting post2 shootpost2 i.county_num i.Year popden income OADR CCR POC if Year >= 2016 & Year <=2021 & within_100mi ==1, cluster(County)
outreg2 using "RCTX_fulltable_UnempEstimation.doc", append title("Full Unemployment Rate Texas Zonal Regressions")

*************************************************************************
// 50mi LFPR Regression // 
reg LFPR shooting postt shootpost i.county_num i.Year popden income OADR CCR POC if Year >= 2015 & Year <=2020 & within_50mi ==1, cluster(County) 
outreg2 using "TX_inpaper_LFPREstimation.doc", replace title("LFPR Texas Zonal Regressions") keep (shooting postt shootpost popden income OADR CCR POC) 

reg LFPR shooting postt shootpost i.county_num i.Year popden income OADR CCR POC if Year >= 2015 & Year <=2020 & within_50mi ==1, cluster(County) 
outreg2 using "TX_fulltable_LFPREstimation.doc", replace title("Full LFPR Texas Zonal Regressions")

** ROBUSTNESS: 50MI ** 
reg LFPR shooting post2 shootpost2 i.county_num i.Year popden income OADR CCR POC if Year >= 2016 & Year <=2021 & within_50mi ==1, cluster(County)
outreg2 using "RCTX_inpaper_LFPREstimation.doc", replace title("LFPR Texas Zonal Regressions") keep (shooting postt shootpost popden income OADR CCR POC)

reg LFPR shooting post2 shootpost2 i.county_num i.Year popden income OADR CCR POC if Year >= 2016 & Year <=2021 & within_50mi ==1, cluster(County)
outreg2 using "RCTX_fulltable_LFPREstimation.doc", replace title("Full LFPR Texas Zonal Regressions")

********************************************************************************
// 100mi LFPR Regression //
reg LFPR shooting postt shootpost i.county_num i.Year popden income OADR CCR POC if Year >= 2015 & Year <=2020 & within_100mi ==1, cluster(County) 
outreg2 using "TX_inpaper_LFPREstimation.doc", append title("LFPR Texas Zonal Regressions") keep (shooting postt shootpost popden income OADR CCR POC) 

reg LFPR shooting postt shootpost i.county_num i.Year popden income OADR CCR POC if Year >= 2015 & Year <=2020 & within_100mi ==1, cluster(County) 
outreg2 using "TX_fulltable_LFPREstimation.doc", append title("Full LFPR Texas Zonal Regressions")

** ROBUSTNESS: 100MI ** 
reg LFPR shooting post2 shootpost2 i.county_num i.Year popden income OADR CCR POC if Year >= 2016 & Year <=2021 & within_100mi ==1, cluster(County)
outreg2 using "RCTX_inpaper_LFPREstimation.doc", append title("LFPR Texas Zonal Regressions") keep (shooting postt shootpost popden income OADR CCR POC)

reg LFPR shooting post2 shootpost2 i.county_num i.Year popden income OADR CCR POC if Year >= 2016 & Year <=2021 & within_100mi ==1, cluster(County)
outreg2 using "RCTX_fulltable_LFPREstimation.doc", append title("Full LFPR Texas Zonal Regressions")



** To ensure isolation of effects ** 
 // OADR // 
reg OADR shooting postt shootpost i.county_num i.Year popden income CCR POC if Year >= 2015 & Year <=2020 & within_100mi ==1, cluster(County) 
 outreg2 using "TXOADR.doc", replace title("Texas Isolation Regressions") keep (shooting postt shootpost popden income CCR POC) 
 
// Housing Permits // 
 reg Housing_Permits shooting postt shootpost i.county_num i.Year popden income  OADR CCR POC if Year >= 2015 & Year <=2020 & within_100mi ==1, cluster(County) 
 outreg2 using "TXOADR.doc", append title("Texas Isolation Regressions") keep (shooting postt shootpost popden income OADR CCR POC) 
 
// CCR // 
 reg CCR shooting postt shootpost i.county_num i.Year popden income POC OADR  if Year >= 2015 & Year <=2020 & within_100mi ==1, cluster(County) 
outreg2 using "TXOADR.doc", append title("Texas Isolation Regressions") keep (shooting postt shootpost popden income OADR POC) 

 ** Further Tests of CCR: Omission of CCR in Significant Shootposts ** 
// 100 mi Employment // 
reg emp_rate_adj shooting postt shootpost i.county_num i.Year popden income OADR POC if Year >= 2015 & Year <=2020 & within_100mi ==1, cluster(County) 
outreg2 using "RC_inpaper_omissionstimation.doc", append title(" Conneticut/Texas Omission Regressions") keep (shooting postt shootpost popden income OADR POC) 

// 100 mi Unemployment // 
reg unemp_rate_adj shooting postt shootpost i.county_num i.Year popden income OADR POC if Year >= 2015 & Year <=2020 & within_100mi ==1, cluster(County)  
outreg2 using "RC_inpaper_omissionstimation.doc", append title(" Conneticut/Texas Omission Regressions") keep (shooting postt shootpost popden income OADR POC) 

*************************************************************************
