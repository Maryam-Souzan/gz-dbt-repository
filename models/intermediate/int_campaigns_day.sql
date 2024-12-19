select
    date_date,
    SUM(CAST(ads_cost AS FLOAT64)) AS ads_cost,
    SUM(impression) AS impression,
    SUM(click) AS click
from {{ ref('int_campaigns') }}
group by date_date
order by date_date DESC
