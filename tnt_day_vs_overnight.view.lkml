view: tnt_day_vs_overnight {
  derived_table: {
    sql: SELECT * FROM aditya.tnt_day_vs_overnight
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

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  measure: visitors {
    type: sum
    sql: ${TABLE}.visitors ;;
  }

  set: detail {
    fields: [name, tf, status, visitors]
  }
}
