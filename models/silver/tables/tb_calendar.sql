{{
    config(
        unique_key="listing_id",
        on_schema_changes="sync_all_columns",
        materialized="table"
    )
}}

with calendar as (

    select 
        listing_id,
        cast(date as datetime) as date,
        cast(replace(adjusted_price, ',', '') as float) as adjusted_price
    from df_calendar_selected

)

select *
from calendar