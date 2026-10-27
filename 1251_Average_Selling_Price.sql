-- https://leetcode.com/problems/average-selling-price/description/?envType=study-plan-v2&envId=top-sql-50
SELECT
    p.product_id,
    CASE
        WHEN SUM(u.units) IS NULL OR SUM(u.units) = 0 THEN 0.00
        ELSE ROUND(SUM(p.price * u.units) / SUM(u.units), 2)
    END AS average_price
FROM Prices p
    LEFT OUTER JOIN UnitsSold u
        ON p.product_id = u.product_id
        AND p.start_date <= u.purchase_date
        AND u.purchase_date <= p.end_date
GROUP BY p.product_id;
