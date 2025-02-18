SELECT 
    s1.id
FROM 
    Weather s1
    JOIN Weather s2 
    ON 
    DATEDIFF(s1.recordDATE,s2.recordDATE) = 1 
WHERE 
    s1.temperature > s2.temperature