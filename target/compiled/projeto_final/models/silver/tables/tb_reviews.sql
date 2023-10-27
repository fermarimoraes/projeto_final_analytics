

with reviews as (

    select
        listing_id,
        cast(date as date) as date,
        reviewer_id,
        reviewer_name,
        comments 
    from df_reviews_selected drs 

)

select *
from reviews