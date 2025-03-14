
    
    

with dbt_test__target as (

  select supply_uuid as unique_field
  from `dbt-project-24`.`dbt_mesh`.`stg_supplies`
  where supply_uuid is not null

)

select
    unique_field,
    count(*) as n_records

from dbt_test__target
group by unique_field
having count(*) > 1


