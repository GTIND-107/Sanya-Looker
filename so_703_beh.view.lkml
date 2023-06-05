view: so_703_beh {
  derived_table: {
    sql: SELECT * FROM aditya.so_703_ba
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

  dimension: aud {
    type: string
    sql: ${TABLE}.aud ;;
  }

  dimension: users {
    type: number
    sql: ${TABLE}.users ;;
  }

  set: detail {
    fields: [rank, aud, users]
  }
}
