DELETE FROM food
WHERE food_name IN (:food_name, :food_name1);