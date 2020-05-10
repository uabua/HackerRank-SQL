-- URL: https://www.hackerrank.com/challenges/the-company/problem

select c.company_code,
       c.founder,
       count(distinct l.lead_manager_code),
       count(distinct s.senior_manager_code),
       count(distinct m.manager_code),
       count(distinct e.employee_code)
from company c,
     lead_Manager l,
     senior_Manager s,
     manager m,
     employee e
where c.company_code = l.company_code
  and l.lead_manager_code = s.lead_manager_code
  and s.senior_manager_code = m.senior_manager_code
  and m.manager_code = e.manager_code
group by c.company_code, c.founder
order by to_char(c.company_code);
