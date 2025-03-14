with orders as (
    select * from `dbt-project-24`.`dbt_mesh`.`int_orders`
),

order_items as (
    select * from `dbt-project-24`.`dbt_mesh`.`stg_order_items`
),

joined as (
    select 
        order_items.*,
        orders.* except (order_id)
        
    from orders 
        inner join order_items 
            on orders.order_id = order_items.order_id
)

select * from joined