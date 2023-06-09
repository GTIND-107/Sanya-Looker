view: ba {
  derived_table: {
    sql: SELECT * FROM aditya.so_710_ba
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

  dimension: ba {
    type: string
    sql: ${TABLE}.ba ;;
  }

  dimension: aud {
    type: number
    sql: ${TABLE}.aud ;;
  }

  set: detail {
    fields: [rank, ba, aud]
  }
}
