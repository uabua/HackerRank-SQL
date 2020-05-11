-- URL: https://www.hackerrank.com/challenges/harry-potter-and-wands/problem

select w.id, wp.age, w.coins_needed, w.power
from wands w
         join wands_property wp on w.code = wp.code
where wp.is_evil != 1
  and w.coins_needed = (select min(wands.coins_needed)
                        from wands
                                 join wands_property on wands.code = wands_property.code
                        where wands_property.age = wp.age
                          and wands.power = w.power)
order by w.power desc, wp.age desc;
