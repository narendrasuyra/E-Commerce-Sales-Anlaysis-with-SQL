--To Know the Total Revenue
SELECT SUM(p.price * o.quantity) AS total_revenue
FROM orders o
JOIN products p ON o.product_id = p.product_id;


-- To Know the Best Selling Product
SELECT p.product_name,
       SUM(o.quantity) AS total_quantity
FROM products p
JOIN orders o ON p.product_id = o.product_id
GROUP BY p.product_name
ORDER BY total_quantity DESC
LIMIT 1;


-- To Know the Monthly Revenue
SELECT MONTH(order_date) AS month,
       SUM(p.price * o.quantity) AS revenue
FROM orders o
JOIN products p ON o.product_id = p.product_id
GROUP BY MONTH(order_date)
ORDER BY month;


--To Know the Revenue by Categeory
SELECT p.category,
       SUM(p.price * o.quantity) AS revenue
FROM products p
JOIN orders o ON p.product_id = o.product_id
GROUP BY p.category;
