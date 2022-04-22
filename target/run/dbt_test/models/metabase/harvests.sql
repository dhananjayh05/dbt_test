
      
    delete from "dbt-testing"."public_metabase"."harvests"
    where (id) in (
        select (id)
        from "harvests__dbt_tmp172053527154"
    );
    

    insert into "dbt-testing"."public_metabase"."harvests" ("id", "display_id", "farmer_id", "created_by", "moisture_level", "base_price", "grade", "grade_price_adjustment", "net_price", "gross_weight", "total_bags", "provided_bags", "gross_value", "provided_bag_cost", "outstanding_loan_amount_at_harvest", "loan_repayment_amount", "farmer_net_payout", "loan_deferral_amount", "created_at", "updated_at", "dispatch_id", "confirmed_at", "force_confirmed_by")
    (
        select "id", "display_id", "farmer_id", "created_by", "moisture_level", "base_price", "grade", "grade_price_adjustment", "net_price", "gross_weight", "total_bags", "provided_bags", "gross_value", "provided_bag_cost", "outstanding_loan_amount_at_harvest", "loan_repayment_amount", "farmer_net_payout", "loan_deferral_amount", "created_at", "updated_at", "dispatch_id", "confirmed_at", "force_confirmed_by"
        from "harvests__dbt_tmp172053527154"
    )
  