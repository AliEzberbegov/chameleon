SELECT *
FROM food
WHERE food_name = (:food_name)
  AND (SELECT COUNT(*)
       FROM food AS duplicate
       WHERE duplicate.food_name = food.food_name) > 1;