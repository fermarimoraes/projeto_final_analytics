
  create view "kuziztee"."public"."my_second_dbt_model__dbt_tmp"
    
    
  as (
    -- Use the `ref` function to select from other models

select *
from "kuziztee"."public"."my_first_dbt_model"
where id = 1
  );