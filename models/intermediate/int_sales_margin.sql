
 select
    orders_id,
    date_date,
    revenue,
    quantity,
    revenue -(quantity * purchase_price) as margin
    quantity * purchase_price as purchase_cost
from
    {{ ref('stg_raw__sales') }}
left join
    {{ ref('stg_raw__product') }}
using(products_id)