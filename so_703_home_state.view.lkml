view: so_703_home_state {
  derived_table: {
    sql: SELECT * FROM aditya.so_703_adt
      ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: state {
    map_layer_name: us_states
    sql: ${TABLE}.state ;;
  }

  measure: visits {
    type: sum
    sql: ${TABLE}.visits ;;
  }

  set: detail {
    fields: [state, visits]
  }
}
