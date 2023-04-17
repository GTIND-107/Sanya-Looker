view: bg_locations {
  derived_table: {
    sql: SELECT * FROM aditya.bg_auto_bg_locations
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

  dimension: main_brand {
    type: string
    sql: ${TABLE}.main_brand ;;
  }

  measure: main_location {
    type: sum
    sql: ${TABLE}.main_location ;;
  }

  dimension: com_brand {
    type: string
    sql: ${TABLE}.com_brand ;;
  }

  measure: com_location {
    type: sum
    sql: ${TABLE}.com_location ;;
  }

  set: detail {
    fields: [
      name,
      tf,
      main_brand,
      main_location,
      com_brand,
      com_location
    ]
  }
}
