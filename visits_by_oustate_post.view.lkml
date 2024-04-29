
view: visits_by_oustate_post {
  derived_table: {
    sql: SELECT * FROM aditya.travel_tourism_outstate_hzip ;;
  }

  suggestions: no
  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: hzip {
    type: string
    sql: ${TABLE}.hzip ;;
  }

  dimension: visits {
    type: number
    sql: ${TABLE}.visits ;;
  }

  dimension: campaign_id {
    type: number
    sql: ${TABLE}.campaign_id ;;
  }

  dimension: identifier {
    type: string
    sql: ${TABLE}.identifier ;;
  }

  set: detail {
    fields: [
        hzip,
	visits,
	campaign_id,
	identifier
    ]
  }
}
