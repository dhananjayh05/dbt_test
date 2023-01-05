{{ config(materialized='table') }}

with final as (
    select
        max(age)
    from
        test.sheet1
)
select
    *
from
    final
