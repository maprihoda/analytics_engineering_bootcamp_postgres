WITH source AS (
    SELECT
        id AS customer_id,
        company,
        last_name,
        first_name,
        email_address,
        job_title,
        business_phone,
        home_phone,
        mobile_phone,
        fax_number,
        address,
        city,
        state_province,
        zip_postal_code,
        country_region,
        web_page,
        notes,
        attachments,
        CURRENT_TIMESTAMP AS insertion_timestamp
    FROM "analytics_engineering_bootcamp_postgres"."dbt_marek_stg_northwind"."stg_customer"
),
unique_source AS (
    SELECT
        *,
        row_number() OVER (PARTITION BY customer_id) AS row_number
    FROM source
)

select * from unique_source;
-- select * from source;
