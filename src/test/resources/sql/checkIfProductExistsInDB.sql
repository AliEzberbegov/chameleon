SELECT food_name FROM food
WHERE food_name = (:food_name)
UNION ALL
SELECT  'Ошибка: товар не найден' AS food_name
WHERE NOT EXISTS (
    SELECT 1 FROM food WHERE food_name = :food_name
);


