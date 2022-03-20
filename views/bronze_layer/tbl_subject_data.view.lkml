view: tbl_subject_data {
  sql_table_name: `capsule-plateform.bronze_layer.tblSubjectData`
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

  dimension_group: subject_data_date_created {
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
    sql: ${TABLE}.SubjectDataDateCreated ;;
  }

  dimension_group: subject_data_date_deleted {
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
    sql: ${TABLE}.SubjectDataDateDeleted ;;
  }

  dimension_group: subject_data_date_modified {
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
    sql: ${TABLE}.SubjectDataDateModified ;;
  }

  dimension: subject_data_deleted {
    type: yesno
    sql: ${TABLE}.SubjectDataDeleted ;;
  }

  dimension: subject_data_id {
    type: number
    sql: ${TABLE}.SubjectDataID ;;
  }

  dimension: subject_data_value {
    type: string
    sql: ${TABLE}.SubjectDataValue ;;
  }

  dimension: subject_field_id {
    type: number
    sql: ${TABLE}.SubjectFieldID ;;
  }

  dimension: subject_field_list_id {
    type: number
    sql: ${TABLE}.SubjectFieldListID ;;
  }

  dimension: subject_form_id {
    type: number
    sql: ${TABLE}.SubjectFormID ;;
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
