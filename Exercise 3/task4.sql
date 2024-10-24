-- Northwind company has many products for sale. Find out how many orders include
-- each of the products. Write a query which returns all company's products
-- (the name of the product) and the number of orders. Include the products which are
-- not part of any order in the result.

-- ESIMERKKI INSERT INTO `products` (`supplier_ids`, `id`, `product_code`, `product_name`, `description`, `standard_cost`, `list_price`, `reorder_level`, `target_level`, `quantity_per_unit`, `discontinued`, `minimum_reorder_quantity`, `category`, `attachments`) VALUES ('4', 1, 'NWTB-1', 'Northwind Traders Chai', NULL, 13.5, 18, 10, 40, '10 boxes x 20 bags', 0, 10, 'Beverages', '');
-- ESIMERKKI INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `quantity`, `unit_price`, `discount`, `status_id`, `date_allocated`, `purchase_order_id`, `inventory_id`) VALUES (27, 30, 34, 100, 14, 0, 2, NULL, 96, 83);


SELECT
    products.product_name AS product_name,
    COUNT(order_details.order_id) AS number_of_orders
FROM
    products
LEFT JOIN
    order_details ON products.id = order_details.product_id
GROUP BY
    products.product_name
ORDER BY
    number_of_orders DESC;
