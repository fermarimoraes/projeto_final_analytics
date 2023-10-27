
  create view "kuziztee"."public"."tb_calendar__dbt_tmp"
    
    
  as (
    

with calendar as (

    select 
        listing_id,
        cast(date as date) as date,
        cast(replace(adjusted_price, ',', '') as float) as adjusted_price
    from df_calendar_selected

)

select *
from calendar
  );