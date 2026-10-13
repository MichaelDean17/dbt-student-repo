with hosts as (
    select * from {{ ref('hosts') }}
)
select 
    host_id,
    IFNULL(host_name, 'Anonymous') as host_name,
    is_superhost,
    created_at,
    updated_at
from
    hosts

      
