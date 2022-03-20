view: tbl_subject_events {
  sql_table_name: `capsule-plateform.bronze_layer.tblSubjectEvents`
    ;;

  dimension: event_type_id {
    type: number
    sql: ${TABLE}.EventTypeID ;;
  }

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

  dimension_group: subject_event {
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
    sql: ${TABLE}.SubjectEventDate ;;
  }

  dimension_group: subject_event_date_created {
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
    sql: ${TABLE}.SubjectEventDateCreated ;;
  }

  dimension_group: subject_event_date_deleted {
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
    sql: ${TABLE}.SubjectEventDateDeleted ;;
  }

  dimension_group: subject_event_date_modified {
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
    sql: ${TABLE}.SubjectEventDateModified ;;
  }

  dimension: subject_event_deleted {
    type: yesno
    sql: ${TABLE}.SubjectEventDeleted ;;
  }

  dimension: subject_event_details {
    type: string
    sql: ${TABLE}.SubjectEventDetails ;;
  }

  dimension: subject_event_id {
    type: number
    sql: ${TABLE}.SubjectEventID ;;
  }

  dimension: subject_id {
    type: number
    sql: ${TABLE}.SubjectID ;;
  }

  measure: count {
    type: count
    drill_fields: [subject_event_id,subject_id,subject_event_date,subject_event_date,subject_event_details]
  }
  measure: subject_event_count {
    type: count_distinct
    sql: ${subject_event_id} ;;
    drill_fields: [subject_event_id,subject_id,subject_event_date,subject_event_date,subject_event_details]
  }
}
