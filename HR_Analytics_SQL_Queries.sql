-- =========================================================
-- HR ANALYTICS EMPLOYEE ATTRITION PROJECT - SQL QUERIES
-- Project: HR Analytics Dashboard
-- Tools Used: SQL + Power BI + Excel
-- =========================================================


-- =========================================================
-- 1. TOTAL EMPLOYEES
-- =========================================================
SELECT COUNT(*) AS Total_Employees
FROM "WA_Fn-UseC_-HR-Employee-Attrition";


-- =========================================================
-- 2. ATTRITION COUNT
-- =========================================================
SELECT COUNT(*) AS Attrition_Count
FROM "WA_Fn-UseC_-HR-Employee-Attrition"
WHERE Attrition = 'Yes';


-- =========================================================
-- 3. ATTRITION RATE
-- =========================================================
SELECT 
    ROUND(
        (COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END) * 100.0) / COUNT(*),
        2
    ) AS Attrition_Rate_Percentage
FROM "WA_Fn-UseC_-HR-Employee-Attrition";


-- =========================================================
-- 4. AVERAGE AGE
-- =========================================================
SELECT ROUND(AVG(Age), 2) AS Average_Age
FROM "WA_Fn-UseC_-HR-Employee-Attrition";


-- =========================================================
-- 5. AVERAGE MONTHLY INCOME
-- =========================================================
SELECT ROUND(AVG(MonthlyIncome), 2) AS Average_Monthly_Income
FROM "WA_Fn-UseC_-HR-Employee-Attrition";


-- =========================================================
-- 6. ATTRITION BY DEPARTMENT
-- =========================================================
SELECT 
    Department,
    COUNT(*) AS Attrition_Count
FROM "WA_Fn-UseC_-HR-Employee-Attrition"
WHERE Attrition = 'Yes'
GROUP BY Department
ORDER BY Attrition_Count DESC;


-- =========================================================
-- 7. ATTRITION BY JOB ROLE
-- =========================================================
SELECT 
    JobRole,
    COUNT(*) AS Attrition_Count
FROM "WA_Fn-UseC_-HR-Employee-Attrition"
WHERE Attrition = 'Yes'
GROUP BY JobRole
ORDER BY Attrition_Count DESC;


-- =========================================================
-- 8. ATTRITION BY GENDER
-- =========================================================
SELECT 
    Gender,
    COUNT(*) AS Attrition_Count
FROM "WA_Fn-UseC_-HR-Employee-Attrition"
WHERE Attrition = 'Yes'
GROUP BY Gender
ORDER BY Attrition_Count DESC;


-- =========================================================
-- 9. ATTRITION BY MARITAL STATUS
-- =========================================================
SELECT 
    MaritalStatus,
    COUNT(*) AS Attrition_Count
FROM "WA_Fn-UseC_-HR-Employee-Attrition"
WHERE Attrition = 'Yes'
GROUP BY MaritalStatus
ORDER BY Attrition_Count DESC;


-- =========================================================
-- 10. ATTRITION BY OVERTIME
-- =========================================================
SELECT 
    OverTime,
    COUNT(*) AS Attrition_Count
FROM "WA_Fn-UseC_-HR-Employee-Attrition"
WHERE Attrition = 'Yes'
GROUP BY OverTime
ORDER BY Attrition_Count DESC;


-- =========================================================
-- 11. ATTRITION BY BUSINESS TRAVEL
-- =========================================================
SELECT 
    BusinessTravel,
    COUNT(*) AS Attrition_Count
FROM "WA_Fn-UseC_-HR-Employee-Attrition"
WHERE Attrition = 'Yes'
GROUP BY BusinessTravel
ORDER BY Attrition_Count DESC;


-- =========================================================
-- 12. ATTRITION BY EDUCATION FIELD
-- =========================================================
SELECT 
    EducationField,
    COUNT(*) AS Attrition_Count
