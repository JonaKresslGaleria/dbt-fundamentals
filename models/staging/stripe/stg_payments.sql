with payments as (
    select 
        ID AS payment_id
        ,ORDERID AS order_id
        ,TO_DECIMAL(AMOUNT/100) AS amount
        ,STATUS AS payment_status
        ,paymentmethod as payment_method
        ,created as created_at
    from {{source('stripe','payment')}}
)
select * from payments