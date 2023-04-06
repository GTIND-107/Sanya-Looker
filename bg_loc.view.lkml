view: bg_loc {
  derived_table: {
    sql: SELECT * FROM  aditya.bg_2
      ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: brand_a {
    type: string
    sql: ${TABLE}.brand_a ;;
  }

  measure: loc {
    type: sum
    sql: ${TABLE}.loc ;;
  }

  dimension: brand_b {
    type: string
    sql: ${TABLE}.brand_b ;;
  }

  measure: loc_b {
    type: sum
    sql: ${TABLE}.loc_b ;;
  }

  set: detail {
    fields: [brand_a, loc, brand_b, loc_b]
  }
}
