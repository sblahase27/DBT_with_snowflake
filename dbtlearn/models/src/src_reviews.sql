WITH raw_reviews AS (
    SELECT
        *
    FROM
        {{source('airbnb','reviews')}}
)
SELECT
    date AS review_date,
    comments AS review_text,
    listing_id,
    sentiment AS review_sentiment,
    reviewer_name
FROM
    raw_reviews
