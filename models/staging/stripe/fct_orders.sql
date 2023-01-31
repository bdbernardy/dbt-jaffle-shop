SELECT
  o.order_id,
  o.customer_id,
  SUM(p.amount) AS amount
FROM {{ref('stg_payments')}} p
INNER JOIN {{ref('stg_orders')}} o ON o.order_id = p.order_id
GROUP BY 1, 2
