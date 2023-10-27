{{ config(materialized='table') }}

with total as (
    select 
        tc.listing_id as ID,
        extract(year from tc."date") as ano, 
        extract(month from tc."date") as mes,
        sum(tc.adjusted_price) as total
    from tb_calendar tc 
    group by ID, ano, mes
    order by ID, ano, mes
)

select * from total
