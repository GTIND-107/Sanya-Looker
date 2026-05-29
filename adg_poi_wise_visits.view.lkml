view: adg_poi_wise_visits {
  derived_table: {
    sql:
      SELECT DATE(timestamp) as visit_date, adgroup_id, poi_id, company_name || ': ' || CONCAT_ws(', ',address,state,city,zip) as address, SUM(visits) as visits
      FROM store_visitation_poi_summary_v2 a
      INNER JOIN footprints_businesses_dimension b ON a.poi_id = b.footprints_business_id
      WHERE  campaign_id = 1596046
      GROUP BY 1,2,3,4
    ;;
  }


  dimension: date {
    type: date
    sql: ${TABLE}.visit_date ;;
  }


  dimension: adgroup_id {
    type: string
    sql: ${TABLE}.adgroup_id ;;
  }

  dimension: poi_id {
    type: string
    sql: ${TABLE}.poi_id::VARCHAR ;;
  }


  dimension: address {
    type: string
    sql: ${TABLE}.address ;;
  }


  dimension: visits {
    type: number
    sql: ${TABLE}.visits ;;
  }

  measure: total_visits {
    type: sum
    sql: ${visits} ;;
  }




}
