# The name of this view in Looker is "So 588 Income"
view: so_588_income {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: aditya.so_588_income ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Income" in Explore.

  dimension: income {
    type: string
    sql: ${TABLE}.income ;;
  }

  dimension: line {
    type: string
    sql: ${TABLE}.line ;;
  }

  dimension: visitors {
    type: number
    sql: ${TABLE}.visitors ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_visitors {
    type: sum
    sql: ${visitors} ;;
  }

  measure: average_visitors {
    type: average
    sql: ${visitors} ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
