view: so_652_adt {
  derived_table: {
    sql: SELECT * FROM aditya.so_652_adt
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

  dimension: range {
    type: string
    sql: ${TABLE}.range ;;
  }

  dimension: users {
    type: number
    sql: ${TABLE}.users ;;
  }

  measure: users_sum {
    type: sum
    sql: ${TABLE}.users ;;
  }

  set: detail {
    fields: [brand, range, users]
  }
}
