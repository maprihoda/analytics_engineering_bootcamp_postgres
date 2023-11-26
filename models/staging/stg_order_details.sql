with source as (

    select * from {{ source('northwind', 'order_details') }}
)
select
    *,
    CURRENT_TIMESTAMP as ingestion_timestamp
from source
