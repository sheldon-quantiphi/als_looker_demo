view: subject_forms_data {
  sql_table_name: `capsule-plateform.silver_layer.SubjectForms_Data`
    ;;

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
