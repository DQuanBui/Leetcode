# id: primary key
# names > id != 2 or not referred by any customer

SELECT 
    name
FROM 
    Customer
WHERE 
    referee_id != 2
    OR referee_id IS NULL