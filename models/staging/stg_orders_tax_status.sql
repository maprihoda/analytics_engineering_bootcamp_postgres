with source as (

    select * from {{ source('northwind', 'orders_tax_status') }}
)
select
    *,
    CURRENT_TIMESTAMP as ingestion_timestamp
from source
