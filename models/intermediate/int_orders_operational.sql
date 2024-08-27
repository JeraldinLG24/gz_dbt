 select
     orders_id,
     date_date,
     revenue,
     quantity,
     margin,
     margin + shipping_fee - logCost - ship_cost as operational_margin
from
    {{ref('int_orders_margin')}}
left join
    {{ref('stg_raw__ship')}}
using(orders_id)