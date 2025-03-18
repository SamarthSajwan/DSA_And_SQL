# Write your MySQL query statement below
select name,bonus
from Employee E
left join Bonus B
ON E.empId  = B.empId  
WHERE B.bonus <1000 OR b.bonus IS NULL;