view: so_710_age {
  derived_table: {
    sql: SELECT * FROM aditya.so_710_age
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

  dimension: age {
    type: string
    sql: ${TABLE}.age ;;
  }

 measure: aud {
    type: sum
    sql: ${TABLE}.aud ;;
  }

  set: detail {
    fields: [rank, age, aud]
  }
}
