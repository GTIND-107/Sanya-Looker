view: so_710_top_stores {
  derived_table: {
    sql: SELECT * FROM aditya.so_710_top_stores
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

  dimension: lat {
    type: number
    sql: ${TABLE}.lat ;;
  }

  dimension: long {
    type: number
    sql: ${TABLE}.long ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }

  dimension: zip {
    type: string
    sql: ${TABLE}.zip ;;
  }

  dimension: visits {
    type: number
    sql: ${TABLE}.visits ;;
  }

  set: detail {
    fields: [
      brand,
      address,
      lat,
      long,
      city,
      state,
      zip,
      visits
    ]
  }
}
