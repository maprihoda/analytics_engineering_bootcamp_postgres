with source as (

    select * from {{ source('northwind', 'orders') }}
)
select
    *,
    CURRENT_TIMESTAMP as ingestion_timestamp
from source
