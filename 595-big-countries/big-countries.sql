# name: primary key
# big if: 1. area >= 3000000, or 2. population >= 25000000
# name, population, and area

SELECT 
    name,
    population,
    area
FROM 
    World
WHERE 
    area >= 3000000
    OR population >= 25000000