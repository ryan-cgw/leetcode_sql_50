-- https://leetcode.com/problems/product-sales-analysis-i/description/?envType=study-plan-v2&envId=top-sql-50
SELECT
    product_name,
    year,
    price
FROM
    Sales
    INNER JOIN
    Product
    USING(product_id)
