{{
    config(
        schema='metabase',
        materialized='incremental',
        unique_key='id',
        post_hook="delete from {{ this }} where id not in (select id from marvin_gcppsql_public.harvests where _fivetran_deleted IS NULL)" 
    )
}}


SELECT
    id,
    display_id,
    farmer_id,
    created_by,
    moisture_level,
    base_price,
    grade,
    grade_price_adjustment,
    net_price,
    gross_weight,
    total_bags,
    provided_bags,
    gross_value,
    provided_bag_cost,
    outstanding_loan_amount_at_harvest,
    loan_repayment_amount,
    net_payout AS farmer_net_payout,
    loan_deferral_amount,
    created_at,
    updated_at,
    dispatch_id,
    confirmed_at,
    force_confirmed_by
FROM
    marvin_gcppsql_public.harvests
WHERE
    _fivetran_deleted IS NULL