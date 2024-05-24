CREATE OR REPLACE MODEL `scenic-sorter-423118-i7.ML_user.final_recommendation_model_5`
OPTIONS(model_type='BOOSTED_TREE_CLASSIFIER', 
        input_label_cols=['label'], 
        max_iterations=100, 
        learn_rate=0.3) AS
WITH processed_data AS (
  SELECT
    IF(rating > 3.5, 1, 0) AS label,
    user_id,
    name_business,
    avg_rating,
    num_of_reviews,
    category_id,
    EXTRACT(HOUR FROM time) AS hour_of_day,
    EXTRACT(DAYOFWEEK FROM time) AS day_of_week,
    SQRT(num_of_reviews) AS sqrt_num_of_reviews,
    SQRT(avg_rating) AS sqrt_avg_rating
  FROM
    `scenic-sorter-423118-i7.ML_user.user_train`
)
SELECT
  label,
  user_id,
  name_business,
  avg_rating,
  num_of_reviews,
  category_id,
  hour_of_day,
  day_of_week,
  sqrt_num_of_reviews,
  sqrt_avg_rating
FROM
  processed_data;