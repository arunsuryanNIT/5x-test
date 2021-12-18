with source as (
    select * from {{ source('covid19_data', 'COVID_19_INDONESIA_ARUN_SURYAN') }}

),

renamed as (
    select LOCATION,TOTAL_DEATHS AS PROVINCE from source where LOCATION_LEVEL='Province' ORDER BY TOTAL_DEATHS DESC
)

select * from renamed