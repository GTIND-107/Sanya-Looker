view: so_703_cat {
  derived_table: {
    sql: SELECT * FROM aditya.so_703_cat
      ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  measure: total {
    type: sum
    sql: ${TABLE}.total ;;
  }

  dimension: category {
    type: string
    sql: ${TABLE}.category ;;
  }

  measure: visitors {
    type: sum
    sql: ${TABLE}.visitors ;;
  }

  set: detail {
    fields: [total, category, visitors]
  }
}
