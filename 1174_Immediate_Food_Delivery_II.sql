-- https://leetcode.com/problems/immediate-food-delivery-ii/description/?envType=study-plan-v2&envId=top-sql-50
SELECT
    ROUND(
        AVG(d.order_date = d.customer_pref_delivery_date) * 100,
        2
    ) AS immediate_percentage
FROM Delivery d
WHERE (d.customer_id, d.order_date) IN (
    SELECT
        sub.customer_id,
        MIN(sub.order_date)
    FROM Delivery sub
    GROUP BY sub.customer_id
);
