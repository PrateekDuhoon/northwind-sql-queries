/* Find the total sales (Quantity*Unit_Price) for each category of products */

SELECT product_name, SUM(quantity) AS total_quantity
FROM products
JOIN order_details ON products.product_id = order_details.product_id
GROUP BY product_name;

