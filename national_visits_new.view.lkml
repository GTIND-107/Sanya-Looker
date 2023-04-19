view: national_visits_new {
  derived_table: {
    sql: SELECT a.name,a.tf,comp_v,comp_visit,main_v,main_visit FROM  aditya.bg_auto_national_visits_com a
      CROSS JOIN aditya.bg_auto_national_visits_main b Where a.name = b.name
      GROUP BY 1,2,3,4,5,6
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

  dimension: comp_v {
    type: string
    sql: ${TABLE}.comp_v ;;
  }

  measure: comp_visit {
    type: sum
    sql: ${TABLE}.comp_visit ;;
  }

  dimension: main_v {
    type: string
    sql: ${TABLE}.main_v ;;
  }

  measure: main_visit {
    type: sum
    sql: ${TABLE}.main_visit ;;
  }

  set: detail {
    fields: [
      name,
      tf,
      comp_v,
      comp_visit,
      main_v,
      main_visit
    ]
  }
}
