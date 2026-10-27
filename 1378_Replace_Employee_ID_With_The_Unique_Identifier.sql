-- https://leetcode.com/problems/replace-employee-id-with-the-unique-identifier/description/?envType=study-plan-v2&envId=top-sql-50
SELECT
    name, unique_ID
FROM
    Employees
    LEFT OUTER JOIN
    EmployeeUNI
    USING(id)
