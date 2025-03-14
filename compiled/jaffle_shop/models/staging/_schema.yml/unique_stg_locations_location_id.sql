
    
    

with dbt_test__target as (

  select location_id as unique_field
  from `dbt-project-24`.`dbt_mesh`.`stg_locations`
  where location_id is not null

)

select
    unique_field,
    count(*) as n_records

from dbt_test__target
group by unique_field
having count(*) > 1


