view: tbl_subject_forms {
  sql_table_name: `capsule-plateform.bronze_layer.tblSubjectForms`
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

  dimension_group: subject_form_created {
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
    sql: ${TABLE}.SubjectFormCreatedDate ;;
  }

  dimension: subject_form_deleted {
    type: yesno
    sql: ${TABLE}.SubjectFormDeleted ;;
  }

  dimension_group: subject_form_deleted {
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
    sql: ${TABLE}.SubjectFormDeletedDate ;;
  }

  dimension_group: subject_form_entry {
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
    sql: ${TABLE}.SubjectFormEntryDate ;;
  }

  dimension: subject_form_id {
    type: number
    sql: ${TABLE}.SubjectFormID ;;
  }

  dimension_group: subject_form_modified {
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
    sql: ${TABLE}.SubjectFormModifiedDate ;;
  }

  dimension: subject_form_type {
    type: string
    sql: ${TABLE}.SubjectFormType ;;
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
