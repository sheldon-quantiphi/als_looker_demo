view: tbl_subject_field_lists {
  sql_table_name: `capsule-plateform.bronze_layer.tblSubjectFieldLists`
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

  dimension: subject_field_id {
    type: number
    sql: ${TABLE}.SubjectFieldID ;;
  }

  dimension: subject_field_list_active {
    type: number
    sql: ${TABLE}.SubjectFieldListActive ;;
  }

  dimension: subject_field_list_code {
    type: string
    sql: ${TABLE}.SubjectFieldListCode ;;
  }

  dimension: subject_field_list_description {
    type: string
    sql: ${TABLE}.SubjectFieldListDescription ;;
  }

  dimension: subject_field_list_id {
    type: number
    sql: ${TABLE}.SubjectFieldListID ;;
  }

  dimension: subject_field_list_order {
    type: number
    sql: ${TABLE}.SubjectFieldListOrder ;;
  }

  dimension: subject_field_list_text {
    type: string
    sql: ${TABLE}.SubjectFieldListText ;;
  }

  dimension: subject_field_list_title {
    type: string
    sql: ${TABLE}.SubjectFieldListTitle ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
