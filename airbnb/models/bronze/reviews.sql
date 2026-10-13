with bronze_reviews as (
  select * from {{ source('airbnb_raw', 'reviews_raw') }}
)
select 
  listing_id,
  date as review_date,
  reviewer_name,
  comments as review_text,
  sentiment as review_sentiment
from
  bronze_reviews
