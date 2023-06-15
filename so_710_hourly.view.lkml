view: so_710_hourly {
  derived_table: {
    sql: SELECT * FROM aditya.so_710_hourly
      ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: location {
    type: string
    sql: ${TABLE}.location ;;
  }

  dimension: rank {
    type: number
    sql: ${TABLE}.rank ;;
  }
  dimension: hour {
    type: string
    sql: ${TABLE}.hour ;;
  }

  measure: visits {
    type: sum
    sql: ${TABLE}.visits ;;
  }

  set: detail {
    fields: [hour, visits]
  }
}
