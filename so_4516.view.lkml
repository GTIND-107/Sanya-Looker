
view: so_4516 {
  derived_table: {
    sql: {% raw %} SELECT
          d.name,
          d.campaign_id,
          d.month,
          d.address,
          d.range,
          d.numbering,
          d.visitors,
          o.overall_adt
      FROM aditya.so_4516_lg_auto_adt_dist d
      LEFT JOIN aditya.amrish_so_4516_auto_overall_adt o
          ON d.campaign_id = o.campaign_id
          AND d.address = o.address
          AND d.month = o.month {% endraw %} ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: campaign_id {
    type: number
    sql: ${TABLE}.campaign_id ;;
  }

  dimension: month {
    type: string
    sql: ${TABLE}.month ;;
  }

  dimension: address {
    type: string
    sql: ${TABLE}.address ;;
  }

  dimension: range {
    type: string
    sql: ${TABLE}.range ;;
  }

  dimension: numbering {
    type: string
    sql: ${TABLE}.numbering ;;
    order_by_field: range
  }

  dimension: visitors {
    type: number
    sql: ${TABLE}.visitors ;;
  }


  measure: visitors_total {
    type: sum
    sql: ${TABLE}.visitors ;;
  }

  dimension: overall_adt {
    type: number
    sql: ${TABLE}.overall_adt ;;
  }

  set: detail {
    fields: [
        name,
  campaign_id,
  month,
  address,
  range,
  numbering,
  visitors,
  overall_adt
    ]
  }
}
