# Write your MySQL query statement below
select Signups.user_id,round(coalesce(sum(case when Confirmations.action = 'confirmed' THEN 1 ELSE 0 END)/sum(case when Confirmations.action IS NOT NULL THEN 1 ELSE 0 END),0),2)  AS confirmation_rate 
from Signups
LEFT JOIN Confirmations ON Signups.user_id = Confirmations.user_id
GROUP BY 1;