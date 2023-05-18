view: tnt_repeat_user {
  derived_table: {
    sql: SELECT * FROM aditya.tnt_repeat_user
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

  dimension: user {
    type: string
    sql: ${TABLE}."user" ;;
  }

  measure: visitors {
    type: sum
    sql: ${TABLE}.visitors ;;
  }

  set: detail {
    fields: [name, tf, user, visitors]
  }
}
