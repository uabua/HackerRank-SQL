-- URL: https://www.hackerrank.com/challenges/the-report/problem

select case when g.grade < 8 then null else s.name end, g.grade, s.marks
from students s,
     grades g
where s.marks between g.min_mark and g.max_mark
order by g.grade desc, s.name, s.marks; 
