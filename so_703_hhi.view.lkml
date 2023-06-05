view: so_703_hhi {
  derived_table: {
    sql: SELECT * FROM  aditya.so_703_hhi
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

  dimension: hhi {
    type: string
    sql: ${TABLE}.hhi ;;
  }

  measure: user {
    type: number
    sql: ${TABLE}."user" ;;
  }

  set: detail {
    fields: [rank, hhi, user]
  }
}
