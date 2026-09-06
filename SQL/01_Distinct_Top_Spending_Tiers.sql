/*
---------------------------------------------------------------------------
Task: Bronze Medal (Asked in: Calix)
Platform: DataDriven.io
Difficulty: Easy
Concepts: DISTINCT, ORDER BY, LIMIT

Business Logic / Problem Statement:
The FinOps team is mapping the top spending tiers across cloud usage. 
Repeated amounts must collapse into a single tier. The goal is to return 
the three highest cost amounts, largest first.

Table Schema (cloud_costs):
- cost_id 
- provider 
- svc_name 
- region 
- amount 
- acct_id 
- bill_date 
---------------------------------------------------------------------------
*/

-- Filtering unique cost amounts, ordering from highest to lowest, and limiting to top 3
SELECT DISTINCT 
    amount AS cost_amounts
FROM 
    cloud_costs
ORDER BY 
    cost_amounts DESC
LIMIT 3;
