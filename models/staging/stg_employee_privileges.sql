with source as (

    select * from {{ source('northwind', 'employee_privileges') }}
)
select
    *,
    CURRENT_TIMESTAMP as ingestion_timestamp
from source
