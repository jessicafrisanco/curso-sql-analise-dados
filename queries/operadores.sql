# Between (entre)
select 
  2 between 0 and 10, 
  -4 between 0 and 25; 

select 
  *
from e_commerce.products
where price between 10 and 50;

# Like (como)
   # A % atrás "aceita" tudo que vem após o "M"

select 
  first_name
from e_commerce.customers
where first_name like "M%";

# A % atrás e na frente "aceita" tudo que vem antes e após o M

select 
  *
from e_commerce.customers
where first_name like "%m%" or first_name like "M%";

# A % na frente "aceita" tudo que vem antes da letra "O"

select 
  * 
from e_commerce.customers
where state like "%o";

# In (está contido)

select
  * 
from e_commerce.customers
where state in ("Alagoas, Piauí");

select
  *
from e_commerce.products
where price in (75, 10, 15);

# Is null (é nulo)

select
  *
from e_commerce.customers
where email is null; 


# Is not null (não é nulo)

select 
  *
from e_commerce.customers
where email is not null; 

# Is true (é verdadeiro)

select 
*
from `bigquery-public-data`.chicago_crime.crime
where arrest is true;


#Is false (é falso)

select 
  *
from `bigquery-public-data`.chicago_crime.crime
where arrest is false;






