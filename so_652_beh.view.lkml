view: so_652_beh {
  derived_table: {
    sql: SELECT * FROM aditya.so_652_beh
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

  dimension: audience {
    type: string
    sql: ${TABLE}.audience ;;
  }

  set: detail {
    fields: [brand, rank, audience]
  }
}
