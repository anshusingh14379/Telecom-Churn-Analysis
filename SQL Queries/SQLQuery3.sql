-- Find the total count and percentage of customers by gender
SELECT Gender, COUNT(Gender) AS Total_Count,
COUNT(Gender) * 100.0 / (SELECT COUNT(*) FROM dbo.stg_Churn) AS Percentage
FROM stg_Churn
GROUP BY Gender;

-- Find the total count and percentage of customers by Contract type
SELECT Contract, COUNT(Contract) AS Total_Count,
COUNT(Contract) * 100.0 / (SELECT COUNT(*) FROM dbo.stg_Churn) AS Percentage
FROM stg_Churn
GROUP BY Contract;

-- Find the total count, Total Revenue and Revpercentage of customers by Customer Status
SELECT Customer_Status, COUNT(Customer_Status) AS Total_Count, SUM(Total_Revenue) AS Total_Revenue,
COUNT(Total_Revenue) * 100.0 / (SELECT SUM(Total_Revenue) FROM dbo.stg_Churn) * 100.0 AS RevPercentage
FROM stg_Churn
GROUP BY Customer_Status;

-- Find the total count and percentage of customers by State order by percentage in descending order
SELECT State, COUNT(State) AS Total_Count,
COUNT(State) * 100.0 / (SELECT COUNT(*) FROM dbo.stg_Churn) AS Percentage
FROM stg_Churn
GROUP BY State
ORDER BY Percentage DESC;

-- Find the unique items in the Internet type
SELECT DISTINCT Internet_Type
FROM stg_Churn;