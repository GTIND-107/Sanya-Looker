view: bg_test {
  derived_table: {
    sql: SELECT * FROM  aditya.bg_1_test
      CROSS JOIN  aditya.bg_2_test
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

  dimension: brand_a_t {
    type: string
    sql: ${TABLE}.brand_a_t ;;
  }

  measure: loc {
    type: sum
    sql: ${TABLE}.loc ;;
  }

  dimension: brand_b_t {
    type: string
    sql: ${TABLE}.brand_b_t ;;
  }

  measure: loc_b {
    type: sum
    sql: ${TABLE}.loc_b ;;
  }

  set: detail {
    fields: [
      brand_a,
      brand_b,
      visits_a,
      visits_b,
      brand_a_t,
      loc,
      brand_b_t,
      loc_b
    ]
  }
}
