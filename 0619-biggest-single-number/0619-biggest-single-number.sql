# Write your MySQL query statement below
SELECT 
case 
    when count(num) =1 then MAX(num) 
    when count(num)<>1 then NULL
end as num
FROM MyNumbers
GROUP BY num
order by num desc 
limit 1;