view: tbl_tracker_raw_data_total_activity {
  sql_table_name: `capsule-plateform.bronze_layer.tblTrackerRawDataTotalActivity`
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

  dimension: subject_id {
    type: number
    sql: ${TABLE}.SubjectID ;;
  }

  dimension: subject_tracker_id {
    type: number
    sql: ${TABLE}.SubjectTrackerID ;;
  }

  dimension: tracker_id {
    type: number
    sql: ${TABLE}.TrackerID ;;
  }

  dimension_group: tracker_raw_data_total_activity_created {
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
    sql: ${TABLE}.TrackerRawDataTotalActivityCreatedDate ;;
  }

  dimension: tracker_raw_data_total_activity_id {
    type: number
    sql: ${TABLE}.TrackerRawDataTotalActivityID ;;
  }

  dimension: tracker_raw_data_total_activity_total {
    type: number
    sql: ${TABLE}.TrackerRawDataTotalActivityTotal ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
