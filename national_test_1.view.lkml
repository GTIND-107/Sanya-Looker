view: national_test_1 {
  derived_table: {
    sql: select a.brand_id as brand_a,COUNT(DISTINCT a.poi_hash) as loc_a,b.brand_id as brand_b,COUNT(DISTINCT b.poi_hash) as loc_b
      from aditya.so_537_n a
      INNER JOIN aditya.so_537_n b ON a.zip = b.zip
      WHERE a.brand_id = 'IHOP' AND b.brand_id != 'IHOP'
      group by 1,3
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: brand_a {
    type: string
    sql: ${TABLE}.brand_a ;;
  }

  measure: loc_a {
    type: sum
    sql: ${TABLE}.loc_a ;;
  }

  dimension: brand_b {
    type: string
    sql: ${TABLE}.brand_b ;;
  }

  measure: loc_b {
    type: sum
    sql: ${TABLE}.loc_b ;;
  }

  set: detail {
    fields: [brand_a, loc_a, brand_b, loc_b]
  }
}
