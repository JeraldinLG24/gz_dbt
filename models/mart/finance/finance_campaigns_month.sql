SELECT
    EXTRACT(YEAR FROM date_date) AS year,
    EXTRACT(MONTH FROM date_date) AS month,
    SUM(ads_margin) AS ads_margin,
    AVG(average_basket) AS average_basket,
    SUM(total_operational_margin) AS total_operational_margin,
    SUM(ads_cost) AS ads_cost,
    SUM(impression) AS impression,
    SUM(click) AS click
FROM {{ ref('finance_campaigns_day') }}
GROUP BY year, month