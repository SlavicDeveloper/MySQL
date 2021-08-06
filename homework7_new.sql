# Задание 1
USE sh;

SELECT * 
FROM users 
JOIN orders 
ON users.id = orders.user_id
WHERE order_amount != 0;

# Задание 2

SELECT catalogs.name AS name_of_catalog, products.name AS name_of_produict 
FROM catalogs 
JOIN products
ON catalogs.id = products.catalog_id 