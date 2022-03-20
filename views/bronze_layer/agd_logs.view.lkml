view: agd_logs {
  sql_table_name: `capsule-plateform.bronze_layer.agd_logs`
    ;;

  dimension: filename {
    type: string
    sql: ${TABLE}.filename ;;
  }

  dimension: limb {
    type: string
    sql: ${TABLE}.limb ;;
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

  dimension_group: max_data_time_stamp {
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
    sql: ${TABLE}.max_dataTimeStamp ;;
  }

  dimension_group: min_data_time_stamp {
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
    sql: ${TABLE}.min_dataTimeStamp ;;
  }

  dimension: side {
    type: string
    sql: ${TABLE}.side ;;
  }

  dimension: subject_id {
    type: number
    sql: ${TABLE}.SubjectID ;;
  }

  measure: count {
    type: count
    drill_fields: [filename]
  }
}
