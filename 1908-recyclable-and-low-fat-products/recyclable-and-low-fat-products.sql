# product_id: primary key
# "Y": low fat or recyclable, "N": not low fat or not recyclable
# ids of products > both low fat and recyclable

SELECT 
    product_id
FROM 
    Products
WHERE 
    low_fats = "Y"
    AND recyclable = "Y"