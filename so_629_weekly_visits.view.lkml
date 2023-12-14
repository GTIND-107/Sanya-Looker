
view: so_629_weekly_visits {
  derived_table: {
    sql: SELECT * FROM aditya.so_so_690_weekly_visits ;;
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

  dimension: week_number {
    type: number
    sql: ${TABLE}.week_number ;;
  }

  dimension: start_date {
    type: date
    sql: ${TABLE}.start_date ;;
  }

  dimension: end_date {
    type: date
    sql: ${TABLE}.end_date ;;
  }

  measure: weekly_visits {
    type: sum
    sql: ${TABLE}.weekly_visits ;;
  }

  set: detail {
    fields: [
        name,
  tf,
  week_number,
  start_date,
  end_date,
  weekly_visits
    ]
  }
}
