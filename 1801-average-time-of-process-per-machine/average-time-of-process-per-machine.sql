# Write your MySQL query statement below
WITH TIME_DIFF AS (
select machine_id,process_id, max(timestamp) as start_time,min(timestamp) as end_time,
max(timestamp) - min(timestamp) as time_diff
from Activity
group by 1,2)

SELECT machine_id,round(avg(time_diff),3) as processing_time 
FROM TIME_DIFF
group by 1;