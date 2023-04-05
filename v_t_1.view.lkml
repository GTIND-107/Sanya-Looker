view: v_t_1 {
  derived_table: {
    sql: SELECT * FROM  aditya.so_bg_national_test_41
      CROSS JOIN aditya.so_bg_national_test_31
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: main {
    type: string
    sql: ${TABLE}.main ;;
  }

  measure: a_uid {
    type: sum
    sql: ${TABLE}.a_uid ;;
  }

  dimension: comps {
    type: string
    sql: ${TABLE}.comps ;;
  }

  measure: b_uid {
    type: sum
    sql: ${TABLE}.b_uid ;;
  }

  set: detail {
    fields: [main, a_uid, comps, b_uid]
  }
}
