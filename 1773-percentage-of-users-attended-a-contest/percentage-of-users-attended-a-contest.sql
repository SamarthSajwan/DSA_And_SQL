# Write your MySQL query statement below
with cte as
(select count(distinct user_id) as total from Users )
select contest_id , coalesce(round(((count(distinct user_id)/cte.total)*100),2),0) as percentage 
from Register 
inner join cte on 1=1
group by 1 order by 2 desc, 1 asc;