view: so_588_gender_2 {
  derived_table: {
    sql: SELECT * FROM aditya.so_588_Gender
      ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: line {
    type: string
    sql: ${TABLE}.line ;;
  }

  dimension: gender {
    type: string
    sql: ${TABLE}.gender ;;
  }

  measure: visitors {
    type: sum
    sql: ${TABLE}.visitors ;;
  }


  set: detail {
    fields: [line, gender, visitors]
  }
}
