with source as (

    select * from {{ source('northwind', 'privileges') }}
)
select
    *,
    CURRENT_TIMESTAMP as ingestion_timestamp
from source
