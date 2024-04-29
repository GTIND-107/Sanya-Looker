
view: tnt_ba_total {
  derived_table: {
    sql: SELECT * FROM aditya.tnt_ba_total ;;
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

  dimension: ba {
    type: string
    sql: ${TABLE}.ba ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  measure: visitors {
    type: sum
    sql: ${TABLE}.visitors ;;
  }

  measure: total {
    type: sum
    sql: ${TABLE}.total ;;
  }

  set: detail {
    fields: [
        name,
  tf,
  ba,
  status,
  visitors,
  total
    ]
  }
}
