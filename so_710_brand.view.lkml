view: so_710_brand {
  derived_table: {
    sql: SELECT * FROM aditya.so_710_brand
      ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: rank {
    type: number
    sql: ${TABLE}.rank ;;
  }


  dimension: brand {
    type: string
    sql: ${TABLE}.brand ;;
  }

  set: detail {
    fields: [rank, brand]
  }
}
