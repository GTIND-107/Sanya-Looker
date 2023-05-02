view: so_652_s1 {
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

  dimension: result {
    type: number
    sql: ${TABLE}.result ;;
  }

  set: detail {
    fields: [brand, competitor, result]
  }
}
