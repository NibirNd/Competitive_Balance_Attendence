**Get the summary statistic of the dependent Variable, Attendence**

sum Attendence

**summary statistic for all the variables(dependent and independent)**

sum Attendence CV RGDP Revenue MatchdayRevenue Recession

**Regress Attendence CV RGDP Revenue MatchdayRevenue Recession **

reg Attendence CV RGDP Revenue MatchdayRevenue Recession

**Regress all the previous variales controlling for the dummy variable "Recession"**

reg Attendence CV RGDP Revenue MatchdayRevenue Recession recessionxCV recessionxRGDP RecessionxRevenue RecessionxMatchdayRevenue

**F-test for the dummy and interaction variables to test for significane**

test Recession RecessionxMatchdayRevenue RecessionxRevenue recessionxRGDP recessionxCV

**Reset test to check for any specification error**
reg Attendence CV RGDP Revenue MatchdayRevenue Recession
ovtest

**Breusch-Pagan test to detect heteroskedasticity**

estat hettest CV RGDP Revenue MatchdayRevenue Recession recessionxCV recessionxRGDP RecessionxRevenue RecessionxMatchdayRevenue,fstat

**LM-Statistic**

estat hettest CV RGDP Revenue MatchdayRevenue Recession recessionxCV recessionxRGDP RecessionxRevenue RecessionxMatchdayRevenue,iid

**white-Test**

estat hettest, fstat
estat hettest, iid

**Heteroskedasticity-robust std. Error**

reg Attendence CV RGDP Revenue MatchdayRevenue Recession recessionxCV recessionxRGDP RecessionxRevenue RecessionxMatchdayRevenue,vce(hc3)


**Chow-Test- Regress the following codel and compare the restricted and unrestricted model**

reg Attendence CV RGDP Revenue MatchdayRevenue
reg Attendence CV RGDP Revenue MatchdayRevenue if Recession==1
reg Attendence CV RGDP Revenue MatchdayRevenue if Recession==0

