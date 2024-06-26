connection: "dwenigma"

include: "*.view"
# include all views in the views


explore: so_588_age{}
explore: so_588_income {}
explore: so_588_gender {}
explore: so_588_audience {}
explore: so_588_gender_2 {}
explore: so_537_nationa_test {}
explore: national_test_1 {}
explore: n_t_1 {}
explore: v_t_1 {}
explore: bg_visits_test_1 {}
explore: bg_loc {}
explore: bg_test {}

explore: bg_auto_test_visit_1 {}
explore: bg_auto_test_locations {}
explore: bg_auto_visits {}
explore: bg_locations {}
explore: national_locations_new {}
explore: national_visits_new {}

#so_652
explore: so_652_adt {}
explore: so_652_adt_overall {}
explore: so_652_beh {}
explore: so_652_ba {}
explore: so_652_s1 {}
explore: so_652_switcher_overall {}
explore: so_652_vz {}
explore: so_652_comp {}

#travel and tourism explores:
explore: tnt_day_vs_overnight {}
explore: tnt_home_state {}
explore: tnt_income {}
explore: tnt_age {}
explore: tnt_gender {}
explore: tnt_repeat_user {}
explore: tnt_category {}
explore: tnt_top_stores {}
explore: tnt_top_stores_map {}
explore: tnt_ba_total {
  join: behaviours_dimension {
    type: inner
    sql_on: ${tnt_ba_total.ba}=${behaviours_dimension.ba_code} ;;
    relationship: one_to_one
    }
    }

#so_703
explore: so_703_home_state {}
explore: so_703_top{}
explore: so_703_do {}
explore: so_703_cat {}
explore: so_703_repeat {}
explore: so_703_age {}
explore: so_703_hhi {}
explore: so_703_gender {}
explore: so_703_beh {}
explore: cities {}
explore: most_visited_brands {}

#so-710
explore: sp_710_top_stores {}
explore: so_710_adt {}
explore: so_710_weekly {}
explore: so_710_monthly {}
explore: so_710_hourly {}
explore: so_710_dow {}
explore: so_710_brand {}
explore: ba {}
explore: so_710_visit_zip {}
explore: so_710_home_zip {}
explore: so_710_age {}
explore: so_710_hhi {}
explore: so_710_gender {}

#so_786
explore: so_786_adt {}

#so-626
explore: so_629_weekly_visits {}
