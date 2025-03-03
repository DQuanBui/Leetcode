SELECT 
    DATE_FORMAT(trans_date, '%Y-%m') AS month,
    country,
    COUNT(amount) AS trans_count,
    SUM(IF(state = "approved", 1, 0)) AS approved_count,
    SUM(amount) AS trans_total_amount,
    SUM(IF(state = "approved", amount, 0)) AS approved_total_amount
FROM 
    transactions
GROUP BY 
    month, 
    country