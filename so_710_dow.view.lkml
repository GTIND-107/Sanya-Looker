view: so_710_dow {
  derived_table: {
    sql: SELECT * FROM aditya.so_710_dow
      ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: day {
    type: string
    sql: ${TABLE}.day ;;
  }

  dimension: visits {
    type: number
    sql: ${TABLE}.visits ;;
  }

  set: detail {
    fields: [day, visits]
  }
}