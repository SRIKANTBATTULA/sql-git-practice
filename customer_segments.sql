SELECT
    customer_id,
    SUM(order_amount) AS total_revenue,
    CASE
        WHEN SUM(order_amount) >= 100000 THEN 'High'
        WHEN SUM(order_amount) >= 50000 THEN 'Medium'
        ELSE 'Low'
    END AS customer_segment
FROM sales
GROUP BY customer_id;