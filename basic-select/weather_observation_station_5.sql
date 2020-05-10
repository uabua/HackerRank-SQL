-- URL: https://www.hackerrank.com/challenges/weather-observation-station-5/problem

select *
from (select city, length(city)
      from station
      where length(city) = (select min(length(city)) from station)
      order by city asc)
where rownum = 1
UNION ALL
select city, length(city)
from station
where length(city) = (select max(length(city)) from station);
