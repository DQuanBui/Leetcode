# find the IDs (users) > visit without making any transactions + number of times they made these types of visits

SELECT 
    customer_id,
    COUNT(DISTINCT visit_id) AS count_no_trans
FROM  
    Visits
WHERE 
    visit_id NOT IN (SELECT visit_id FROM transactions)
GROUP BY 
    customer_id