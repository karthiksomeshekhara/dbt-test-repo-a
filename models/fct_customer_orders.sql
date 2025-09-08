{{ config(materialized='table') }}

with orders as (
    select * from {{ ref('stg_orders') }}
),

customers as (
    select * from {{ ref('stg_customers') }}
),

joined as (
    select
        c.customer_id,
        c.customer_name,
        count(o.order_id) as total_orders,
        sum(o.amount) as total_amount
    from customers c
    left join orders o
      on c.customer_id = o.customer_id
    group by c.customer_id, c.customer_name
)

select * from joined
