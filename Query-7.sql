/* Get the top 5 most sold products */

SELECT p.product_id, p.product_name, SUM(od.quantity) AS total_quantity
FROM products AS p
INNER JOIN order_details AS od ON p.product_id = od.product_id
GROUP BY p.product_id, p.product_name
ORDER BY total_quantity DESC
LIMIT 5;