

with listings as (

    select 
        tl.host_id, 
        tl.id,
        avg(tl.price) as avg_price,
        avg(tc.adjusted_price) as avg_adjusted_price,
        min(tl.price) as min_price, 
        max(tl.price) as max_price,
        count(*) as qtd
    from tb_listing tl 
    join tb_calendar tc on (tl.id = tc.listing_id)
    group by tl.host_id, tl.id
    order by max_price desc

)

select *
from listings