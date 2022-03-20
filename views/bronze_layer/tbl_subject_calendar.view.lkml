view: tbl_subject_calendar {
  sql_table_name: `capsule-plateform.bronze_layer.tblSubjectCalendar`
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

  dimension_group: subject_calendar {
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
    sql: ${TABLE}.SubjectCalendarDate ;;
  }

  dimension_group: subject_calendar_date_created {
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
    sql: ${TABLE}.SubjectCalendarDateCreated ;;
  }

  dimension_group: subject_calendar_date_deleted {
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
    sql: ${TABLE}.SubjectCalendarDateDeleted ;;
  }

  dimension_group: subject_calendar_date_modified {
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
    sql: ${TABLE}.SubjectCalendarDateModified ;;
  }

  dimension: subject_calendar_deleted {
    type: yesno
    sql: ${TABLE}.SubjectCalendarDeleted ;;
  }

  dimension: subject_calendar_id {
    type: number
    sql: ${TABLE}.SubjectCalendarID ;;
  }

  dimension: subject_calendar_type {
    type: string
    sql: ${TABLE}.SubjectCalendarType ;;
  }

  dimension: subject_id {
    type: number
    sql: ${TABLE}.SubjectID ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
