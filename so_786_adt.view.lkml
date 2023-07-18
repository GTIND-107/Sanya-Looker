#X# Conversion failed: failed to parse YAML.  Check for pipes on newlines


view: so_786_adt {
  derived_table: {
    sql: SELECT * FROM aditya.so_786_adt ;;
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

  dimension: range {
    type: string
    sql: ${TABLE}.range ;;
  }

  measure: audience {
    type: sum
    sql: ${TABLE}.audience ;;
  }

  dimension: overall {
    type: number
    sql: ${TABLE}.overall ;;
  }


  set: detail {
    fields: [
        name,
  tf,
  range,
  audience,
  overall
    ]
  }
}
