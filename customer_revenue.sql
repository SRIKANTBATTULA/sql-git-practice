SELECT
    customer_id,
    SUM(order_amount) AS total_revenue
FROM sales
GROUP BY customer_id;