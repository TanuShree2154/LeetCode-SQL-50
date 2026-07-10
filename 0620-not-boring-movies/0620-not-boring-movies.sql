# Write your MySQL query statement below
SELECT id , movie , description , rating  
FROM Cinema 
WHERE ID % 2 <>0 
HAVING description <> 'boring'
ORDER BY rating desc;