# EXERCÍCIOS PROPOSTOS I

# 1 - Quero como resultado uma tabela que contenha o id, país e estado de todos os nossos clientes.

select
  id,
  country,
  state
from e_commerce.customers;


# 2 - Selecione os preços distintos de nossos produtos, mas ordenados de forma decrescente, utilizando o DISTINCT e ORDER BY.

select
  distinct price,
from e_commerce.products
order by price desc;


# 3 - Retorne a data (naquele formato ANO-MÊS-DIA) de criação dos primeiros 5 registros da tabela customers.

select
  date(created_at)
from e_commerce.customers
order by created_at
limit 5;


# 4 - O time de marketing deseja fazer uma campanha em um estado específico. Para isso, eles te pedem os e-mails de todos os clientes que moram no Piauí.

select
  email
from e_commerce.customers
where state = 'Piauí';

# 5 - Vá até a tabela items e retorne o campo ‘total_price’ de forma distinta, mas utilizando o GROUP BY.

select 
  total_price
from e_commerce.items
group by total_price;


# 6 - Selecione todos os pedidos em que o status é cancelado OU entrega_pendente. Retorne também o mesmo resultado, mas utilizando o operador IN.

select
  *
from e_commerce.orders
where (status= 'cancelado'or status= 'entrega_pendente');


select
  *
from e_commerce.orders
where status in ('entrega_pendente', 'cancelado');


# 7 - Retorne todos os registros em que o campo ‘additionals’ é nulo na tabela customers.

select
  *
from e_commerce.customers
where additionals is null;


# 8 - Utilize o join para trazer a informação de status do pedido juntamente das informações (colunas) da tabela de itens. 

select
  o.status,
  i.*
from e_commerce.orders as o
join e_commerce.items as i on i.order_id = o.id;


# 9 - Na tabela de pedidos, além das colunas existentes, quero também informações de nome do cliente e seu telefone.

select
  o.*,
  c.first_name,
  c.cell_phone
from e_commerce.orders as o
join e_commerce.customers as c on o.customer_id = c.id;


# 10 - DESAFIO: Pesquise sobre o comando like e retorne os nomes dos produtos que tenham somente 4 caracteres.

select
  name
from e_commerce.products
where name like '____';
