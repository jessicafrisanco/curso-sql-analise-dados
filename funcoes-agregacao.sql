#COUNT

select
  count(*) as numero_linha
from e_commerce.customers;

select
  count(distinct status) as status_distintos,
  count(status) as status
from e_commerce.orders;

select
  count(id) as numero_pedidos,
  format_timestamp('%Y-%m', created_at) as mes
from e_commerce.orders
group by mes
order by mes;

select
  count (id) as numero_cadastrados,
  format_timestamp('%Y', created_at) as ano
from e_commerce.customers
group by ano
order by ano;

select
  count(case when state = 'Acre' then id end) as numero_cadastrados_acre,
  format_timestamp('%Y', created_at) as ano
from e_commerce.customers
group by ano
order by ano;

#MAX

select
  max(price) as preco_maximo
from e_commerce.products;

select
  max(price) as preco_maximo,
  c.name
from e_commerce.products as p
join e_commerce.categories as c on c.id = p.category_id
group by c.name;

select
  max(created_at) as ultima_compra_em,
  customer_id
from e_commerce.orders
group by customer_id
order by customer_id;

select
  max(case when c.name = 'Moda e Acessórios'then price end) as preco_maximo
from e_commerce.products as p
join e_commerce.categories as c on c.id = p.category_id;

#MIN

select
  min(price) as preco_minimo
from e_commerce.products;

select
  min(price) as preco_minimo,
  max(price) as preco_maximo,
  c.name
from e_commerce.products as p
join e_commerce.categories as c on c.id = p.category_id
group by c.name;

select
  min(created_at) as primeira_compra_em,
  max(created_at) as ultima_compra_em,
  customer_id
from e_commerce.orders
group by customer_id
order by customer_id;

select
  min(case when c.name = 'Moda e Acessórios'then price end) as preco_minimo
from e_commerce.products as p
join e_commerce.categories as c on c.id = p.category_id;

#SUM

select
  sum(total_price) as venda_total
from e_commerce.items;

select
  sum(total_price) as venda_total,
  date(created_at) as dias
from e_commerce.items as i
join e_commerce.orders as o on o.id=i.order_id
group by 2
order by 2;

select 
  sum(if(state = 'Acre', 1, 0)) as usuario_acre
from e_commerce.customers;

# AVG (average)

select
  avg(total_confirmed_cases) as casos_confirmados
from `bigquery-public-data`.covid19_italy.data_by_region;

select
  round(avg(total_confirmed_cases),2) as casos_confirmados,
  region_name
from `bigquery-public-data`.covid19_italy.data_by_region
group by 2
order by 1 desc;


