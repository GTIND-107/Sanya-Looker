view: so_710_hhi {
  derived_table: {
    sql: SELECT * FROM aditya.so_710_hhi
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

  measure: aud {
    type: sum
    sql: ${TABLE}.aud ;;
  }

  set: detail {
    fields: [rank, hhi, aud]
  }
}
