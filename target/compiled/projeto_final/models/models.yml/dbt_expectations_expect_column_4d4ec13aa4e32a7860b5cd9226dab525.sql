





    with grouped_expression as (
    select
        
        
    
  avg_price >= min_price as expression


    from "kuziztee"."public"."tb_listing_avg"
    

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




