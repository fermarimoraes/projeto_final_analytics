{{ config(materialized='table') }}

with total as (
    select 
        tc.listing_id as ID,
        extract(year from tc."date") as ano, 
        sum(tc.adjusted_price) as total
    from tb_calendar tc 
    group by ID, ano
    order by ID, ano
)

select * from total
