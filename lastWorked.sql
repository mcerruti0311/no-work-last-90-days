SELECT Employee__r.Employee_Number__c,
  MAX(Out_Time_Accepted__c)
FROM Unified_Time_Management__c
WHERE Employee__r.Employment_Status__c = 'Active'
  AND Salary_Hourly__c = 'Hourly'
  AND Employee__r.Master_Job_Code_For_Time_Keeping__r.Name =
    '57000 - Talent Management'
GROUP BY Employee__r.Employee_Number__c
