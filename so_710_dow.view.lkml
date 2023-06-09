view: so_710_dow {
  derived_table: {
    sql: SELECT * FROM aditya.so_710_dow
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

  dimension: day {
    type: string
    sql: ${TABLE}.day ;;
  }

  measure: visits {
    type: sum
    sql: ${TABLE}.visits ;;
  }

  set: detail {
    fields: [day, visits]
  }
}
