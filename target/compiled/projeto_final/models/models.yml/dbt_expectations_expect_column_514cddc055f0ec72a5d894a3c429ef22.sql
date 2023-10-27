




    with grouped_expression as (
    select
        
        
    
  id is not null as expression


    from "kuziztee"."public"."tb_listing"
    

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



