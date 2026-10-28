-- https://leetcode.com/problems/product-sales-analysis-iii/description/?envType=study-plan-v2&envId=top-sql-50
SELECT
    s.product_id,
    s.year AS first_year,
    s.quantity,
    s.price
FROM Sales s
WHERE (s.product_id, s.year) IN (
    SELECT
        sub.product_id,
        MIN(sub.year)
    FROM Sales sub
    GROUP BY sub.product_id
);
