#GROUP BY

select
  customer_id,
from e_commerce.orders
group by customer_id;


select
  customer_id,
from e_commerce.orders
group by 1;


select
  date(created_at) as dia,
  count(id) as quantidade_pedidos
from e_commerce.orders
group by dia;


select
  count(distinct product_id) as quantidade_produtos,
  order_id as pedido
from e_commerce.items
group by 2;


#ORDER BY

select 
  *
from e_commerce.categories
order by id desc;


select 
  *
from e_commerce.categories
order by id asc;


select 
  *
from e_commerce.orders
order by customer_id asc, status desc;


select
  customer_id
from e_commerce.orders
group by customer_id
order by 1 desc;


select
  date(created_at) as dia,
  count(id) as quantidade_pedidos
from e_commerce.orders
group by dia
order by quantidade_pedidos desc;


select
  date(created_at) as dia,
  count(id) as quantidade_pedidos
from e_commerce.orders
group by dia
order by dia desc;


select
  count(distinct product_id) as quantidade_produtos,
  order_id as pedido
from e_commerce.items
group by 2
order by quantidade_produtos asc;
