/*
    Orders, Customers and Payment Information needed!
*/

with orders as (
     select 
        customer_id
        ,order_id
     from {{ref('stg_orders')}} 
 ),

 payments as (
     select
        order_id
        ,amount
        ,payment_status
     from {{ref('stg_payments')}}
     where payment_status = 'success'
 )

 select 
    orders.customer_id
    ,orders.order_id
    ,payments.amount
from orders
left join payments
    on orders.order_id = payments.order_id







