view: so_710_weekly {
  derived_table: {
    sql: SELECT * FROM aditya.so_710_weekly
      ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: location  {
    type: string
    sql: ${TABLE}.location ;;
  }

  dimension: start_date {
    type: string
    sql: ${TABLE}.start_date ;;
  }

  dimension: end_date {
    type: string
    sql: ${TABLE}.end_date ;;
  }

  measure: visits {
    type: sum
    sql: ${TABLE}.visits ;;
  }


  set: detail {
    fields: [location,start_date, end_date, visits]
  }
}
