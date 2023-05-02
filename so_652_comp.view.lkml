view: so_652_comp {
  derived_table: {
    sql: SELECT * FROM aditya.so_652_comp
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

  dimension: competitor {
    type: string
    sql: ${TABLE}.competitor ;;
  }

  dimension: zip {
    type: string
    sql: ${TABLE}.zip ;;
  }

  measure: visits {
    type: sum
    sql: ${TABLE}.visits ;;
  }

  set: detail {
    fields: [brand, rank, competitor, zip, visits]
  }
}
