with source as (

    select * from {{ source('northwind', 'inventory_transaction_types') }}
)
select
    *,
    CURRENT_TIMESTAMP as ingestion_timestamp
from source
