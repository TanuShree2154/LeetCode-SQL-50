# Write your MySQL query statement below
SELECT contest_id , ROUND( count(r.contest_id)/ (select count(*) from Users) * 100 , 2) AS percentage 
FROM 
Users u INNER JOIN Register r
ON u.user_id =r.user_id
group by contest_id
ORDER BY percentage desc , contest_id asc;