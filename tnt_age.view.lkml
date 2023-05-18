view: tnt_age {
  derived_table: {
    sql: SELECT * FROM aditya.tnt_age
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

  dimension: age {
    type: string
    sql: ${TABLE}.age ;;
  }

  dimension: age_code {
    type: number
    sql: ${TABLE}.age_code ;;
  }

  measure: user_count {
    type: sum
    sql: ${TABLE}.user_count ;;
  }

  set: detail {
    fields: [name, tf, age, age_code, user_count]
  }
}
