view: tbl_subject_diagnosis_history {
  sql_table_name: `capsule-plateform.bronze_layer.tblSubjectDiagnosisHistory`
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

  dimension_group: subject_diagnosis_date_created {
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
    sql: ${TABLE}.SubjectDiagnosisDateCreated ;;
  }

  dimension_group: subject_diagnosis_date_modified {
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
    sql: ${TABLE}.SubjectDiagnosisDateModified ;;
  }

  dimension_group: subject_diagnosis_history {
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
    sql: ${TABLE}.SubjectDiagnosisHistoryDate ;;
  }

  dimension: subject_diagnosis_history_value {
    type: string
    sql: ${TABLE}.SubjectDiagnosisHistoryValue ;;
  }

  dimension: subject_diagnosishistory_id {
    type: number
    sql: ${TABLE}.SubjectDiagnosishistoryID ;;
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
