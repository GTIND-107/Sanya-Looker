view: so_703_age {
  derived_table: {
    sql: SELECT * FROM aditya.so_703_age
      ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: age {
    type: string
    sql: ${TABLE}.age ;;
  }

  measure: user {
    type: sum
    sql: ${TABLE}."user" ;;
  }

  set: detail {
    fields: [age, user]
  }
}
