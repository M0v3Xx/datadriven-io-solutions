/*
---------------------------------------------------------------------------
Task: Suspected Bot Sessions (Asked in: ESPN)
Platform: DataDriven.io
Difficulty: Easy
Concepts: WHERE clause, Date filtering (BETWEEN), Logical operators (AND)

Business Logic / Problem Statement:
Identify potential bot activity by flagging sessions that are shorter than 
100 seconds. The goal is to return the session ID, user ID, and session 
duration specifically for suspect sessions that occurred in the year 2026.

Table Schema (user_sessions):
- session_id (INTEGER)
- user_id (INTEGER)
- device_id (INTEGER)
- session_start (TEXT)
- session_duration_sec (INTEGER)
- pages_viewed (INTEGER)
---------------------------------------------------------------------------
*/

-- Filtering sessions based on duration and specific date range
SELECT
    session_id,
    user_id,
    session_duration_sec
FROM 
    user_sessions
WHERE 
    session_duration_sec < 100
    AND session_start BETWEEN '2026-01-01' AND '2026-12-31';
