-- URL: https://www.hackerrank.com/challenges/asian-population/problem

select sum(ci.population)
from city ci
         join country co on co.code = ci.countrycode
where co.continent = 'Asia';
