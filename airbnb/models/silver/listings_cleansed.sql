with listings as (
    select * from {{ ref('listings') }}
)
select 
    listing_id,
    listing_name,
    listing_url,
    room_type,
    case 
        when minimum_nights = 0 then 1
        else minimum_nights
    end as minimum_nights,
    host_id,
    price,
    created_at,
    updated_at
from
    listings
