with source as (

    select * from {{ source('northwind', 'inventory_transactions') }}
)
select
    *,
    CURRENT_TIMESTAMP as ingestion_timestamp
from source
