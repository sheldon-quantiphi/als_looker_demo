view: tbl_test {
  sql_table_name: `capsule-plateform.bronze_layer.tblTest`
    ;;

  dimension: indicator {
    type: string
    sql: ${TABLE}.Indicator ;;
  }

  dimension_group: loading_timestamp {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.loading_timestamp ;;
  }

  dimension: processed {
    type: yesno
    sql: ${TABLE}.Processed ;;
  }

  dimension_group: test_date_created {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.TestDateCreated ;;
  }

  dimension_group: test_date_deleted {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.TestDateDeleted ;;
  }

  dimension_group: test_date_modified {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.TestDateModified ;;
  }

  dimension: test_deleted {
    type: yesno
    sql: ${TABLE}.TestDeleted ;;
  }

  dimension: test_id {
    type: number
    sql: ${TABLE}.TestID ;;
  }

  dimension: test_value {
    type: string
    sql: ${TABLE}.TestValue ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
