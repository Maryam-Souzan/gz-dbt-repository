select
    sa.products_id
    ,sa.ordpdt
    ,sa.date_date
    ,sa.orders_id
    ,sa.revenue
    ,sa.quantity
    ,pr.purchase_price
    ,ROUND((sa.quantity*pr.purchase_price),2) AS purchase_cost
    ,ROUND(sa.revenue-(sa.quantity*pr.purchase_price),2) AS margin
FROM {{ ref("stg_raw__sales") }} sa
LEFT JOIN {{ ref("stg_raw__product") }} pr
USING (products_id)