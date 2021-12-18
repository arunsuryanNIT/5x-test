with source as (
    select * from {{ source('covid19_data', 'COVID_19_INDONESIA_ARUN_SURYAN') }}

),

renamed as (
    select LOCATION AS PROVINCE,TOTAL_CASES, from source where LOCATION_LEVEL='Province'
)

select * from renamed