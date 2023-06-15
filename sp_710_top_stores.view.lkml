view: sp_710_top_stores {
  derived_table: {
    sql: SELECT * FROM aditya.so_710_top_stores
      ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: rank {
    type: number
    sql: ${TABLE}.rank ;;
  }

  dimension: location {
    type: string
    sql: ${TABLE}.location ;;
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

  measure: visits {
    type: sum
    sql: ${TABLE}.visits ;;
  }

  set: detail {
    fields: [
      rank,
      location,
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
