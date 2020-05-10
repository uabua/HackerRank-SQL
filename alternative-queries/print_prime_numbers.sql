-- URL: https://www.hackerrank.com/challenges/print-prime-numbers/problem

select listagg(prime_number, '&') within group (ORDER BY prime_number)
from (
         select l prime_number
         from (
                  select level l
                  from dual
                  connect by level <= 1000),
              (select level m from dual connect by level <= 1000)
         where m <= l
         group by l
         having COUNT(case when l / m = trunc(l / m) then 'Y' end) = 2
         order by l);
