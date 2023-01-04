with final as (
    select
        avg(weight) as avg_weight
    from
        test.sheet1
)
select
    *
from
    final