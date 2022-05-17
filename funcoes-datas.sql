# EXTRACT

select
  current_date as exemplo1,
  extract(year from current_date) as exemplo2,
  extract(month from current_date) as exemplo3,
  extract(dayofweek from current_date) as exemplo4,
  current_timestamp as exemplo5,
  extract(hour from current_timestamp) as exemplo6,
  extract(hour from current_timestamp at time zone 'America/Sao_Paulo') as exemplo7,
  extract(second from current_timestamp at time zone 'America/Sao_Paulo') as exemplo8,
  extract(date from current_timestamp at time zone 'America/Sao_Paulo') as exemplo9,
  extract(time from current_timestamp at time zone 'America/Sao_Paulo') as exemplo10;
  
select
  count(distinct id) as numero_pedidos,
  extract(dayofweek from created_at) as dia_da_semana,
  case
    when extract(dayofweek from created_at) = 1 then 'Domingo'
    when extract(dayofweek from created_at) = 2 then 'Segunda'
    when extract(dayofweek from created_at) = 3 then 'Terça'
    when extract(dayofweek from created_at) = 4 then 'Quarta'
    when extract(dayofweek from created_at) = 5 then 'Quinta'
    when extract(dayofweek from created_at) = 6 then 'Sexta'
    when extract(dayofweek from created_at) = 7 then 'Sábado'
   end as dia_semana
from e_commerce.orders
group by 2,3
order by 2;

# DATE

select
  date(2020,06,12) as data,
  current_timestamp,
  date(current_timestamp),
  date(current_timestamp, 'America/Sao_Paulo'),
  date(current_datetime) as datetime_;

select
  id,
  created_at,
  date(created_at) as data
from e_commerce.customers;

select
  count(distinct id) as num_pedidos,
  date(created_at) as dia
from e_commerce.orders
group by dia
order by dia;

# DATETIME

select
  datetime(2020,06,12,21,05,03) as date_and_time,
  current_timestamp as coluna2,
  datetime(current_timestamp) as coluna3,
  datetime(current_timestamp, 'America/Sao_Paulo'),
  datetime(current_date);

select
  id,
  created_at,
  datetime(created_at) as date_and_time,
  datetime(created_at, 'America/Sao_Paulo') as date_and_time2
from e_commerce.customers;

# TIMESTAMP

select
  timestamp('2008-12-25 15:30:00') as exemplo1,
  timestamp('2008-12-25 15:30:00 America/Sao_Paulo') as exemplo2,
  timestamp('2008-12-25 15:30:00', 'America/Sao_Paulo') as exemplo3,
  timestamp(current_datetime) as exemplo4,
  timestamp(current_date) as exemplo5,
  current_timestamp,
  timestamp(current_datetime('America/Sao_Paulo')) as exemplo6,
  timestamp(current_date('America/Sao_Paulo')) as exemplo7;
  
# CURRENT_DATE, CURRENT_DATETIME, CURRENT_TIMESTAMP

select
  current_date as exemplo1,
  current_date() as exemplo2,
  current_date('America/Sao_Paulo') as exemplo3,
  current_date('Asia_Tokyo') as exemplo4,
  current_datetime as exemplo5,
  current_datetime() as exemplo6,
  current_datetime('Asia_Tokyo') as exemplo7,
  current_datetime('America/Sao_Paulo') as exemplo8,
  current_timestamp as exemplo9,
  current_timestamp() as exemplo10;
  #current_timestamp('America/Sao_Paulo') as exemplo11;
  
select
  *
from `bigquery-public-data`.covid19_italy.data_by_region
where date(date) = current_date;

# DATE_ADD, DATETIME_ADD, TIMESTAMP_ADD

select
  current_date as exemplo1,
  date_add(current_date, interval 2 day) as exemplo2,
  date_add(current_date, interval 1 month) as exemplo3,
  date_add(current_date, interval 1 year) as exemplo4,
  current_timestamp as exemplo5,
  timestamp_add(current_timestamp, interval 3 hour) as exemplo6,
  datetime_add(current_datetime, interval 3 hour) as exemplo7,
  date_add(date(2020,01,01), interval 2 day) as exemplo8,
  date_add(date '2020-01-01', interval 2 day) as exemplo9;
  
select
  *
from `bigquery-public-data`.covid19_italy.data_by_region
where date(date) between date(2020,07,05) and date_add(date(2020,07,05), interval 3 day);

# DATE_SUB, DATETIME_SUB, TIMESTAMP_SUB

select
  current_date as exemplo1,
  date_sub(current_date, interval 2 day) as exemplo2,
  date_sub(current_date, interval 1 month) as exemplo3,
  date_sub(current_date, interval 1 year) as exemplo4,
  current_timestamp as exemplo5,
  timestamp_sub(current_timestamp, interval 3 hour) as exemplo6,
  datetime_sub(current_datetime, interval 3 hour) as exemplo7,
  date_sub(date(2020,01,01), interval 2 day) as exemplo8,
  date_sub(date '2020-01-01', interval 2 day) as exemplo9;

select
  *
from e_commerce.orders
where date(created_at) between date_sub(current_date, interval 800 day) and current_date;

# DATE_DIFF, DATETIME_DIFF, TIMESTAMP_DIFF

select
  date_diff('2020-08-05','2020-08-01', day) as exemplo1,
  datetime_diff('2020-08-05T17:00:00', '2020-08-05T14:00:00', hour) as exemplo2,
  timestamp_diff('2020-08-05T17:30:00', '2020-08-05T17:00:00', minute) as exemplo3;
  
select
  c.id,
  min(timestamp_diff(o.created_at, c.created_at, day)) as dias_ate_primeira_compra
from e_commerce.customers c
join e_commerce.orders o on c.id = o.customer_id
group by 1;

# FORMAT_DATE, FORMAT_DATETIME, FORMAT_TIMESTAMP

select
  current_date() as exemplo1,
  format_date('%b %d', current_date()) as exemplo2,
  format_date('%Y-%m', current_date()) as exemplo3,
  format_date('%b %d,%A', current_date()) as exemplo4,
  format_date('%D', current_date()) as exemplo5,
  current_datetime () as exemplo6,
  format_datetime('%T', current_datetime()) as exemplo7;
  
  
