view: tnt_category {
  derived_table: {
    sql: SELECT * FROM aditya.tnt_cat
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

  measure: total_visitors {
    type: sum
    sql: ${TABLE}.total ;;
  }

  dimension: category {
    type: string
    sql: ${TABLE}.category ;;
  }

  measure: users {
    type: sum
    sql: ${TABLE}.users ;;
  }

  set: detail {
    fields: [name, tf,total_visitors, category, users]
  }
}
