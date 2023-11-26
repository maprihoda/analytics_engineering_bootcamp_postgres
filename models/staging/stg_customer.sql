with source as (

    select * from {{ source('northwind', 'customer') }}
)
select
    *,
    CURRENT_TIMESTAMP as ingestion_timestamp
from source
