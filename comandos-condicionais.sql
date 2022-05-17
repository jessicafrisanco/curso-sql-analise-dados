#Comandos Condicionais
  #Case when...then...else...end)

select 
  id, 
  name, 
  case 
  when name = 'Moda e Acessórios' then 'Sim, é moda e acessórios'
  when name = 'Livros' then 'Sim, é livros'
  else 'Não encontrado'
  end as caso1
from e_commerce.categories; 

select
  id,
  case
  when id between 0 and 5 then 'Primeiro Verdadeiro'
  when id between 3 and 5 then 'Segundo Verdadeiro'
  when id between 3 and 7 then 'Terceiro Verdadeiro'
  end as caso2,
  name 
from e_commerce.categories;


select distinct 
  state,
  case 
  when state in ('São Paulo', 'Rio de Janeiro', 'Minas Gerais', 'Espírito Santo') then 'Sudeste'
  else 'Demais Regiões'
  end as regiao
from e_commerce.customers
where state is not null;

#IF

select 
  id, 
  name,
  if(name = 'Moda e Acessórios', 'Sim, é Moda e Acessórios', 
  if(name = 'Livros', 'Sim, é Livros', 'Não Encontrado')) as If2
from e_commerce.categories;


#Coalesce

select
  id,
  first_name,
  email,
  state,
  coalesce (state, 'Opa, estado nulo') as state_modificado
from e_commerce.customers;


select
  id,
  first_name,
  email,
  state,
  additionals,
  coalesce (cast(number as string), additionals) as primeiro_nulo,
  coalesce (cast(number as string), additionals, 'Não Encontrado') as primeiro_nulo2
from e_commerce.customers;


