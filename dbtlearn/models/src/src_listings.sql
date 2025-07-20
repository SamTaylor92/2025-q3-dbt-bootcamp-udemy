-- STEP 1
WITH raw_listings AS (

-- STEP 2
	SELECT * from {{ source('airbnb', 'listings') }}
)

-- STEP 3
SELECT
	id as listing_id
	, name as listing_name
    , listing_url
	, room_type
	, minimum_nights
	, host_id
	, price as price_str
	, created_at
	, updated_at
	
	FROM raw_listings