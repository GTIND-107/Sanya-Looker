view: so_703_gender {
  derived_table: {
    sql: SELECT * FROM aditya.so_703_gender
      ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: gender {
    type: string
    sql: ${TABLE}.gender ;;
  }

  measure: user {
    type: sum
    sql: ${TABLE}."user" ;;
  }

  set: detail {
    fields: [gender, user]
  }
}
