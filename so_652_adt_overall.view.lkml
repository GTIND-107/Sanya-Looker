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

  dimension: total {
    type: number
    sql: ${TABLE}.total ;;
  }

  set: detail {
    fields: [brand, total]
  }
}
