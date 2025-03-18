# Write your MySQL query statement below
WITH M_info as
(SELECT managerId from Employee group by 1 having count(*) >=5)

select  name from Employee where id in (select distinct managerId from M_info);