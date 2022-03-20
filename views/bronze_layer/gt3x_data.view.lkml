view: gt3x_data {
  sql_table_name: `capsule-plateform.bronze_layer.gt3x_data`
    ;;

  dimension: acceleration_max {
    type: string
    sql: ${TABLE}.Acceleration_Max ;;
  }

  dimension: acceleration_min {
    type: string
    sql: ${TABLE}.Acceleration_Min ;;
  }

  dimension: acceleration_scale {
    type: string
    sql: ${TABLE}.Acceleration_Scale ;;
  }

  dimension: axis1 {
    type: number
    sql: ${TABLE}.axis1 ;;
  }

  dimension: axis2 {
    type: number
    sql: ${TABLE}.axis2 ;;
  }

  dimension: axis3 {
    type: number
    sql: ${TABLE}.axis3 ;;
  }

  dimension: battery_voltage {
    type: string
    sql: ${TABLE}.Battery_Voltage ;;
  }

  dimension: board_revision {
    type: string
    sql: ${TABLE}.Board_Revision ;;
  }

  dimension_group: data_time_stamp {
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
    sql: ${TABLE}.dataTimeStamp ;;
  }

  dimension: device_type {
    type: string
    sql: ${TABLE}.Device_Type ;;
  }

  dimension_group: download {
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
    sql: ${TABLE}.Download_Date ;;
  }

  dimension: firmware {
    type: string
    sql: ${TABLE}.Firmware ;;
  }

  dimension_group: last_sample {
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
    sql: ${TABLE}.Last_Sample_Time ;;
  }

  dimension: limb {
    type: string
    sql: ${TABLE}.Limb ;;
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

  dimension: old_format {
    type: yesno
    sql: ${TABLE}.old_format ;;
  }

  dimension: processed {
    type: yesno
    sql: ${TABLE}.Processed ;;
  }

  dimension: sample_rate {
    type: string
    sql: ${TABLE}.Sample_Rate ;;
  }

  dimension: serial_number {
    type: string
    sql: ${TABLE}.Serial_Number ;;
  }

  dimension: sex {
    type: string
    sql: ${TABLE}.Sex ;;
  }

  dimension: side {
    type: string
    sql: ${TABLE}.Side ;;
  }

  dimension_group: start {
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
    sql: ${TABLE}.Start_Date ;;
  }

  dimension: stop_date {
    type: string
    sql: ${TABLE}.Stop_Date ;;
  }

  dimension: subject_id {
    type: number
    sql: ${TABLE}.SubjectID ;;
  }

  dimension: subject_name {
    type: string
    sql: ${TABLE}.Subject_Name ;;
  }

  dimension: time_zone {
    type: string
    sql: ${TABLE}.TimeZone ;;
  }

  dimension: unexpected_resets {
    type: string
    sql: ${TABLE}.Unexpected_Resets ;;
  }

  measure: count {
    type: count
    drill_fields: [subject_name]
  }
}
