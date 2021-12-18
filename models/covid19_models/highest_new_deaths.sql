with source as (
    select * from {{ source('covid19_data', 'COVID_19_INDONESIA_ARUN_SURYAN') }}

),

renamed as (
    select DATE,NEW_DEATHS from source order by NEW_DEATHS DESC LIMIT 1
)

select * from renamed