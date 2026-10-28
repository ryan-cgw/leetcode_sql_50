-- https://leetcode.com/problems/user-activity-for-the-past-30-days-i/description/?envType=study-plan-v2&envId=top-sql-50
SELECT
    activity_date AS day,
    COUNT(DISTINCT user_id) AS active_users
FROM Activity
WHERE activity_date <= DATE('2019-07-27')
    AND activity_date >= DATE_SUB(DATE('2019-07-27'), INTERVAL 29 DAY)
GROUP BY activity_date;
