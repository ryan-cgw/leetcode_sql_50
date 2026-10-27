-- https://leetcode.com/problems/confirmation-rate/?envType=study-plan-v2&envId=top-sql-50
SELECT
    s.user_id,
    ROUND(
        CASE
            WHEN COUNT(c.action) = 0 THEN 0
            ELSE COUNT(CASE WHEN c.action = 'confirmed' THEN 1 END) / COUNT(c.action)
        END,
        2
    ) AS confirmation_rate
FROM Signups s
LEFT JOIN Confirmations c
    USING(user_id)
GROUP BY s.user_id;
