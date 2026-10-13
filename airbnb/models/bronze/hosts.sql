with bronze_hosts as (
  select * from {{ source('airbnb_raw', 'hosts_raw') }}
)
select 
  id as host_id,
  name as host_name,
  is_superhost,
  created_at,
  updated_at
from
  bronze_hosts