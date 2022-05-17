#JOIN

select
  i.id as item_id,
  i.order_id,
  i.quantity,
  i.total_price,
  i.product_id,
  p.id,
  p.name
from e_commerce.items as i
join e_commerce.products as p on i.product_id = p.id;
  
# LEFT JOIN (SOMENTE ESQUERDA)

select distinct
  a.user_id as user_id_tabela_a,
  c.user_id as user_id_tabela_c,
  a.user_name,
  c.price
from banco_teste.acessos a
left join banco_teste.compras c on a.user_id = c.user_id;

select distinct
  a.user_id as user_id_tabela_a,
  c.user_id as user_id_tabela_c,
  a.user_name,
  c.price
from banco_teste.acessos a
left join banco_teste.compras c on a.user_id = c.user_id
where c.user_id is null;

# RIGHT JOIN (SOMENTE DIREITA)

select distinct
  a.user_id as user_id_tabela_a,
  c.user_id as user_id_tabela_c,
  c.user_name,
  c.price,
  a.type
from banco_teste.acessos a
right join banco_teste.compras c on a.user_id = c.user_id;

select distinct
  a.user_id as user_id_tabela_a,
  c.user_id as user_id_tabela_c,
  c.user_name,
  c.price,
  a.type
from banco_teste.acessos a
right join banco_teste.compras c on a.user_id = c.user_id
where a.user_id is null;

# FULL JOIN

select distinct
  a.user_id as user_id_tabela_a,
  c.user_id as user_id_tabela_c,
  c.user_name as user_name_tabela_c,
  a.user_name as user_name_tabela_a,
  c.price,
  a.type
from banco_teste.acessos a
full join banco_teste.compras c on a.user_id = c.user_id;


# FULL JOIN (SOMENTE EXTERNA: SEM INTERSECÇÃO)

select distinct
  a.user_id as user_id_tabela_a,
  c.user_id as user_id_tabela_c,
  c.user_name as user_name_tabela_c,
  a.user_name as user_name_tabela_a,
  c.price,
  a.type
from banco_teste.acessos a
full join banco_teste.compras c on a.user_id = c.user_id
where a.user_id is null or c.user_id is null;


# FULL JOIN EXEMPLO2

select distinct
  a.user_id as user_id_tabela_a,
  c.user_id as user_id_tabela_c,
  u.id as user_id_tabela_u,
  c.user_name as user_name_tabela_c,
  a.user_name as user_name_tabela_a,
  c.price,
  a.type,
  u.user_name as user_name_tabela_u
from banco_teste.acessos a
full join banco_teste.compras c on a.user_id = c.user_id
full join banco_teste.usuarios u on coalesce(a.user_id, c.user_id) = u.id;
