/*
---------------------------------------------------------------------------
Task: 30-Day Page View Counts (Asked in: Meta)
Platform: DataDriven.io
Difficulty: Easy
Concepts: COUNT aggregation, Date manipulation (DATE_ADD), GROUP BY, ORDER BY

Business Logic / Problem Statement:
The product analytics team needs a 30-day engagement snapshot ending on 
December 28, 2026 (inclusive). The goal is to report the user ID and their 
total page view count for any user who visited the site during that specific 
time window.

Table Schema (page_views):
- view_id (INTEGER)
- page_url (TEXT)
- user_id (INTEGER)
- referrer (TEXT)
- dur_ms (INTEGER)
- device (TEXT)
- viewed_at (TEXT)
---------------------------------------------------------------------------
*/

-- Grouping by user and counting page views within the dynamic 30-day window
SELECT
    user_id,
    COUNT(page_url) AS total_page_view_count
FROM 
    page_views
WHERE 
    viewed_at BETWEEN DATE_ADD('day', -30, '2026-12-28') AND '2026-12-28'
GROUP BY 
    user_id
ORDER BY 
    total_page_view_count DESC;
