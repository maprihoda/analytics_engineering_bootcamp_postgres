with source as (

    select * from {{ source('northwind', 'invoices') }}
)
select
    *,
    CURRENT_TIMESTAMP as ingestion_timestamp
from source
