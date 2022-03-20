view: subject_tracker_raw_isolated_data {
  sql_table_name: `capsule-plateform.silver_layer.SubjectTrackerRaw_Isolated_data`
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

  dimension: subject_id {
    type: number
    sql: ${TABLE}.SubjectID ;;
  }

  dimension: subject_tracker_id {
    type: number
    sql: ${TABLE}.SubjectTrackerID ;;
  }

  dimension: tracker_raw_data_axis1 {
    type: number
    sql: ${TABLE}.TrackerRawDataAxis1 ;;
  }

  dimension: tracker_raw_data_axis2 {
    type: number
    sql: ${TABLE}.TrackerRawDataAxis2 ;;
  }

  dimension: tracker_raw_data_axis3 {
    type: number
    sql: ${TABLE}.TrackerRawDataAxis3 ;;
  }

  dimension: tracker_raw_data_cap_sense {
    type: yesno
    sql: ${TABLE}.TrackerRawDataCapSense ;;
  }

  dimension_group: tracker_raw_data_created {
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
    sql: ${TABLE}.TrackerRawDataCreatedDate ;;
  }

  dimension: tracker_raw_data_epoch {
    type: number
    sql: ${TABLE}.TrackerRawDataEpoch ;;
  }

  dimension: tracker_raw_data_file_name {
    type: string
    sql: ${TABLE}.TrackerRawDataFileName ;;
  }

  dimension: tracker_raw_data_gender {
    type: string
    sql: ${TABLE}.TrackerRawDataGender ;;
  }

  dimension: tracker_raw_data_id {
    type: number
    sql: ${TABLE}.TrackerRawDataID ;;
  }

  dimension: tracker_raw_data_incline_lying {
    type: yesno
    sql: ${TABLE}.TrackerRawDataInclineLying ;;
  }

  dimension: tracker_raw_data_incline_off {
    type: yesno
    sql: ${TABLE}.TrackerRawDataInclineOff ;;
  }

  dimension: tracker_raw_data_incline_sitting {
    type: yesno
    sql: ${TABLE}.TrackerRawDataInclineSitting ;;
  }

  dimension: tracker_raw_data_incline_standing {
    type: yesno
    sql: ${TABLE}.TrackerRawDataInclineStanding ;;
  }

  dimension: tracker_raw_data_lux {
    type: number
    sql: ${TABLE}.TrackerRawDataLux ;;
  }

  dimension: tracker_raw_data_qcpassed {
    type: yesno
    sql: ${TABLE}.TrackerRawDataQCPassed ;;
  }

  dimension: tracker_raw_data_serial_number {
    type: string
    sql: ${TABLE}.TrackerRawDataSerialNumber ;;
  }

  dimension: tracker_raw_data_side {
    type: string
    sql: ${TABLE}.TrackerRawDataSide ;;
  }

  dimension: tracker_raw_data_steps {
    type: number
    sql: ${TABLE}.TrackerRawDataSteps ;;
  }

  dimension_group: tracker_raw_data_time_stamp {
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
    sql: ${TABLE}.TrackerRawDataTimeStamp ;;
  }

  dimension: tracker_raw_data_vector_magnitude {
    type: number
    sql: ${TABLE}.TrackerRawDataVectorMagnitude ;;
  }

  measure: count {
    type: count
    drill_fields: [tracker_raw_data_file_name]
  }
}
