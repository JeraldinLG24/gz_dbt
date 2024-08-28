{{ config(
    materialized='table',
    full_refresh=true 
) }}

SELECT
    date_date,
    COUNT(*) AS nb_transactions,
    SUM(revenue) AS total_revenue,
    AVG(revenue) AS average_basket,
    SUM(margin) AS total_margin,
    SUM(operational_margin) AS total_operational_margin
FROM
    {{ ref('int_orders_operational') }}
GROUP BY
    date_date
ORDER BY
    date_date