-- URL: https://www.hackerrank.com/challenges/weather-observation-station-12/problem

select distinct city
from station
where lower(substr(city, 1, 1)) not in ('a', 'e', 'i', 'o', 'u')
  and lower(substr(city, -1, 1)) not in ('a', 'e', 'i', 'o', 'u');
