-- In task 2 you will need GROUP BY, ORDER BY ja COUNT commands.

-- Find out which Northwind company's employees have sold products and how many.
-- Include the count of sold orders, employee's name and title in the company to
-- the result. Order the result according the number of sales in descending order.
-- Don't include employees that have not sold anything in the result.

-- ESIMERKKI  INSERT INTO `employees` (`id`, `company`, `last_name`, `first_name`, `email_address`, `job_title`, `business_phone`, `home_phone`, `mobile_phone`, `fax_number`, `address`, `city`, `state_province`, `zip_postal_code`, `country_region`, `web_page`, `notes`, `attachments`) VALUES (1, 'Northwind Traders', 'Freehafer', 'Nancy', 'nancy@northwindtraders.com', 'Sales Representative', '(123)555-0100', '(123)555-0102', NULL, '(123)555-0103', '123 1st Avenue', 'Seattle', 'WA', '99999', 'USA', '#http://northwindtraders.com#', NULL, '');

-- ESIMERKKI  INSERT INTO `orders` (`id`, `employee_id`, `customer_id`, `order_date`, `shipped_date`, `shipper_id`, `ship_name`, `ship_address`, `ship_city`, `ship_state_province`, `ship_zip_postal_code`, `ship_country_region`, `shipping_fee`, `taxes`, `payment_type`, `paid_date`, `notes`, `tax_rate`, `tax_status_id`, `status_id`) VALUES (30, 9, 27, '2006-01-15 00:00:00', '2006-01-22 00:00:00', 2, 'Karen Toh', '789 27th Street', 'Las Vegas', 'NV', '99999', 'USA', 200, 0, 'Check', '2006-01-15 00:00:00', NULL, 0, NULL, 3);


SELECT
    COUNT(orders.id) AS order_number,
    employees.first_name AS first_name,
    employees.last_name AS last_name,
    employees.job_title as title
FROM
    employees
JOIN
    orders ON employees.id = orders.employee_id
GROUP BY
    employees.id
ORDER BY
    order_number DESC;