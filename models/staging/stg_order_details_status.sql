with source as (

    select * from {{ source('northwind', 'order_details_status') }}
)
select
    *,
    CURRENT_TIMESTAMP as ingestion_timestamp
from source
