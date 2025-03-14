with

source as (

    select * from `dbt-project-24`.`jaffle_shop`.`raw_stores`
),

renamed as (

    select

        ----------  ids
        id as location_id,

        ---------- text
        name as location_name,

        ---------- numerics
        tax_rate,

        ---------- timestamps
        opened_at as location_opened_at

    from source

)

select * from renamed