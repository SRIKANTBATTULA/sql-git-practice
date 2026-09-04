SELECT
    customer_id,
    SUM(revenue) AS total_revenue
FROM sales
GROUP BY customer_id;