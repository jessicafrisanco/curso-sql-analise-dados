# CONCAT

select
  'Hello',
  'World',
  concat('Hello','World') as frase,
  concat('Hello', ' ', 'World') as frase_corrigida;

select
  concat(first_name, ' ',last_name) as sobrenome
from e_commerce.customers;

select
  id,
  concat('Quantidade de itens: ', quantity, ' - ', 'Preço Total: ', total_price) as INFOS
from e_commerce.items;

# STARTS_WITH

select
  starts_with('Homem Aranha', 'H'),
  starts_with('Homem Aranha', 'h'),
  starts_with('Homem Aranha', 'Homem');
  
select
  id,
  first_name
from e_commerce.customers
where starts_with(first_name, 'Ma') is true;
  
select
  id,
  first_name
from e_commerce.customers
where starts_with(first_name, 'Ma') is false; 
  
# LOWER

select
  count(*)
from e_commerce.exemplo_estados
where estado in ('São Paulo');

select
  count(*)
from e_commerce.exemplo_estados
where lower(estado) = 'são paulo';

select
  name,
  lower(name) as nome_minusculo
from e_commerce.categories;

# UPPER

select
  count(*)
from e_commerce.exemplo_estados
where estado in ('São Paulo');

select
  count(*)
from e_commerce.exemplo_estados
where upper(estado) = 'SÃO PAULO';

select
  name,
  upper(name) as nome_maiusculo
from e_commerce.categories;

# SPLIT

select
  split('VOCÊ JÁ ESTÁ FERA EM SQL', ' ') as palavras;
  
select
  split('VOCÊ JÁ ESTÁ FERA EM SQL', ' ')[ordinal(1)] as parte_1,
  split('VOCÊ JÁ ESTÁ FERA EM SQL', ' ')[ordinal(2)] as parte_2,
  split('VOCÊ JÁ ESTÁ FERA EM SQL', ' ')[ordinal(3)] as parte_3,
  split('VOCÊ JÁ ESTÁ FERA EM SQL', ' ')[ordinal(4)] as parte_4,
  split('VOCÊ JÁ ESTÁ FERA EM SQL', ' ')[ordinal(5)] as parte_5,
  split('VOCÊ JÁ ESTÁ FERA EM SQL', ' ')[ordinal(6)] as parte_6;
  
select distinct
  split(email, '@')[ordinal(2)]
from e_commerce.customers;

# TRIM

select
  trim('CPF: 123.456.789-00', 'CPF: '),
  trim('***(11) 9 1234-5678***:', '*'),
  trim('São Paulo');

# REPLACE

select
  'Olá, tudo bem?',
  replace('Olá, tudo bem?', 'Olá', 'Oi') as frases;
  
select
  *,
  replace(name, 'e', '&') as name_diferente
from e_commerce.categories;
 
select
  *,
  replace(name, ' e ', ' & ') as name_diferente
from e_commerce.categories;

#CHAR_LENGTH

select distinct
  status,
  char_length(status)
from e_commerce.orders;

select
  count(id) as quantidade_cancelados
from e_commerce.orders
where char_length(status) = 9;


  
