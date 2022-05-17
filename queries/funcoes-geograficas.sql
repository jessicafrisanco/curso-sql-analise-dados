# ST_GEOGPOINT, ST_DISTANCE, ST_X, ST_Y

select
  unique_key,
  latitude,
  longitude,
  location,
  st_geogpoint(longitude,latitude) as ponto_no_espaco,
  st_geogpoint(-97.7714119,30.2576125) as ponto_parque,
  st_distance(st_geogpoint(longitude,latitude), st_geogpoint(-97.7714119,30.2576125))as distancia_entre_solic_e_parque,
  st_x(st_geogpoint(-97.7714119,30.2576125)) as longitute_parque,
  st_y(st_geogpoint(-97.7714119,30.2576125)) as latitude_parque,
from `bigquery-public-data.austin_311.311_service_requests` 
where location is not null
limit 100
