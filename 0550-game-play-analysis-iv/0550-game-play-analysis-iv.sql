# Write your MySQL query statement below
SELECT ROUND(sum(case when DATEDIFF(a2.event_date , a1.event_date) = 1 then 1 else 0 end)/ count(DISTINCT a2.player_id) , 2) AS fraction
FROM Activity a1 INNER JOIN Activity a2 
on a1.player_id = a2.player_id
WHERE a1.event_date = (SELECT MIN(event_date) from Activity
WHERE player_id= a1.player_id
 GROUP BY player_id) ;
