/* List the employees and the number of orders each employee has taken */

SELECT
    e.employee_id,
    CONCAT(e.first_name, ' ', e.last_name) AS employee_name,
    COUNT(o.order_id) AS number_of_orders
FROM
    employees e
LEFT JOIN
    orders o ON e.employee_id = o.employee_id
GROUP BY
    e.employee_id,
    e.first_name,
    e.last_name;