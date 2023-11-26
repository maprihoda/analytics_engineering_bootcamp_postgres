with source as (

    select * from {{ source('northwind', 'strings') }}
)
select
    *,
    CURRENT_TIMESTAMP as ingestion_timestamp
from source
