{{ config(materialized='table') }}

with final as (
    select
        *
    from
        test.sheet1
)
select
    *
from
    final
