-- Q1: Monthly revenue trend
SELECT year, month_name, SUM(net_amount_inr) AS revenue
FROM ecommerce.gold.fact_transactions_denorm
GROUP BY year, month_name
ORDER BY year;

-- Q2: Best-selling categories
SELECT category_name, SUM(net_amount_inr) AS revenue
FROM ecommerce.gold.fact_transactions_denorm
GROUP BY category_name
ORDER BY revenue DESC;

-- Q3: Sales by channel and weekend effect
SELECT channel, is_weekend, COUNT(DISTINCT transaction_id) AS orders, SUM(net_amount_inr) AS revenue
FROM ecommerce.gold.fact_transactions_denorm
GROUP BY channel, is_weekend;

-- Q4: Top customers by region
SELECT c.region, f.customer_id, SUM(f.net_amount_inr) AS spend
FROM ecommerce.gold.gld_fact_order_items f
JOIN ecommerce.gold.gld_dim_customers c ON f.customer_id = c.customer_id
GROUP BY c.region, f.customer_id
ORDER BY spend DESC;

-- Q5: Coupon impact
SELECT coupon_flag, AVG(discount_percent) AS avg_discount_pct, AVG(net_amount_inr) AS avg_net_amount_inr
FROM ecommerce.gold.gld_fact_order_items
GROUP BY coupon_flag;
