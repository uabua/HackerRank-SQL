-- URL: https://www.hackerrank.com/challenges/contest-leaderboard/problem

select hacker_id, name, sum(max_score) sum_max_score
from (select s.hacker_id, h.name, max(s.score) max_score
      from submissions s
               join hackers h on h.hacker_id = s.hacker_id
      where s.score != 0
      group by s.hacker_id, h.name, s.challenge_id)
group by hacker_id, name
order by sum_max_score desc, hacker_id;