FROM "WA_Fn-UseC_-HR-Employee-Attrition"
WHERE Attrition = 'Yes'
GROUP BY EducationField
ORDER BY Attrition_Count DESC;


-- =========================================================
-- 13. ATTRITION BY JOB SATISFACTION
-- =========================================================
SELECT 
    JobSatisfaction,
    COUNT(*) AS Attrition_Count
FROM "WA_Fn-UseC_-HR-Employee-Attrition"
WHERE Attrition = 'Yes'
GROUP BY JobSatisfaction
ORDER BY JobSatisfaction;


-- =========================================================
-- 14. ATTRITION BY ENVIRONMENT SATISFACTION
-- =========================================================
SELECT 
    EnvironmentSatisfaction,
    COUNT(*) AS Attrition_Count
FROM "WA_Fn-UseC_-HR-Employee-Attrition"
WHERE Attrition = 'Yes'
GROUP BY EnvironmentSatisfaction
ORDER BY EnvironmentSatisfaction;


-- =========================================================
-- 15. ATTRITION BY WORK-LIFE BALANCE
-- =========================================================
SELECT 
    WorkLifeBalance,
    COUNT(*) AS Attrition_Count
FROM "WA_Fn-UseC_-HR-Employee-Attrition"
WHERE Attrition = 'Yes'
GROUP BY WorkLifeBalance
ORDER BY WorkLifeBalance;


-- =========================================================
-- 16. ATTRITION BY JOB INVOLVEMENT
-- =========================================================
SELECT 
    JobInvolvement,
    COUNT(*) AS Attrition_Count
FROM "WA_Fn-UseC_-HR-Employee-Attrition"
WHERE Attrition = 'Yes'
GROUP BY JobInvolvement
ORDER BY JobInvolvement;


-- =========================================================
-- 17. ATTRITION BY PERFORMANCE RATING
-- =========================================================
SELECT 
    PerformanceRating,
    COUNT(*) AS Attrition_Count
FROM "WA_Fn-UseC_-HR-Employee-Attrition"
WHERE Attrition = 'Yes'
GROUP BY PerformanceRating
ORDER BY PerformanceRating;


-- =========================================================
-- 18. ATTRITION BY AGE GROUP
-- =========================================================
SELECT 
    CASE 
        WHEN Age BETWEEN 18 AND 25 THEN '18-25'
        WHEN Age BETWEEN 26 AND 35 THEN '26-35'
        WHEN Age BETWEEN 36 AND 45 THEN '36-45'
        ELSE '46+'
    END AS Age_Group,
    COUNT(*) AS Attrition_Count
FROM "WA_Fn-UseC_-HR-Employee-Attrition"
WHERE Attrition = 'Yes'
GROUP BY Age_Group
ORDER BY Attrition_Count DESC;


-- =========================================================
-- 19. ATTRITION BY EXPERIENCE GROUP (YearsAtCompany)
-- =========================================================
SELECT 
    CASE 
        WHEN YearsAtCompany <= 2 THEN '0-2 Years'
        WHEN YearsAtCompany <= 5 THEN '3-5 Years'
        WHEN YearsAtCompany <= 10 THEN '6-10 Years'
        ELSE '10+ Years'
    END AS Experience_Group,
    COUNT(*) AS Attrition_Count
FROM "WA_Fn-UseC_-HR-Employee-Attrition"
WHERE Attrition = 'Yes'
GROUP BY Experience_Group
ORDER BY Attrition_Count DESC;


-- =========================================================
-- 20. ATTRITION BY SALARY BAND
-- =========================================================
SELECT 
    CASE 
        WHEN MonthlyIncome < 5000 THEN 'Low'
        WHEN MonthlyIncome BETWEEN 5000 AND 10000 THEN 'Medium'
        ELSE 'High'
    END AS Salary_Band,
    COUNT(*) AS Attrition_Count
