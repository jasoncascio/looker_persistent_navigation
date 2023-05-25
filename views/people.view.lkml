view: people {
  derived_table: {
    sql:
      WITH data AS (
        SELECT NULL AS fname, NULL AS lname, NULL AS city, NULL AS state, NULL as gender
        UNION ALL SELECT 'Jim', 'Potter', 'New York', 'NY', 'M'
        UNION ALL SELECT 'Roger', 'Ware', 'Ithaca', 'NY', 'M'
        UNION ALL SELECT 'Brian', 'Shore', 'Bethpage', 'NY', 'M'
        UNION ALL SELECT 'Tim', 'Brown', 'Pittsburgh', 'PA', 'M'
        UNION ALL SELECT 'Fred', 'James', 'Philadelphia', 'PA', 'M'
        UNION ALL SELECT 'Jane', 'Doe', 'Philadelphia', 'PA', 'F'
        UNION ALL SELECT 'Frida', 'Phillips', 'Philadelphia', 'PA', 'F'
        UNION ALL SELECT 'Tessa', 'Delrio', 'New York', 'NY', 'F'
        UNION ALL SELECT 'Diane', 'Moore', 'New York', 'NY', 'F'
      )
      SELECT * FROM data WHERE fname <> NULL
    ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}.fname ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.lname ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }

  dimension: gender {
    type: string
    sql: ${TABLE}.gender ;;
  }

}
