with source as (
    select * from {{ source('covid19_data', 'COVID_19_INDONESIA_ARUN_SURYAN') }}

),

renamed as (
    select DATE,NEW_CASES from source
)

select * from renamed