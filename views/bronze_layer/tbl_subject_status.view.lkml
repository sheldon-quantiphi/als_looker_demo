view: tbl_subject_status {
  sql_table_name: `capsule-plateform.bronze_layer.tblSubjectStatus`
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

  dimension: subject_status_active {
    type: number
    sql: ${TABLE}.SubjectStatusActive ;;
  }

  dimension: subject_status_code {
    type: string
    sql: ${TABLE}.SubjectStatusCode ;;
  }

  dimension: subject_status_created_by {
    type: number
    sql: ${TABLE}.SubjectStatusCreatedBy ;;
  }

  dimension_group: subject_status_created {
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
    sql: ${TABLE}.SubjectStatusCreatedDate ;;
  }

  dimension: subject_status_id {
    type: number
    sql: ${TABLE}.SubjectStatusID ;;
  }

  dimension: subject_status_modified_by {
    type: number
    sql: ${TABLE}.SubjectStatusModifiedBy ;;
  }

  dimension_group: subject_status_modified {
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
    sql: ${TABLE}.SubjectStatusModifiedDate ;;
  }

  dimension: subject_status_name {
    type: string
    sql: ${TABLE}.SubjectStatusName ;;
  }

  measure: count {
    type: count
    drill_fields: [subject_status_name]
  }
}
