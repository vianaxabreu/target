with

source as (

    select * from `dbt-project-24`.`jaffle_shop`.`raw_items`

),

renamed as (

    select

        ----------  ids
        id as order_item_id,
        order_id,
        sku as product_id

    from source

)

select * from renamed