with source as (
    select * from {{ source('covid19_data', 'COVID_19_INDONESIA_ARUN_SURYAN') }}

),

renamed as (
    select LOCATION AS PROVINCE,GROWTH_FACTOR_OF_NEW_DEATHS from source where LOCATION_LEVEL='Province'
)

select * from renamed