SELECT
    date_date
    ,ROUND((operational_margin-ads_cost),1) AS ads_margin
    ,average_basket
    ,operational_margin
    ,ads_cost
    ,impression AS ads_impression
    ,click AS ads_clicks
    ,quantity
    ,revenue
    ,purchase_cost
    ,margin
    ,shipping_fee
    ,logcost
    ,ship_cost
FROM {{ ref('finance_days') }}
FULL OUTER JOIN {{ ref('int_campaigns_day') }}
    USING (date_date)
ORDER BY date_date DESC

