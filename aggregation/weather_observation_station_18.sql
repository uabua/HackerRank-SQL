-- URL: https://www.hackerrank.com/challenges/weather-observation-station-18/problem

select round(abs((max(long_w) - min(long_w))) + abs((max(lat_n) - min(lat_n))), 4)
from station; 
