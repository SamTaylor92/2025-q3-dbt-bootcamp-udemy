-- STEP 1
WITH raw_hosts AS (

-- STEP 2
	SELECT * from {{ source('airbnb', 'hosts') }}
) 

-- STEP 3
SELECT
	id as host_id
	, name as host_name
    , is_superhost
	, created_at
	, updated_at
	
	FROM raw_hosts