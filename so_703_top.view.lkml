view: so_703_top {
  derived_table: {
    sql: SELECT * FROM aditya.so_703_top
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

  dimension: address {
    type: string
    sql: ${TABLE}.address ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }

  dimension: lat {
    type: number
    sql: ${TABLE}.lat ;;
  }

  dimension: long {
    type: number
    sql: ${TABLE}.long ;;
  }

  measure: visits {
    type: sum
    sql: ${TABLE}.visits ;;
  }

  measure: dwell {
    type: sum
    sql: ${TABLE}.dwell ;;
  }

  set: detail {
    fields: [
      brand,
      address,
      city,
      state,
      lat,
      long,
      visits,
      dwell
    ]
  }
}
