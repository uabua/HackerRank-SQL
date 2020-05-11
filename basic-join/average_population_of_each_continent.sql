-- URL: https://www.hackerrank.com/challenges/average-population-of-each-continent/problem

select co.continent, floor(avg(ci.population))
from city ci
         join country co on co.code = ci.countrycode
group by co.continent; 
