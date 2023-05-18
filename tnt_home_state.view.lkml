view: tnt_home_state {
  derived_table: {
    sql: SELECT * FROM aditya.tnt_home_state
      WHERE state_name != 'NA'
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: tf {
    type: string
    sql: ${TABLE}.tf ;;
  }

  dimension: state_name {
    map_layer_name: us_states
    sql: ${TABLE}.state_name ;;
  }

  measure: users {
    type: sum
    sql: ${TABLE}.users ;;
  }

  set: detail {
    fields: [name, tf, state_name, users]
  }
}
