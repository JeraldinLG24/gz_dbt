 select
     orders_id,
     date_date,
     revenue,
     quantity,
     revenue -(quantity * purchase_price) as margin,
     (revenue -(quantity * purchase_price)) + shipping_fee - logCost - ship_cost as operational_margin
from
    {{ref('stg_raw__sales')}}
left join
    {{ref('stg_raw__product')}}
using(products_id)
left join
    {{ref('stg_raw__ship')}}
using(orders_id)