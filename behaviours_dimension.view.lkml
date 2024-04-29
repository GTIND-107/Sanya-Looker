# The name of this view in Looker is "Behaviours Dimension"
view: behaviours_dimension {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: aditya.behaviours_dimension ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Ba Code" in Explore.

  dimension: ba_code {
    type: string
    sql: ${TABLE}.ba_code ;;
  }

  dimension: ba_def {
    type: string
    sql: ${TABLE}.ba_def ;;
  }

  dimension: ba_name {
    type: string
    sql: ${TABLE}.ba_name ;;
  }
  measure: count {
    type: count
    drill_fields: [ba_name]
  }
}
