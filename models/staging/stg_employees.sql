with source as (

    select * from {{ source('northwind', 'employees') }}
)
select
    *,
    CURRENT_TIMESTAMP as ingestion_timestamp
from source
