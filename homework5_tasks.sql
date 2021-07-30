#Задание 3 (расположить записи в порядке увеличения значения value) Операторы, фильтрация, сортировка, ограничение 
USE sh;
SELECT * FROM storehouses_products
ORDER BY product_id DESC, value

#Задание 4 (средний возраст пользователей)

SELECT AVG(YEAR(CURRENT_DATE) - YEAR(birthday_at)) AS age FROM users 

#Задание 5
SELECT 
    DAYNAME(DATE_FORMAT(birthday_at, '2021-%m-%d')) AS 'wday',
    COUNT(*) AS 'amount'
FROM users
GROUP BY DAYNAME(DATE_FORMAT(birthday_at, '2021-%m-%d'))
ORDER BY 'wday';