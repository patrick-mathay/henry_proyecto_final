CREATE OR REPLACE MODEL `scenic-sorter-423118-i7.ML_user.business_comp_model`
OPTIONS(model_type='BOOSTED_TREE_CLASSIFIER',
        BOOSTER_TYPE='GBTREE',
        input_label_cols=['label'],
        num_trials=10) AS

WITH features_data AS (
  SELECT
    business_id,
    latitude,
    longitude,
    avg_rating,
    num_of_reviews,
    category_id,
    CASE 
      WHEN num_of_competitors >= 3 THEN 1
      ELSE 0
    END AS label
  FROM
    (
    SELECT
      b1.business_id,
      b1.latitude,
      b1.longitude,
      b1.avg_rating,
      b1.num_of_reviews,
      b1.category_id,
      COUNT(b2.business_id) AS num_of_competitors
    FROM
      `scenic-sorter-423118-i7.ML_user.business_train` AS b1
    LEFT JOIN
      `scenic-sorter-423118-i7.ML_user.business_train` AS b2
    ON
      b1.business_id != b2.business_id
      AND ABS(b1.latitude - b2.latitude) < 0.01
      AND ABS(b1.longitude - b2.longitude) < 0.01
    GROUP BY
      b1.business_id,
      b1.latitude,
      b1.longitude,
      b1.avg_rating,
      b1.num_of_reviews,
      b1.category_id
    ) AS with_competitors
)

SELECT
  *
FROM
  features_data;
