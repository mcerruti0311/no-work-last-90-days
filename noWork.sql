SELECT Employee_Number__c,
  Last_Hire_Date__c,
  Master_Job_Code_For_Time_Keeping__r.Name,
  Name,
  State_City_From_UltiPro__c,
  Title
FROM Contact
WHERE Id NOT IN
  (
    SELECT Employee__c
    FROM Unified_Time_Management__c
    WHERE In_Time_Accepted__c = LAST_N_DAYS:90
  )
  AND Employment_Status__c = 'Active'
  AND RecordType.Name = 'SIS Employee'
  AND Salary_or_Hourly__c = 'Hourly'
  AND Last_Hire_Date__c < LAST_N_DAYS: 30
  AND Master_Job_Code_For_Time_Keeping__r.Name = '57000 - Talent Management'
ORDER BY Employee_Number__c
