select
    *
FROM {{ ref("stg_raw__sales") }} sa
LEFT JOIN {{ ref("stg_raw__product") }} pa
USING (products_id)
