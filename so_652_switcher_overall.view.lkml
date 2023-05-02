view: so_652_switcher_overall {
  derived_table: {
    sql: SELECT * FROM aditya.so_652_switchers_overall
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

  dimension: result {
    type: string
    sql: ${TABLE}.result ;;
  }

  set: detail {
    fields: [brand, result]
  }
}
