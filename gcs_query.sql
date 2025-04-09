SELECT * FROM `myproject-451914.traffic_data.cleaned_accidents` LIMIT 1000;


-- This query groups the accidents by Weather_Condition and counts how many -- accidents occurred in each weather condition.
SELECT
  Weather_Condition,          -- Select the weather condition for grouping
  COUNT(*) AS total_accidents -- Count the number of accidents in each weather condition
FROM
  `myproject-451914.traffic_data.cleaned_accidents`  
GROUP BY
  Weather_Condition         
ORDER BY
  total_accidents DESC;

-- To cast your STRING type to a TIMESTAMP (if the data represents a time) or DATE
SELECT 
  EXTRACT(DAYOFWEEK FROM TIMESTAMP(Start_Time)) AS DayOfWeek,
  EXTRACT(MONTH FROM TIMESTAMP(Start_Time)) AS Month,
  EXTRACT(HOUR FROM TIMESTAMP(Start_Time)) AS Hour
FROM 
  `myproject-451914.traffic_data.cleaned_accidents`
LIMIT 10;


SELECT
  EXTRACT(DAYOFWEEK FROM TIMESTAMP(Start_Time)) AS day_of_week,  -- Convert Start_Time to TIMESTAMP and extract the day of the week
  COUNT(*) AS total_accidents                              -- Count the number of accidents on each day of the week
FROM
  `myproject-451914.traffic_data.cleaned_accidents`  -- Replace with your project, dataset, and cleaned accidents table
GROUP BY
  day_of_week                                           -- Group by day of week
ORDER BY
  day_of_week;                                          -- Order by day of week


SELECT
  EXTRACT(YEAR FROM TIMESTAMP(Start_Time)) AS year,  -- Extract the year from the accident's Start_Time (converted to TIMESTAMP)
  EXTRACT(MONTH FROM TIMESTAMP(Start_Time)) AS month,  -- Extract the month from the accident's Start_Time (converted to TIMESTAMP)
  COUNT(*) AS total_accidents              -- Count the total number of accidents that occurred in each month
FROM
  `myproject-451914.traffic_data.cleaned_accidents`  -- Replace with your project, dataset, and cleaned accidents table
GROUP BY
  year, month                               -- Group by year and month
ORDER BY
  year, month;


-- This will create a new table with the aggregated accidents by weather condition.
CREATE OR REPLACE TABLE `myproject-451914.traffic_data.accidents_by_weather` AS
SELECT
  Weather_Condition,
  COUNT(*) AS total_accidents
FROM
  `myproject-451914.traffic_data.cleaned_accidents`
GROUP BY
  Weather_Condition
ORDER BY
  total_accidents DESC;


-- This query fetches the first 10 rows from the transformed accidents by weather table.
SELECT * 
FROM `myproject-451914.traffic_data.accidents_by_weather` 
LIMIT 10;

