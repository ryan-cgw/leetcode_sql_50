-- https://leetcode.com/problems/employee-bonus/description/?envType=study-plan-v2&envId=top-sql-50
SELECT
    name,
    bonus
FROM Employee
LEFT OUTER JOIN Bonus USING(empId)
WHERE bonus < 1000
    OR bonus IS NULL;
