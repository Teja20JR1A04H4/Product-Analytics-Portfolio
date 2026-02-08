/* FILE: Key_SQL_Logic.sql
   DESCRIPTION: Generic logic used to calculate Defect Rates and Efficiency.
*/

-- 1. Calculate Daily Defect Rate per Machine
SELECT 
    ProductionDate,
    MachineID,
    SUM(DefectiveUnits) AS Total_Defects,
    SUM(TotalOutput) AS Total_Production,
    (CAST(SUM(DefectiveUnits) AS FLOAT) / SUM(TotalOutput)) * 100 AS Defect_Rate_Percentage
FROM 
    Production_Log_Table
GROUP BY 
    ProductionDate, MachineID
HAVING 
    (CAST(SUM(DefectiveUnits) AS FLOAT) / SUM(TotalOutput)) * 100 > 2.0 -- Filter for high defect rates
ORDER BY 
    Defect_Rate_Percentage DESC;

-- 2. Identify Downtime Causes (Pareto Analysis Logic)
SELECT 
    DowntimeReason,
    COUNT(*) AS Frequency,
    SUM(DurationMinutes) AS Total_Downtime_Minutes
FROM 
    Machine_Downtime_Logs
WHERE 
    LogDate >= DATEADD(day, -30, GETDATE()) -- Last 30 Days
GROUP BY 
    DowntimeReason
ORDER BY 
    Total_Downtime_Minutes DESC;
