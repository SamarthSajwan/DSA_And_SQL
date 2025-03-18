# Write your MySQL query statement below
WITH ssp AS (
select distinct Students.student_id, Students.student_name,Subjects.subject_name
from Students
cross join Subjects)

SELECT ssp.student_id,ssp.student_name,ssp.subject_name,count(examinations.student_id) as attended_exams 
from ssp
LEFT JOIN examinations
ON ssp.student_id = examinations.student_id and ssp.subject_name = examinations.subject_name
group by 1,2,3
order by 1,3;