view: so_710_visit_zip {
  derived_table: {
    sql: SELECT * FROM aditya.so_710_visit_zip
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

  dimension: visit_zip {
    type: string
    sql: ${TABLE}.visit_zip ;;
  }

  measure: visits {
    type: sum
    sql: ${TABLE}.visits ;;
  }

  set: detail {
    fields: [rank, visit_zip, visits]
  }
}
