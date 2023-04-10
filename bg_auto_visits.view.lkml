view: bg_auto_visits {
  derived_table: {
    sql: SELECT * FROM aditya.bg_auto_bg_visits
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

  dimension: main_brand {
    type: string
    sql: ${TABLE}.main_brand ;;
  }

  dimension: com_brand {
    type: string
    sql: ${TABLE}.com_brand ;;
  }

  measure: main_visits {
    type: sum
    sql: ${TABLE}.main_visits ;;
  }

  measure: comp_visits {
    type: sum
    sql: ${TABLE}.comp_visits ;;
  }

  set: detail {
    fields: [
      name,
      tf,
      main_brand,
      com_brand,
      main_visits,
      comp_visits
    ]
  }
}
