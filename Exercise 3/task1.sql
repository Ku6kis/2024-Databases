-- The Northwind database contains following tables: orders and customers.
-- Analyze the structure of these tables and write a query, which returns all orders,
-- that are ordered to New York. Include customer's first and last name, company and
-- the order's shipping date into the result. Make sure orders which are not shipped yet
-- are included in the result.


    -- Esimerkki orders
-- INSERT INTO `orders` (`id`, `employee_id`, `customer_id`, `order_date`, `shipped_date`, `shipper_id`, `ship_name`, `ship_address`, `ship_city`, `ship_state_province`, `ship_zip_postal_code`, `ship_country_region`, `shipping_fee`, `taxes`, `payment_type`, `paid_date`, `notes`, `tax_rate`, `tax_status_id`, `status_id`) VALUES (30, 9, 27, '2006-01-15 00:00:00', '2006-01-22 00:00:00', 2, 'Karen Toh', '789 27th Street', 'Las Vegas', 'NV', '99999', 'USA', 200, 0, 'Check', '2006-01-15 00:00:00', NULL, 0, NULL, 3);

    -- Esimerkki customers
-- INSERT INTO `customers` (`id`, `company`, `last_name`, `first_name`, `email_address`, `job_title`, `business_phone`, `home_phone`, `mobile_phone`, `fax_number`, `address`, `city`, `state_province`, `zip_postal_code`, `country_region`, `web_page`, `notes`, `attachments`) VALUES (1, 'Company A', 'Bedecs', 'Anna', NULL, 'Owner', '(123)555-0100', NULL, NULL, '(123)555-0101', '123 1st Street', 'Seattle', 'WA', '99999', 'USA', NULL, NULL, '');

SELECT 
    customers.first_name AS first_name,
    customers.last_name AS last_name,
    customers.company AS company,
    orders.shipped_date AS shipped_date

FROM 
    orders

LEFT JOIN 
    customers ON orders.customer_id = customers.id

WHERE
    orders.ship_city = "New York";