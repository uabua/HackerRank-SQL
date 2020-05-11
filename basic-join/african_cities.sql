-- URL: https://www.hackerrank.com/challenges/african-cities/problem

select ci.name
from city ci
         join country co on co.code = ci.countrycode
where co.continent = 'Africa';
