/*
---------------------------------------------------------------------------
Task: Cheapest Cost Per Region (Asked in: Airbnb)
Platform: DataDriven.io
Difficulty: Easy
Concepts: Aggregation (MIN), GROUP BY

Business Logic / Problem Statement:
The FinOps team wants to know the floor price they are paying in each region. 
The goal is to calculate and return the minimum cloud cost amount recorded 
for every distinct region.

Table Schema (cloud_costs):
- cost_id (INTEGER)
- provider (TEXT)
- svc_name (TEXT)
- region (TEXT)
- amount (REAL)
- acct_id (TEXT)
- bill_date (TEXT)
---------------------------------------------------------------------------
*/

-- Grouping by region to find the minimum cloud cost (floor price) per area
SELECT 
    region,
    MIN(amount) AS min_cost
FROM 
    cloud_costs
GROUP BY 
    region;
