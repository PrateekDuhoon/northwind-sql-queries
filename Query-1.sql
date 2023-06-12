/* Get the total number of orders placed by each customer */

SELECT customer_id, COUNT(*) AS total_orders
FROM orders
GROUP BY customer_id;

/*This query selects the customer_id column from the orders table and counts the number of occurrences of each customer ID using the COUNT(*) function. The result is grouped by the customer_id, and the total number of orders for each customer is displayed as total_orders.*/
