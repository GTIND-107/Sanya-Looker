view: cities {
  derived_table: {
    sql: SELECT * FROM aditya.so_703_cities
      ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  measure: users {
    type: sum
    sql: ${TABLE}.users ;;
  }

  set: detail {
    fields: [city, users]
  }
}
