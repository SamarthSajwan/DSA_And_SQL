# Write your MySQL query statement below
select B.unique_id , A.name
from EmployeeUNI B
right join Employees A
on A.id = B.id;