 select
     orders_id,
     date_date,
     revenue,
     quantity,
     revenue -(quantity * purchase_price) as margin,
     quantity * purchase_price as purchase_cost
from
    {{ref('int_sales_margin')}}
left join
    {{ref('stg_raw__ship')}}
using(orders_id)