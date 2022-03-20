view: tbl_drug_assignment {
  sql_table_name: `capsule-plateform.bronze_layer.tblDrugAssignment`
    ;;

  dimension: dosage_id {
    type: number
    sql: ${TABLE}.DosageID ;;
  }

  dimension: drug_assignment_comment {
    type: string
    sql: ${TABLE}.DrugAssignmentComment ;;
  }

  dimension: drug_assignment_custom_dosage {
    type: string
    sql: ${TABLE}.DrugAssignmentCustomDosage ;;
  }

  dimension: drug_assignment_custom_form {
    type: string
    sql: ${TABLE}.DrugAssignmentCustomForm ;;
  }

  dimension_group: drug_assignment_date_created {
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
    sql: ${TABLE}.DrugAssignmentDateCreated ;;
  }

  dimension_group: drug_assignment_date_deleted {
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
    sql: ${TABLE}.DrugAssignmentDateDeleted ;;
  }

  dimension_group: drug_assignment_date_modified {
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
    sql: ${TABLE}.DrugAssignmentDateModified ;;
  }

  dimension: drug_assignment_deleted {
    type: yesno
    sql: ${TABLE}.DrugAssignmentDeleted ;;
  }

  dimension_group: drug_assignment_end {
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
    sql: ${TABLE}.DrugAssignmentEndDate ;;
  }

  dimension: drug_assignment_frequency {
    type: string
    sql: ${TABLE}.DrugAssignmentFrequency ;;
  }

  dimension: drug_assignment_id {
    type: number
    sql: ${TABLE}.DrugAssignmentID ;;
  }

  dimension_group: drug_assignment_start {
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
    sql: ${TABLE}.DrugAssignmentStartDate ;;
  }

  dimension: drug_id {
    type: number
    sql: ${TABLE}.DrugID ;;
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
