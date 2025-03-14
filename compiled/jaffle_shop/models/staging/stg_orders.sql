with

source as (

    select * from `dbt-project-24`.`jaffle_shop`.`raw_orders`

),

renamed as (

    select

        ----------  ids
        id as order_id,
        store_id as location_id,
        customer as customer_id,

        ---------- numerics
        (order_total / 100.0) as order_total,
        (tax_paid / 100.0) as tax_paid,

        ---------- timestamps
        timestamp_trunc(
        cast(ordered_at as timestamp),
        day
    ) as ordered_at

    from source

)

select * from renamed