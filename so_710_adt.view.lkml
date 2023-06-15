view: so_710_adt {
  derived_table: {
    sql: SELECT * FROM   aditya.so_710_adt
      ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: location {
    type: string
    sql: ${TABLE}.location ;;
  }

  dimension: rank {
    type: number
    sql: ${TABLE}.rank ;;
  }

  dimension: range {
    type: string
    sql: ${TABLE}.range ;;
  }

  measure: aud {
    type:sum
    sql: ${TABLE}.aud ;;
  }

  dimension: overall {
    type: number
    sql: ${TABLE}.overall ;;
  }

  set: detail {
    fields: [rank, range, aud, overall]
  }
}
