

select id, lower(name) as name, salary, case when country = 'IND' then 'india' else lower(country) end as country
from {{source('raw','EMP_TEST')}}