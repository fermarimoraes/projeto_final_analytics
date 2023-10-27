

with calendar as (

    select 
        listing_id,
        cast(date as date) as date,
        cast(replace(adjusted_price, ',', '') as float) as adjusted_price
    from df_calendar_selected

)

select *
from calendar