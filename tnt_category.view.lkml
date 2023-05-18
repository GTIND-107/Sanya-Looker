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

  dimension: total {
    type: number
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
    fields: [name, tf, total, category, users]
  }
}
