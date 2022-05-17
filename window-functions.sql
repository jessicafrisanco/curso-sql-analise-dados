# FIRST VALUE

select
  customer_id,
  created_at,
  first_value(created_at) over(partition by customer_id order by created_at) as primeira_compra,
  timestamp_diff(created_at, first_value(created_at) over(partition by customer_id order by created_at), day) as dia_desde_primeira_compra
from e_commerce.orders
where status = 'entregue'
order by 1,2;

# LAST_VALUE

select
  customer_id,
  created_at,
  last_value(created_at) over(partition by customer_id order by created_at
  rows between unbounded preceding and unbounded following) as ultima_compra
from e_commerce.orders
where status = 'entregue'
order by 1,2;

# LEAD

select
  customer_id,
  created_at,
  lead(created_at) over(partition by customer_id order by created_at) as data_proxima_compra 
from e_commerce.orders
where status = 'entregue'
order by 1,2;

# LAG

select
  customer_id,
  round(avg(dias_desde_compra_anterior),0) as tempo_medio_entre_uma_compra_e_outra
from
  (select
    customer_id,
    created_at,
    lag(created_at) over(partition by customer_id order by created_at) as data_compra_anterior,
    timestamp_diff(created_at, lag(created_at) over(partition by customer_id order by created_at), day) dias_desde_compra_anterior
  from e_commerce.orders
  where status = 'entregue'
  order by 1,2)
group by 1
order by 1;

# RANK

select
  customer_id,
  created_at,
  rank() over(partition by customer_id order by created_at) as rank
from e_commerce.orders
where status = 'entregue'
order by 1,2;

# ROW_NUMBER

select
  category_id,
  rank() over(order by category_id asc) as rank,
  row_number() over(order by category_id asc) as numero_linha
from e_commerce.products;

# FUNÇÕES DE AGREGAÇÃO

select
  customer_id,
  created_at,
  min(created_at) over(partition by customer_id) as primeira_compra,
  max(created_at) over(partition by customer_id) as ultima_compra,
  count(created_at) over(partition by customer_id) as numero_compras
from e_commerce.orders
where status = 'entregue'
order by 1,2;
