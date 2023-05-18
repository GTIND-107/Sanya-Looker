view: tnt_income {
  derived_table: {
    sql: SELECT * FROM aditya.tnt_income
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

  dimension: index {
    type: string
    sql: ${TABLE}.index ;;
  }

  dimension: income_bracket {
    type: string
    sql: ${TABLE}.income_bracket ;;
  }

  measure: user_count {
    type: sum
    sql: ${TABLE}.user_count ;;
  }

  set: detail {
    fields: [name, tf, index, income_bracket, user_count]
  }
}
