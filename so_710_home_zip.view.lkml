view: so_710_home_zip {
  derived_table: {
    sql: SELECT * FROM aditya.so_710_home_zip
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

  dimension: home_zip {
    type: string
    sql: ${TABLE}.home_zip ;;
  }

  measure: visits {
    type: sum
    sql: ${TABLE}.visits ;;
  }

  set: detail {
    fields: [rank, home_zip, visits]
  }
}
