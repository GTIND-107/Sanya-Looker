view: so_652_switchers {
  derived_table: {
    sql: SELECT * FROM aditya.so_652_switchers
      ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: brand {
    type: string
    sql: ${TABLE}.brand ;;
  }

  dimension: competitor {
    type: string
    sql: ${TABLE}.competitor ;;
  }

  measure: result {
    type: number
    sql: ${TABLE}.result ;;
  }

  set: detail {
    fields: [brand, competitor, result]
  }
}
