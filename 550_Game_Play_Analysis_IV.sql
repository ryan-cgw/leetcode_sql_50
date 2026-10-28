-- https://leetcode.com/problems/game-play-analysis-iv/description/?envType=study-plan-v2&envId=top-sql-50
SELECT
    ROUND(
        COUNT(a.player_id) / (SELECT COUNT(DISTINCT sub1.player_id) FROM Activity sub1),
        2
    ) AS fraction
FROM Activity a
WHERE (a.player_id, a.event_date) IN (
    SELECT
        sub2.player_id,
        DATE_ADD(MIN(sub2.event_date), INTERVAL 1 DAY)
    FROM Activity sub2
    GROUP BY player_id
);
