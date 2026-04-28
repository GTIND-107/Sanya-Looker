
view: so_4643_final {
  derived_table: {
    sql:SELECT DATE(timestamp) as Visit_Date,adgroup_id, SUM(visits) as visits FROM store_visitation_poi_summary_v2 a
      WHERE poi_id = '15304142566270299852' AND campaign_id = 1604477 AND adgroup_id IN (7875629,7907489,7907492,7907493,7907496,7907497)
      GROUP BY 1,2 ;;
  }



  dimension: visit_date {
    type: date
    sql: ${TABLE}."visit_date" ;;
  }

  dimension: adgroup_id {
    type: number
    sql: ${TABLE}."adgroup_id" ;;
  }

  dimension: Visits {
    type: number
    sql: ${TABLE}."visits" ;;
  }

  measure: Visits_sum {
    type: sum
    sql: ${TABLE}."visits" ;;
  }

}
