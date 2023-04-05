view: n_t_1 {
  derived_table: {
    sql: SELECT * FROM  aditya.so_bg_national_test_1
      CROSS JOIN aditya.so_bg_national_test_2
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: comps {
    type: string
    sql: ${TABLE}.comps ;;
  }

  measure: b_uid {
    type: sum
    sql: ${TABLE}.b_uid ;;
  }

  dimension: main {
    type: string
    sql: ${TABLE}.main ;;
  }

  measure: a_uid {
    type: sum
    sql: ${TABLE}.a_uid ;;
  }

  set: detail {
    fields: [comps, b_uid, main, a_uid]
  }
}
