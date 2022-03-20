# Un-hide and use this explore, or copy the joins into another explore, to get all the fully nested relationships from this view
explore: agd_data_master {
  hidden: yes

  join: agd_data_master__subject_accelerometer_data {
    view_label: "Agd Data Master: Subject Accelerometer Data"
    sql: LEFT JOIN UNNEST(${agd_data_master.subject_accelerometer_data}) as agd_data_master__subject_accelerometer_data ;;
    relationship: one_to_many
  }
}

view: agd_data_master {
  sql_table_name: `capsule-plateform.silver_layer.agd_data_master`
    ;;

  dimension: age {
    type: string
    sql: ${TABLE}.age ;;
  }

  dimension: batteryvoltage {
    type: string
    sql: ${TABLE}.batteryvoltage ;;
  }

  dimension: culturename {
    type: string
    sql: ${TABLE}.culturename ;;
  }

  dimension_group: data {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.dataDate ;;
  }

  dimension: date_of_birth {
    type: string
    sql: ${TABLE}.dateOfBirth ;;
  }

  dimension: datetimeformat {
    type: string
    sql: ${TABLE}.datetimeformat ;;
  }

  dimension: decimal {
    type: string
    sql: ${TABLE}.decimal ;;
  }

  dimension: devicename {
    type: string
    sql: ${TABLE}.devicename ;;
  }

  dimension: deviceserial {
    type: string
    sql: ${TABLE}.deviceserial ;;
  }

  dimension: deviceversion {
    type: string
    sql: ${TABLE}.deviceversion ;;
  }

  dimension_group: downloaddatetime {
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
    datatype: datetime
    sql: ${TABLE}.downloaddatetime ;;
  }

  dimension: epochcount {
    type: string
    sql: ${TABLE}.epochcount ;;
  }

  dimension: epochlength {
    type: string
    sql: ${TABLE}.epochlength ;;
  }

  dimension: filter {
    type: string
    sql: ${TABLE}.filter ;;
  }

  dimension: finished {
    type: string
    sql: ${TABLE}.finished ;;
  }

  dimension: grouping {
    type: string
    sql: ${TABLE}.`grouping` ;;
  }

  dimension: height {
    type: string
    sql: ${TABLE}.height ;;
  }

  dimension: limb {
    type: string
    sql: ${TABLE}.limb ;;
  }

  dimension: machinename {
    type: string
    sql: ${TABLE}.machinename ;;
  }

  dimension: mass {
    type: string
    sql: ${TABLE}.mass ;;
  }

  dimension: modenumber {
    type: string
    sql: ${TABLE}.modenumber ;;
  }

  dimension: originalsamplerate {
    type: string
    sql: ${TABLE}.originalsamplerate ;;
  }

  dimension: osversion {
    type: string
    sql: ${TABLE}.osversion ;;
  }

  dimension: proximity_interval_in_seconds {
    type: string
    sql: ${TABLE}.proximityIntervalInSeconds ;;
  }

  dimension: sex {
    type: string
    sql: ${TABLE}.sex ;;
  }

  dimension: side {
    type: string
    sql: ${TABLE}.side ;;
  }

  dimension: softwarename {
    type: string
    sql: ${TABLE}.softwarename ;;
  }

  dimension: softwareversion {
    type: string
    sql: ${TABLE}.softwareversion ;;
  }

  dimension_group: startdatetime {
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
    datatype: datetime
    sql: ${TABLE}.startdatetime ;;
  }

  dimension_group: stopdatetime {
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
    datatype: datetime
    sql: ${TABLE}.stopdatetime ;;
  }

  dimension: subject_accelerometer_data {
    hidden: yes
    sql: ${TABLE}.Subject_Accelerometer_Data ;;
  }

  dimension: subject_id {
    type: number
    sql: ${TABLE}.SubjectID ;;
  }

  dimension: subjectname {
    type: string
    sql: ${TABLE}.subjectname ;;
  }

  dimension: unexpected_resets {
    type: string
    sql: ${TABLE}.unexpectedResets ;;
  }

  measure: count {
    type: count
    drill_fields: [culturename, machinename, softwarename, subjectname, devicename]
  }
}

view: agd_data_master__subject_accelerometer_data {
  dimension: agd_data_master__subject_accelerometer_data {
    type: string
    hidden: yes
    sql: agd_data_master__subject_accelerometer_data ;;
  }

  dimension: axis1 {
    type: number
    sql: axis1 ;;
  }

  dimension: axis2 {
    type: number
    sql: axis2 ;;
  }

  dimension: axis3 {
    type: number
    sql: axis3 ;;
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
    sql: dataTimeStamp ;;
  }

  dimension: incline_lying {
    type: number
    sql: inclineLying ;;
  }

  dimension: incline_off {
    type: number
    sql: inclineOff ;;
  }

  dimension: incline_sitting {
    type: number
    sql: inclineSitting ;;
  }

  dimension: incline_standing {
    type: number
    sql: inclineStanding ;;
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
    sql: loading_timestamp ;;
  }

  dimension: lux {
    type: number
    sql: lux ;;
  }

  dimension: steps {
    type: number
    sql: steps ;;
  }
}
