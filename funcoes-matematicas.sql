#ABS

select
  1,
  12,
  abs(1),
  abs(-12),
  abs(0);
  
# RAND

select
  rand() as zero_um,
  10*rand() as zero_dez,
  1000000*rand() as zero_milhao;

select
  *
from e_commerce.customers
order by rand() limit 50;

# SQRT

select
  sqrt(4),
  sqrt(5),
  sqrt(100),
  sqrt(0);
  
# POW

select
  pow (2,2),
  pow (2,3),
  pow (9,1/2),
  pow (100000,0),
  pow (10,-1),
  pow (10,-2);
  
# LOG (maior que 0 e diferente de 1; valor maior que zero)

select
  log(49,7),
  log(10,10),
  log(1,10),
  log(10,0.1)
  
# condições não aceitas: log (0,10), log (-1,10), log (100,1),log (10,0)

# ROUND

select
  round(0.4455468563,1),
  round(0.4555468563,1);
  
select
  avg(price) as media_preco,
  round(avg(price),2) as media_preco2,
  round(avg(price),0) as media_preco3
from e_commerce.products;

# MOD (resto da divisão)

select
  mod(10,2),
  mod(5,2),
  mod(10,4),
  mod(-10,4),
  mod(-10,-4);
  
select
  *,
  case when mod (id, 2) = 0 then 'par'
  when mod (id, 2) != 0 then 'impar'
  end as paridade
from e_commerce.categories;

#Casos que não funcionam mod(2,0)
 
# SIN (pi = 3.1416)

select
  sin(0),
  round(sin(3.1416/6),1),
  round(sin(3.1416/2),1);
  
  
  
