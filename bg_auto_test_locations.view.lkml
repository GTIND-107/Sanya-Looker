view: bg_auto_test_locations {
  derived_table: {
    sql: SELECT a.name,a.tf,main,main_loc,comp,comp_loc FROM  aditya.bg_auto_national_locations_main a
      CROSS JOIN aditya.bg_auto_national_locations_com
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

  dimension: main {
    type: string
    sql: ${TABLE}.main ;;
  }

  measure: main_loc {
    type: sum
    sql: ${TABLE}.main_loc ;;
  }

  dimension: comp {
    type: string
    sql: ${TABLE}.comp ;;
  }

  measure: comp_loc {
    type: sum
    sql: ${TABLE}.comp_loc ;;
  }

  set: detail {
    fields: [
      name,
      tf,
      main,
      main_loc,
      comp,
      comp_loc
    ]
  }
}
