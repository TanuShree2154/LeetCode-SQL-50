# Write your MySQL query statement below
SELECT s1.product_id , s1.year AS first_year , s1.quantity , s1.price 
FROM Sales s1
INNER JOIN (SELECT product_id , min(year) as first_year 
from Sales 
GROUP BY product_id
)s2
ON s1.product_id =s2.product_id
AND s1.year=s2.first_year
;