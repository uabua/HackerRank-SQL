-- URL: https://www.hackerrank.com/challenges/draw-the-triangle-1/problem

select rpad('*', (41 - 2 * level), ' *')
from dual
connect by level <= 20;
