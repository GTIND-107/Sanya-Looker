view: so_703_repeat {
  derived_table: {
    sql: SELECT * FROM aditya.so_703_repeat
      ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  measure: users {
    type: sum
    sql: ${TABLE}.users ;;
  }

  set: detail {
    fields: [status, users]
  }
}
