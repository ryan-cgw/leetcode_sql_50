-- https://leetcode.com/problems/rising-temperature/?envType=study-plan-v2&envId=top-sql-50
SELECT current.id
FROM Weather current
WHERE current.temperature > (
    SELECT previous.temperature
    FROM Weather previous
    WHERE previous.recordDate = DATE_SUB(current.recordDate, INTERVAL 1 DAY)
);
