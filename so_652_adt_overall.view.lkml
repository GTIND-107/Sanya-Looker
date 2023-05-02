view: so_652_adt_overall {
  derived_table: {
    sql: SELECT * FROM  aditya.so_652_adt_overall
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

  measure: total {
    type: sum
    sql: ${TABLE}.total ;;
  }

  set: detail {
    fields: [brand, total]
  }
}
