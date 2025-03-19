# Write your MySQL query statement below
select Project.project_id , coalesce(round(sum(Employee.experience_years)/count(Employee.employee_id ),2),0)
as average_years 
from Project
left join
Employee
on Project.employee_id  = Employee.employee_id 
group by 1;