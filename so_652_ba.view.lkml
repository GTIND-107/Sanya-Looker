view: so_652_ba {
  derived_table: {
    sql: SELECT * FROM aditya.so_652_brandaffinity
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

  dimension: rank {
    type: number
    sql: ${TABLE}.rank ;;
  }

  dimension: category {
    type: string
    sql: ${TABLE}.category ;;
  }

  dimension: brand_name {
    type: string
    sql: ${TABLE}.brand_name ;;
  }

  set: detail {
    fields: [brand, rank, category, brand_name]
  }
}
