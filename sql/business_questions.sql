SELECT
  p.description,
  ROUND(SUM(f.total_amount), 2) AS revenue
FROM workshop_gold.fact_sales f
JOIN workshop_gold.dim_product p ON f.product_sk = p.product_sk
WHERE f.is_return = false
GROUP BY p.description
ORDER BY revenue DESC
LIMIT 10;

SELECT
  t.year,
  t.month,
  ROUND(SUM(f.total_amount), 2) AS revenue
FROM workshop_gold.fact_sales f
JOIN workshop_gold.dim_date t ON f.date_sk = t.date_sk
WHERE f.is_return = false
GROUP BY t.year, t.month
ORDER BY t.year, t.month;

SELECT
  c.country,
  ROUND(SUM(f.total_amount), 2) AS revenue
FROM workshop_gold.fact_sales f
JOIN workshop_gold.dim_customer c ON f.customer_sk = c.customer_sk
WHERE f.is_return = false
GROUP BY c.country
ORDER BY revenue DESC
LIMIT 15;

SELECT
  c.customer_id,
  c.country,
  COUNT(DISTINCT f.invoice)      AS num_invoices,
  ROUND(SUM(f.total_amount), 2) AS total_spend
FROM workshop_gold.fact_sales f
JOIN workshop_gold.dim_customer c ON f.customer_sk = c.customer_sk
WHERE f.is_return = false
  AND c.customer_id IS NOT NULL
GROUP BY c.customer_id, c.country
ORDER BY total_spend DESC
LIMIT 5;