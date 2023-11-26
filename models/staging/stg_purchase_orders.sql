with source as (

    select * from {{ source('northwind', 'purchase_orders') }}
)
select
    *,
    CURRENT_TIMESTAMP as ingestion_timestamp
from source
