# Write your MySQL query statement below
select name from Customer 
where referee_id NOT IN (2) OR referee_id IS NULL;