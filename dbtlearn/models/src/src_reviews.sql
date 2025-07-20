-- STEP 1
WITH raw_reviews AS (

-- STEP 2
	SELECT * from {{ source('airbnb', 'reviews') }}
) 

-- STEP 3
SELECT
	listing_id
	, date as review_date
    , reviewer_name
	, comments as review_text
	, sentiment as review_sentiment
	
	FROM raw_reviews