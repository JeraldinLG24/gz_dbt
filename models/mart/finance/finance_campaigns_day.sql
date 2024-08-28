select
     date_date,
     total_operational_margin - ads_cost as ads_margin,
     average_basket,
     total_operational_margin,
     ads_cost,
     impression,
     click
from
    {{ ref('int_campaigns_day') }}
left join
    {{ ref('finance_days') }}
using(date_date)