SELECT
    s1.machine_id,
    ROUND(AVG(s2.timestamp - s1.timestamp), 3) AS processing_time
FROM
    Activity s1
    JOIN Activity s2 
    ON s1.machine_id = s2.machine_id
    AND s1.process_id = s2.process_id
    AND s1.activity_type = 'start'
    AND s2.activity_type = 'end'
GROUP BY 
    s1.machine_id