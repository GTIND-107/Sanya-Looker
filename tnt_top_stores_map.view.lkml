view: tnt_top_stores_map {
  derived_table: {
    sql: SELECT a.name,a.tf,a.poi_hash,a.company_name,a.address,a.latitude,a.longitude,a.city,a.state,visits,ROUND(avg(dwell_time),1) as avg_minutes FROM aditya.tnt_visits_per_poi a
      INNER JOIN aditya.tnt_base_dwell b ON a.poi_hash = b.poi_hash and a.name = b.name and a.tf = b.tf
      GROUP BY 1,2,3,4,5,6,7,8,9,10
      ORDER BY visits desc
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: tf {
    type: string
    sql: ${TABLE}.tf ;;
  }

  dimension: poi_hash {
    type: string
    sql: ${TABLE}.poi_hash ;;
  }

  dimension: company_name {
    type: string
    sql: ${TABLE}.company_name ;;
  }

  dimension: address {
    type: string
    sql: ${TABLE}.address ;;
  }

  dimension: latitude {
    type: number
    sql: ${TABLE}.latitude ;;
  }

  dimension: longitude {
    type: number
    sql: ${TABLE}.longitude ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }

  measure: visits {
    type: sum
    sql: ${TABLE}.visits ;;
  }

  measure: avg_minutes {
    type: sum
    sql: ${TABLE}.avg_minutes ;;
  }

  dimension: location {
    type: location
    sql_latitude: ${TABLE}.latitude ;;
    sql_longitude: ${TABLE}.longitude ;;
  }

  set: detail {
    fields: [
      name,
      tf,
      poi_hash,
      company_name,
      address,
      latitude,
      longitude,
      city,
      state,
      visits,
      avg_minutes,
      location
    ]
  }
}
