view: tbl_supplement_assignment {
  sql_table_name: `capsule-plateform.bronze_layer.tblSupplementAssignment`
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

  dimension: subject_form_id {
    type: number
    sql: ${TABLE}.SubjectFormID ;;
  }

  dimension: subject_id {
    type: number
    sql: ${TABLE}.SubjectID ;;
  }

  dimension: supplement_assignment_comment {
    type: string
    sql: ${TABLE}.SupplementAssignmentComment ;;
  }

  dimension: supplement_assignment_custom_serving_size_quantity {
    type: string
    sql: ${TABLE}.SupplementAssignmentCustomServingSizeQuantity ;;
  }

  dimension: supplement_assignment_custom_serving_size_unit {
    type: string
    sql: ${TABLE}.SupplementAssignmentCustomServingSizeUnit ;;
  }

  dimension_group: supplement_assignment_date_created {
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
    sql: ${TABLE}.SupplementAssignmentDateCreated ;;
  }

  dimension_group: supplement_assignment_date_deleted {
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
    sql: ${TABLE}.SupplementAssignmentDateDeleted ;;
  }

  dimension_group: supplement_assignment_date_modified {
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
    sql: ${TABLE}.SupplementAssignmentDateModified ;;
  }

  dimension: supplement_assignment_deleted {
    type: yesno
    sql: ${TABLE}.SupplementAssignmentDeleted ;;
  }

  dimension_group: supplement_assignment_end {
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
    sql: ${TABLE}.SupplementAssignmentEndDate ;;
  }

  dimension: supplement_assignment_frequency {
    type: string
    sql: ${TABLE}.SupplementAssignmentFrequency ;;
  }

  dimension: supplement_assignment_id {
    type: number
    sql: ${TABLE}.SupplementAssignmentID ;;
  }

  dimension_group: supplement_assignment_start {
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
    sql: ${TABLE}.SupplementAssignmentStartDate ;;
  }

  dimension: supplement_id {
    type: number
    sql: ${TABLE}.SupplementID ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
