# Employees table > id: primary key
# EmployeeUNI table > id , unique_id: the primary key
# find the Unique ID (each user) > replace user (no unique ID) with NULL

SELECT  
    eu.unique_id,
    e.name
FROM 
    Employees e
    LEFT JOIN EmployeeUNI eu
    ON e.id = eu.id