SELECT
    Eu.unique_id,
    E.name AS name
FROM 
    Employees E
    LEFT JOIN EmployeeUNI Eu
    ON E.id = Eu.id 