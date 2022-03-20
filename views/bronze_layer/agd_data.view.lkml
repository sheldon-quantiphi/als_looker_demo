view: agd_data {
  sql_table_name: `capsule-plateform.bronze_layer.agd_data`
    ;;

  dimension: agdversion {
    type: string
    sql: ${TABLE}.agdversion ;;
  }

  dimension: age {
    type: string
    sql: ${TABLE}.age ;;
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

  dimension: batteryvoltage {
    type: string
    sql: ${TABLE}.batteryvoltage ;;
  }

  dimension: culturename {
    type: string
    sql: ${TABLE}.culturename ;;
  }

  dimension: customsleepparameters {
    type: string
    sql: ${TABLE}.customsleepparameters ;;
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

  dimension: incline_lying {
    type: number
    sql: ${TABLE}.inclineLying ;;
  }

  dimension: incline_off {
    type: number
    sql: ${TABLE}.inclineOff ;;
  }

  dimension: incline_sitting {
    type: number
    sql: ${TABLE}.inclineSitting ;;
  }

  dimension: incline_standing {
    type: number
    sql: ${TABLE}.inclineStanding ;;
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

  dimension: lux {
    type: number
    sql: ${TABLE}.lux ;;
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

  dimension: notes {
    type: string
    sql: ${TABLE}.notes ;;
  }

  dimension: originalsamplerate {
    type: string
    sql: ${TABLE}.originalsamplerate ;;
  }

  dimension: osversion {
    type: string
    sql: ${TABLE}.osversion ;;
  }

  dimension: processed {
    type: yesno
    sql: ${TABLE}.Processed ;;
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

  dimension: sleepscorealgorithmname {
    type: string
    sql: ${TABLE}.sleepscorealgorithmname ;;
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
    sql: ${TABLE}.startdatetime ;;
  }

  dimension: steps {
    type: number
    sql: ${TABLE}.steps ;;
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
    sql: ${TABLE}.stopdatetime ;;
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
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      subjectname,
      culturename,
      machinename,
      sleepscorealgorithmname,
      softwarename,
      devicename
    ]
  }
}
