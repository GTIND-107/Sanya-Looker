view: so_537_nationa_test {
  derived_table: {
    sql: select * FROM aditya.bg_national_test
      ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: brand_id {
    type: string
    sql: ${TABLE}.brand_id ;;
  }

  measure: location {
    type: sum
    sql: ${TABLE}.location ;;
  }

  measure: visits {
    type: sum
    sql: ${TABLE}.visits ;;
  }

  set: detail {
    fields: [brand_id, location, visits]
  }
}
