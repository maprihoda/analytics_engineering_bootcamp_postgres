with source as (

    select * from {{ source('northwind', 'suppliers') }}
)
select
    *,
    CURRENT_TIMESTAMP as ingestion_timestamp
from source
