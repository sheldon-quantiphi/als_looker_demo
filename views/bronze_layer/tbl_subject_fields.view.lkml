view: tbl_subject_fields {
  sql_table_name: `capsule-plateform.bronze_layer.tblSubjectFields`
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

  dimension: subject_field_code {
    type: string
    sql: ${TABLE}.SubjectFieldCode ;;
  }

  dimension: subject_field_description {
    type: string
    sql: ${TABLE}.SubjectFieldDescription ;;
  }

  dimension: subject_field_id {
    type: number
    sql: ${TABLE}.SubjectFieldID ;;
  }

  dimension: subject_field_label {
    type: string
    sql: ${TABLE}.SubjectFieldLabel ;;
  }

  dimension: subject_field_name {
    type: string
    sql: ${TABLE}.SubjectFieldName ;;
  }

  dimension: subject_form_type {
    type: string
    sql: ${TABLE}.SubjectFormType ;;
  }

  measure: count {
    type: count
    drill_fields: [subject_field_name]
  }
}
