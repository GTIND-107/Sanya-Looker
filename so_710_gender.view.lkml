view: so_710_gender {
  derived_table: {
    sql: SELECT * FROM aditya.so_710_gender
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

  measure: aud {
    type: sum
    sql: ${TABLE}.aud ;;
  }

  set: detail {
    fields: [gender, aud]
  }
}
