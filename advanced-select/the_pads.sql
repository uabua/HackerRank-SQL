-- URL: https://www.hackerrank.com/challenges/the-pads/problem

select name || '(' || substr(occupation, 1, 1) || ')'
from occupations
order by name;

select 'There are a total of ' || count(*) || ' ' || lower(occupation) || 's.'
from occupations
group by occupation
order by count(*), occupation;

