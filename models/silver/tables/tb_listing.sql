{{
    config(
        unique_key="id",
        on_schema_changes="sync_all_columns",
        matearialized="table"
    )
}}

with listings as (

    select
        id,
        property_type,
        room_type,
        host_id,
        cast(replace(replace(replace(price, '$', ''), ',', ''), '', '0') as float) as price,
        cast(number_of_reviews  as int) as number_of_reviews, 
        cast(minimum_nights  as int) as minimum_nights, 
        cast(maximum_nights  as int) as maximum_nights,
        cast(case when reviews_per_month = '' then '0' else reviews_per_month end as float) reviews_per_month
    from df_listings_selected

)

select *
from listings
