USE orders_db;

-- 4_1 Use the COUNT statement to determine the number of rows retrieved.

SELECT COUNT(*) AS row_count
FROM order_details
INNER JOIN orders ON order_details.order_id = orders.id
INNER JOIN customers ON orders.customer_id = customers.id
INNER JOIN products ON order_details.product_id = products.id
INNER JOIN categories ON products.category_id = categories.id
INNER JOIN employees ON orders.employee_id = employees.employee_id
INNER JOIN shippers ON orders.shipper_id = shippers.id
INNER JOIN suppliers ON products.supplier_id = suppliers.id;

-- 4_2 Change several INNER statements to LEFT or RIGHT. Determine the impact on the number of rows. Record your observations in a text file.

-- When we substitute INNER JOIN operators with LEFT or RIGHT JOIN, we alter the type of connection between tables, resulting in a change in the number of rows obtained:

-- When utilizing LEFT JOIN, the number of rows may increase. LEFT JOIN retrieves all rows from the left table (the first in the JOIN), even if there are no corresponding records in the right table (the second in the JOIN). In case of absence of corresponding records in the right table, the respective columns will have NULL values.

SELECT COUNT(*) AS row_count
FROM order_details
LEFT JOIN orders ON order_details.order_id = orders.id
LEFT JOIN customers ON orders.customer_id = customers.id
LEFT JOIN products ON order_details.product_id = products.id
LEFT JOIN categories ON products.category_id = categories.id
LEFT JOIN employees ON orders.employee_id = employees.employee_id
LEFT JOIN shippers ON orders.shipper_id = shippers.id
LEFT JOIN suppliers ON products.supplier_id = suppliers.id;

-- RIGHT JOIN: It's possible to increase the number of rows, potentially causing the query to become overly lengthy and inefficient. RIGHT JOIN retrieves all rows from the right table (the second in the JOIN), regardless of whether there are matching records in the left table (the first in the JOIN). If no corresponding entries are found in the left table, the respective columns will contain NULL values.

SELECT COUNT(*) AS row_count
FROM order_details
RIGHT JOIN orders ON order_details.order_id = orders.id
RIGHT JOIN customers ON orders.customer_id = customers.id
RIGHT JOIN products ON order_details.product_id = products.id
RIGHT JOIN categories ON products.category_id = categories.id
RIGHT JOIN employees ON orders.employee_id = employees.employee_id
RIGHT JOIN shippers ON orders.shipper_id = shippers.id
RIGHT JOIN suppliers ON products.supplier_id = suppliers.id;

-- 4_3 Select only rows where employee_id > 3 та ≤ 10.

SELECT COUNT(*) AS row_count
FROM order_details
INNER JOIN orders ON order_details.order_id = orders.id
INNER JOIN customers ON orders.customer_id = customers.id
INNER JOIN products ON order_details.product_id = products.id
INNER JOIN categories ON products.category_id = categories.id
INNER JOIN employees ON orders.employee_id = employees.employee_id
INNER JOIN shippers ON orders.shipper_id = shippers.id
INNER JOIN suppliers ON products.supplier_id = suppliers.id
WHERE employees.employee_id > 3 AND employees.employee_id <= 10;

-- 4_4 Group the data by category name, calculating the count of rows in each group and the average product quantity from order_details.quantity.

SELECT categories.name AS category_name,
       COUNT(*) AS row_count,
       AVG(order_details.quantity) AS average_quantity
FROM order_details
INNER JOIN products ON order_details.product_id = products.id
INNER JOIN categories ON products.category_id = categories.id
GROUP BY categories.name;

-- 4_5 Filter out rows where the average product quantity exceeds 21

SELECT categories.name AS category_name,
       COUNT(*) AS row_count,
       AVG(order_details.quantity) AS average_quantity
FROM order_details
INNER JOIN products ON order_details.product_id = products.id
INNER JOIN categories ON products.category_id = categories.id
GROUP BY categories.name
HAVING AVG(order_details.quantity) > 21;

-- 4_6 Sort the resulting rows in descending order based on the count of rows

SELECT categories.name AS category_name,
       COUNT(*) AS row_count,
       AVG(order_details.quantity) AS average_quantity
FROM order_details
INNER JOIN products ON order_details.product_id = products.id
INNER JOIN categories ON products.category_id = categories.id
GROUP BY categories.name
HAVING AVG(order_details.quantity) > 21
ORDER BY row_count DESC;

-- 4_7 Display four lines of the sorted data, with the first line excluded.

SELECT categories.name AS category_name,
       COUNT(*) AS row_count,
       AVG(order_details.quantity) AS average_quantity
FROM order_details
INNER JOIN products ON order_details.product_id = products.id
INNER JOIN categories ON products.category_id = categories.id
GROUP BY categories.name
HAVING AVG(order_details.quantity) > 21
ORDER BY row_count DESC
LIMIT 4 OFFSET 1;