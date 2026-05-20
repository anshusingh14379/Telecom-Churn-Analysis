DROP VIEW IF EXISTS vw_ChurnData;
GO

CREATE VIEW vw_ChurnData AS 
	SELECT * FROM db_churn.dbo.prod_Churn WHERE Customer_Status IN ('Churned', 'Stayed');
GO

DROP VIEW IF EXISTS vw_ChurnJoined;
GO

CREATE VIEW vw_ChurnJoined AS
	SELECT * FROM db_churn.dbo.prod_Churn WHERE Customer_Status = 'Joined';
GO

