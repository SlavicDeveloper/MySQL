use vk_data_hw

# Задание 2

SELECT * FROM users 
WHERE id IN (SELECT from_user_id FROM messages WHERE to_user_id = 502)

# Задание 3

SELECT COUNT(*) AS like_amount FROM media 
WHERE id IN(
	SELECT id FROM media
	WHERE user_id IN(
		 SELECT * FROM(
			SELECT user_id FROM profiles ORDER BY birthday LIMIT 1,10) AS user_id
	 
	)
)

# Задание 4

SELECT COUNT(*) AS like_amount_men FROM media  # Мужчины
WHERE id IN(
	SELECT id FROM media
	WHERE user_id IN(
		 SELECT * FROM(
			SELECT user_id FROM profiles WHERE gender = "m") AS user_id
	 
	)
)

UNION

SELECT COUNT(*) AS like_amount_women FROM media # Женщины
WHERE id IN(
	SELECT id FROM media
	WHERE user_id IN(
		 SELECT * FROM(
			SELECT user_id FROM profiles WHERE gender = "f") AS user_id

	)
)

# Задание 5 (наименее активные пользователи по дате обновления своего медиаконтента) 

SELECT user_id, updated_at FROM media 
ORDER BY updated_at LIMIT 1,10

