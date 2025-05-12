select
  order_id,
  sum(amount)
from {{ ref('orders') }}
group by 1
having sum(amount) < 0