FROM "WA_Fn-UseC_-HR-Employee-Attrition"
WHERE Attrition = 'Yes'
GROUP BY Salary_Band
ORDER BY Attrition_Count DESC;


-- =========================================================
-- 21. DEPARTMENT-WISE TOTAL EMPLOYEES
-- =========================================================
SELECT 
    Department,
    COUNT(*) AS Total_Employees
FROM "WA_Fn-UseC_-HR-Employee-Attrition"
GROUP BY Department
ORDER BY Total_Employees DESC;


-- =========================================================
-- 22. JOB ROLE-WISE TOTAL EMPLOYEES
-- =========================================================
SELECT 
    JobRole,
    COUNT(*) AS Total_Employees
FROM "WA_Fn-UseC_-HR-Employee-Attrition"
GROUP BY JobRole
ORDER BY Total_Employees DESC;


-- =========================================================
-- 23. AVERAGE SALARY BY DEPARTMENT
-- =========================================================
SELECT 
    Department,
    ROUND(AVG(MonthlyIncome), 2) AS Avg_Monthly_Income
FROM "WA_Fn-UseC_-HR-Employee-Attrition"
GROUP BY Department
ORDER BY Avg_Monthly_Income DESC;


-- =========================================================
-- 24. AVERAGE SALARY BY JOB ROLE
-- =========================================================
SELECT 
    JobRole,
    ROUND(AVG(MonthlyIncome), 2) AS Avg_Monthly_Income
FROM "WA_Fn-UseC_-HR-Employee-Attrition"
GROUP BY JobRole
ORDER BY Avg_Monthly_Income DESC;


-- =========================================================
-- 25. EMPLOYEES WHO LEFT AND WORKED OVERTIME
-- =========================================================
SELECT 
    EmployeeNumber,
    JobRole,
    Department,
    MonthlyIncome,
    OverTime
FROM "WA_Fn-UseC_-HR-Employee-Attrition"
WHERE Attrition = 'Yes'
  AND OverTime = 'Yes';


-- =========================================================
-- 26. TOP 10 HIGHEST PAID EMPLOYEES WHO LEFT
-- =========================================================
SELECT 
    EmployeeNumber,
    JobRole,
    Department,
    MonthlyIncome
FROM "WA_Fn-UseC_-HR-Employee-Attrition"
WHERE Attrition = 'Yes'
ORDER BY MonthlyIncome DESC
LIMIT 10;


-- =========================================================
-- 27. ATTRITION COUNT BY EDUCATION LEVEL
-- =========================================================
SELECT 
    Education,
    COUNT(*) AS Attrition_Count
FROM "WA_Fn-UseC_-HR-Employee-Attrition"
WHERE Attrition = 'Yes'
GROUP BY Education
ORDER BY Education;


-- =========================================================
-- 28. ATTRITION COUNT BY STOCK OPTION LEVEL
-- =========================================================
SELECT 
    StockOptionLevel,
    COUNT(*) AS Attrition_Count
FROM "WA_Fn-UseC_-HR-Employee-Attrition"
WHERE Attrition = 'Yes'
GROUP BY StockOptionLevel
ORDER BY StockOptionLevel;


-- =========================================================
-- 29. YEARS SINCE LAST PROMOTION VS ATTRITION
-- =========================================================
SELECT 
    YearsSinceLastPromotion,
    COUNT(*) AS Attrition_Count
FROM "WA_Fn-UseC_-HR-Employee-Attrition"
WHERE Attrition = 'Yes'
GROUP BY YearsSinceLastPromotion
ORDER BY YearsSinceLastPromotion;


-- =========================================================
-- 30. YEARS WITH CURRENT MANAGER VS ATTRITION
-- =========================================================
SELECT 
    YearsWithCurrManager,
    COUNT(*) AS Attrition_Count
FROM "WA_Fn-UseC_-HR-Employee-Attrition"
WHERE Attrition = 'Yes'
GROUP BY YearsWithCurrManager
ORDER BY YearsWithCurrManager;