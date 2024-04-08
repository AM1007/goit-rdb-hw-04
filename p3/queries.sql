USE orders_db;

SELECT * FROM orders o
INNER JOIN order_details od ON od.order_id = o.id
INNER JOIN products p ON p.id = od.product_id
INNER JOIN categories c ON p.category_id = c.id
INNER JOIN suppliers s ON p.supplier_id = s.id
INNER JOIN customers cast ON o.customer_id = cast.id
INNER JOIN  employees e ON o.employee_id = e.employee_id
INNER JOIN shippers sh ON o.shipper_id = sh.id;
