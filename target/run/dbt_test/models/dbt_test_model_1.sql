

  create  table "dbt-testing"."public"."dbt_test_model_1__dbt_tmp"
  as (
    

with source_data as (

    SELECT
	    *
    FROM
	    marvin_gcppsql_public.dispatches
    WHERE
	    adjustments > 0

)

select *
from source_data
  );