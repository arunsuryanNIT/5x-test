with source_covid19_data as (
    select * from {{ source('covid19_data', 'COVID_19_INDONESIA_ARUN_SURYAN') }}
)

final_result as (
    select * from source_covid19_data
)

select * from final_result