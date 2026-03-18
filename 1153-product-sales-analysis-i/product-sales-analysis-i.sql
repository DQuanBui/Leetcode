# sales_id, year: primary key (Sales table); product_id: foreign key (Product table)
# find product_name, year, price (each sale_id)

SELECT 
    p.product_name,
    s.year,
    s.price
FROM 
    Sales s
    JOIN Product p
    ON s.product_id = p.product_id