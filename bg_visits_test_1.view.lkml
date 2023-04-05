view: bg_visits_test_1 {
  derived_table: {
    sql: SELECT * FROM aditya.bg_1
      ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: brand_a {
    type: string
    sql: ${TABLE}.brand_a ;;
  }

  dimension: brand_b {
    type: string
    sql: ${TABLE}.brand_b ;;
  }

  measure: visits_a {
    type: sum
    sql: ${TABLE}.visits_a ;;
  }

  measure: visits_b {
    type: sum
    sql: ${TABLE}.visits_b ;;
  }

  set: detail {
    fields: [brand_a, brand_b, visits_a, visits_b]
  }
}
