# Write your MySQL query statement below
SELECT s.student_id , s.student_name , su.subject_name , COUNT(e.subject_name) as attended_exams FROM
Students s CROSS JOIN Subjects su
left join Examinations e ON e.student_id =s.student_id AND su.subject_name = e.subject_name
group by  s.student_id ,s.student_name, su.subject_name 
order by s.student_id , su.subject_name;