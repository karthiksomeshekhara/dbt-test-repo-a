{{ config(materialized='table') }}

with orders as (

    select 101 as order_id, 1 as customer_id, 250 as amount
    union all
    select 102 as order_id, 1 as customer_id, 125 as amount
    union all
    select 103 as order_id, 2 as customer_id, 300 as amount
    union all
    select 104 as order_id, 3 as customer_id, null as amount

)

select * from orders
