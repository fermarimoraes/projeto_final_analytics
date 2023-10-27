select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      with relation_columns as (

        
        select
            cast('LISTING_ID' as TEXT) as relation_column,
            cast('TEXT' as TEXT) as relation_column_type
        union all
        
        select
            cast('DATE' as TEXT) as relation_column,
            cast('DATE' as TEXT) as relation_column_type
        union all
        
        select
            cast('ADJUSTED_PRICE' as TEXT) as relation_column,
            cast('DOUBLE PRECISION' as TEXT) as relation_column_type
        
        
    ),
    test_data as (

        select
            *
        from
            relation_columns
        where
            relation_column = 'LISTING_ID'
            and
            relation_column_type not in ('TEXT')

    )
    select *
    from test_data
      
    ) dbt_internal_test