
view: so_4643 {
  derived_table: {
    sql: {% raw %} SELECT * FROM aditya.so_4643 {% endraw %} ;;
  }


  dimension: visit_uid {
    type: string
    sql: ${TABLE}.visit_uid ;;
  }

  dimension: visit_date {
    type: string
    sql: ${TABLE}.visit_date ;;
  }

  dimension: poi_id {
    type: string
    sql: ${TABLE}.poi_id ;;
  }

  dimension: adgroup_id {
    type: string
    sql: CAST(${TABLE}.adgroup_id as varchar) ;;
  }

  dimension: company_name {
    type: string
    sql: ${TABLE}.company_name ;;
  }

  dimension: address {
    type: string
    sql: ${TABLE}.address ;;
  }

  measure: visits {
    type: count
   # sql: ${TABLE}.visit_uid ;;
  }
  set: detail {
    fields: [
        visit_uid,
  visit_date,
  poi_id,
  adgroup_id,
  company_name,
  address
    ]
  }
}
