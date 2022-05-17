#1 - Retorne em uma só consulta os valores de média, máximo, mínimo, contagem e soma do campo ‘total_price’ da tabela items.

select
  round(avg(total_price),2) as preco_medio,
  max(total_price) as preco_maximo,
  min(total_price) as preco_minimo,
  count(total_price) as preco_contagem,
  sum(total_price) as preco_soma
from e_commerce.items;


#2 - Retorne a quantidade de pedidos de cada status por dia, ordenando pelo dia, de forma decrescente.

select
  status as status_pedido,
  date(created_at) as data_pedido,
  count(id) as quantidade_pedido
from e_commerce.orders 
group by 1,2
order by 2 desc;


#3 - Retorne a quantidade total de itens por pedido.

select
  order_id as numero_pedido,
  sum(quantity) as quantidade_total_itens
from e_commerce.items
group by 1;


#4 - Na base de dados ‘covid19_italy’ e tabela ‘data_by_region’ encontre a coluna ‘tests_performed’. Retorne a soma de testes realizados por dia (considerando todas as regiões).

select
  date(date) as data,
  sum(tests_performed) as soma_testes_realizados
from `bigquery-public-data`.covid19_italy.data_by_region
group by 1
order by 1;


#5 - DESAFIO: Retorne a diferença da soma de recuperados (coluna recovered) com a soma de mortes (coluna deaths) por dia, apenas para a região Toscana.

select
  region_name as regiao,
  date(date) as data,
  sum(recovered) - sum(deaths) as diferenca_soma
from `bigquery-public-data`.covid19_italy.data_by_region
where region_name = 'Toscana'
group by 1, 2
order by 2;


