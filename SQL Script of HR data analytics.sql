-- SQL Layer for BI
-- Purpose

-- Create analytical views.

-- Business Meaning

-- Power BI should consume pre-aggregated, business-ready data.

select * from hr_data;

-- Attrition summary by department
CREATE VIEW attrition_by_department AS
SELECT
    Department,
    COUNT(*) AS total_employees,
    SUM(Attrition) AS terminated_employees,
    ROUND(AVG(Attrition), 3) AS attrition_rate
FROM hr_data
GROUP BY Department;

select * from attrition_by_department


-- Performance & engagement view
CREATE VIEW performance_engagement AS
SELECT
    Department,
    PerformanceScore,
    AVG(EngagementSurvey) AS avg_engagement,
    AVG(EmpSatisfaction) AS avg_satisfaction
FROM hr_data
GROUP BY Department, PerformanceScore;

select * from performance_engagement
