SELECT
om.orders_id
,om.date_date
,om.margin
,om.quantity
,om.revenue
,om.purchase_cost
,om.margin
,sh.shipping_fee
,sh.ship_cost
,sh.logcost
,ROUND(om.margin+sh.shipping_fee-sh.logcost-sh.ship_cost ,2) AS operational_margin
FROM {{ ref('int_orders_margin') }} om
LEFT JOIN {{ ref('stg_raw__ship') }} sh
USING (orders_id)
ORDER BY orders_id DESC