select
    products_id
    ,date_date
    ,orders_id
    ,revenue
    ,quantity
    ,purchase_price
    ,ROUND((sa.quantity*pr.purchase_price),2) AS purchase_cost
    ,ROUND(sa.revenue-(sa.quantity*pr.purchase_price),2) AS margin
FROM {{ ref("stg_raw__sales") }} sa
LEFT JOIN {{ ref("stg_raw__product") }} pr
USING (products_id)