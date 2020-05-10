-- URL: https://www.hackerrank.com/challenges/occupations/problem

select doctor, professor, singer, actor
from (select name, occupation, row_number() over (partition by occupation order by name)
      from occupations) pivot (min(name) for occupation in ('Doctor' as doctor, 'Professor' as professor, 'Singer' as singer, 'Actor' as actor))
order by doctor, professor, singer, actor;

