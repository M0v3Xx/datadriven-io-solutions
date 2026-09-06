/*
---------------------------------------------------------------------------
Task: Sirens and Smoke (Asked in: ESPN)
Platform: DataDriven.io
Difficulty: Easy
Concepts: Date filtering (BETWEEN), Case-insensitive filtering (LOWER), List matching (IN)

Business Logic / Problem Statement:
Pull all alert event details for the year 2026 where the severity level 
is either 'high' or 'critical'. The query must handle case-insensitivity 
for the severity column to ensure no alerts are missed due to formatting.

Table Schema (alert_events):
- alert_id (INTEGER)
- svc_name (TEXT)
- severity (TEXT)
- status (TEXT)
- fired_at (TEXT)
- ack_by (TEXT)
- resolved (TEXT)
---------------------------------------------------------------------------
*/

-- Fetching all columns for high/critical alerts in 2026, handling case variations
SELECT 
    * 
FROM 
    alert_events
WHERE 
    fired_at BETWEEN '2026-01-01' AND '2026-12-31'
    AND LOWER(severity) IN ('high', 'critical');
