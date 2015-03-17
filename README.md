# Fit-Analysis v2.2
Application that determines whether an application is a good fit for SFDC platform.

History
-------------------------------------------
03/16	Sandip Dhara	Created v2.2
-------------------------------------------

Changes in Version 2.2 from 1.0
-------------------------------------------
1. Removed master-detail relationship to Milestone1_Project object
2. Updated page layout to correspond to object definition provided in original file. Fields were renamed in page layouts, but not reflected in object definition.
3. Updated workflow rule to correspond to object definition provided update repository. Fields were renamed, but not reflected in workflow rule.
4. Added new fields for application name, description, analysis date.
5. Added new fields for maximum possible score and fit percentage
6. Created workflow rule to calculate maximum possible score (Categories with weight of 0 are excluded from analysis)
7. Added new fields for category status to represent responses with traffic light icon
8. Added list views
9. Added 3 simple reports
10. Created tab for FitAnalysis
11. Created app for FitAnalysis
12. Created permission set, FitAnalysis User. If you don't see the new app and tab, add the permission set to your login

 
