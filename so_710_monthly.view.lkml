view: so_710_monthly {
  derived_table: {
    sql: SELECT * FROM aditya.so_710_monthly
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
  dimension: mon {
    type: string
    sql: ${TABLE}.mon ;;
  }

  measure: visits {
    type: sum
    sql: ${TABLE}.visits ;;
  }


  set: detail {
    fields: [mon, visits]
  }
}
