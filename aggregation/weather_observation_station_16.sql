-- URL: https://www.hackerrank.com/challenges/weather-observation-station-16/problem

select round(min(lat_n), 4)
from station
where lat_n > 38.7780;
