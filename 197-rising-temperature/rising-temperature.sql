# Write your MySQL query statement below
select id as Id  from (
select id, temperature,lag (temperature) over (order by recordDate asc) as prev_temp,
lag (recordDate) over (order by recordDate asc) as prev_date, recordDate  from Weather
) A where prev_temp is not null and (temperature > prev_temp and datediff(recordDate,prev_date)=1);
