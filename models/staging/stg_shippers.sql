with source as (

    select * from {{ source('northwind', 'shippers') }}
)
select
    *,
    CURRENT_TIMESTAMP as ingestion_timestamp
from source
