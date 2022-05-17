# Comandos de restrição
  # WHERE (filtro de linha)
      
select 
  *
from e_commerce.items
where quantity = 4;


select 
  *
from e_commerce.items
where quantity between 2 and 4;


select 
  id,
  state
from e_commerce.customers
where state = 'Acre';

# No WHERE podem ser usadas duas condições juntas

select 
  *
from e_commerce.customers
where state = 'Acre'and email is not null;


select 
  *
from e_commerce.customers
where state = 'São Paulo'
      or state = 'Acre' and street is not null;

select 
  *
from e_commerce.customers
where (state = 'São Paulo'or state = 'Acre') 
      and street is not null;

select 
  *
from e_commerce.orders
where status in ('entrega_pendente', 'cancelado');
