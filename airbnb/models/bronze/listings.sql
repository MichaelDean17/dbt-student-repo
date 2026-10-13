with bronze_listings as (
  SELECT * FROM {{ source('airbnb_raw', 'listings_raw') }}
)
select 
  id as listing_id,
  name as listing_name,
  listing_url,
  room_type,
  minimum_nights,
  host_id,
  price,
  created_at,
  updated_at
from
  bronze_listings