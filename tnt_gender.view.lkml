view: tnt_gender {
  derived_table: {
    sql: SELECT * FROM aditya.tnt_gender
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

  measure: user_count {
    type: sum
    sql: ${TABLE}.user_count ;;
  }

  dimension: gender {
    type: string
    sql: ${TABLE}.gender ;;
  }

  set: detail {
    fields: [name, tf, user_count, gender]
  }
}
