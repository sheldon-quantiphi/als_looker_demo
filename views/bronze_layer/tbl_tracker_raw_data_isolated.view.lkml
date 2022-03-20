view: tbl_tracker_raw_data_isolated {
  sql_table_name: `capsule-plateform.bronze_layer.tblTrackerRawDataIsolated`
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

  dimension: subject_form_id {
    type: number
    sql: ${TABLE}.SubjectFormID ;;
  }

  dimension: subject_tracker_id {
    type: number
    sql: ${TABLE}.SubjectTrackerID ;;
  }

  dimension_group: tracker_raw_data_isolated_created {
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
    sql: ${TABLE}.TrackerRawDataIsolatedCreatedDate ;;
  }

  dimension_group: tracker_raw_data_isolated_end_time_stamp {
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
    sql: ${TABLE}.TrackerRawDataIsolatedEndTimeStamp ;;
  }

  dimension: tracker_raw_data_isolated_exercise {
    type: string
    sql: ${TABLE}.TrackerRawDataIsolatedExercise ;;
  }

  dimension: tracker_raw_data_isolated_id {
    type: number
    sql: ${TABLE}.TrackerRawDataIsolatedID ;;
  }

  dimension_group: tracker_raw_data_isolated_start_time_stamp {
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
    sql: ${TABLE}.TrackerRawDataIsolatedStartTimeStamp ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
