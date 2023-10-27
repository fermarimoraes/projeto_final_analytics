




    with grouped_expression as (
    select
        
        
    
  listing_id is not null as expression


    from "kuziztee"."public"."tb_calendar"
    

),
validation_errors as (

    select
        *
    from
        grouped_expression
    where
        not(expression = true)

)

select *
from validation_errors



