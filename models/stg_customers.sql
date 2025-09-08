{{ config(materialized='table') }}

with customers as (

    select 1 as customer_id, 'Alice' as customer_name
    union all
    select 2 as customer_id, 'Bob' as customer_name
    union all
    select 3 as customer_id, 'Charlie' as customer_name

)

select * from customers
