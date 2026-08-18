USE online_sales;

SELECT
    EXTRACT(YEAR FROM `date`) AS year,
    EXTRACT(MONTH FROM `date`) AS month,
    SUM(`total revenue`) AS monthly_revenue,
    COUNT(DISTINCT `transaction id`) AS order_volume
FROM orders
WHERE YEAR(`date`) = 2024
GROUP BY
    EXTRACT(YEAR FROM `date`),
    EXTRACT(MONTH FROM `date`)
ORDER BY
    year,
    month;