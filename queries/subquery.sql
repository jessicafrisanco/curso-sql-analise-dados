# SUBQUERY DE TABELA

select
  avg(num_acessos) as media_num_acessos,
from (
    select
      u.id as user_id,
      u.user_name,
      count(a.id) as num_acessos
     from banco_teste.usuarios u 
     left join banco_teste.acessos a on u.id = a.user_id
     group by 1,2);
      
select
  count(distinct o.id) as num_acessos,
  customer_id,
from e_commerce.orders o
join(
    select distinct
      c.id
    from e_commerce.customers c
    where date(c.created_at) between '2018-01-01'and '2018-01-31') T on T.id = o.customer_id
where status = 'entregue'
group by 2
order by 1 desc;

# SUBQUERY COMO COLUNA

select
  u.id as user_id,
  u.user_name,
  (select
    count(a.id),
    from banco_teste.acessos a
    where a.user_id = u.id) as num_acessos
from banco_teste.usuarios u
group by 1,2;

# SUBQUERY COMO COLUNA E TAMBÉM COMO FILTRO

select
  u.id as user_id,
  u.user_name,
  (select
    count(a.id),
    from banco_teste.acessos a
    where a.user_id = u.id) as num_acessos
from banco_teste.usuarios u
where
  (select
  count(a.id),
  from banco_teste.acessos a
  where a.user_id = u.id) > 0
group by 1,2;

select
  u.id as user_id,
  u.user_name,
  (select
    count(a.id),
    from banco_teste.acessos a
    where a.user_id = u.id) as num_acessos
from banco_teste.usuarios u
where
  (select
  count(a.id),
  from banco_teste.acessos a
  where a.user_id = u.id) = 0
group by 1,2;

      
 
