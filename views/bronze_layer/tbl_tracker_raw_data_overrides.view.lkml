view: tbl_tracker_raw_data_overrides {
  sql_table_name: `capsule-plateform.bronze_layer.tblTrackerRawDataOverrides`
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

  dimension_group: tracker_raw_data_override_date_created {
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
    sql: ${TABLE}.TrackerRawDataOverrideDateCreated ;;
  }

  dimension_group: tracker_raw_data_override_date_modified {
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
    sql: ${TABLE}.TrackerRawDataOverrideDateModified ;;
  }

  dimension: tracker_raw_data_override_id {
    type: number
    sql: ${TABLE}.TrackerRawDataOverrideID ;;
  }

  dimension: tracker_raw_data_override_limb_assignment {
    type: string
    sql: ${TABLE}.TrackerRawDataOverrideLimbAssignment ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
