view: tbl_clinical_trial_assignment {
  sql_table_name: `capsule-plateform.bronze_layer.tblClinicalTrialAssignment`
    ;;

  dimension: clinical_trial_assignment_comment {
    type: string
    sql: ${TABLE}.ClinicalTrialAssignmentComment ;;
  }

  dimension_group: clinical_trial_assignment_date_created {
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
    sql: ${TABLE}.ClinicalTrialAssignmentDateCreated ;;
  }

  dimension_group: clinical_trial_assignment_date_deleted {
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
    sql: ${TABLE}.ClinicalTrialAssignmentDateDeleted ;;
  }

  dimension_group: clinical_trial_assignment_date_modified {
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
    sql: ${TABLE}.ClinicalTrialAssignmentDateModified ;;
  }

  dimension: clinical_trial_assignment_deleted {
    type: yesno
    sql: ${TABLE}.ClinicalTrialAssignmentDeleted ;;
  }

  dimension_group: clinical_trial_assignment_end {
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
    sql: ${TABLE}.ClinicalTrialAssignmentEndDate ;;
  }

  dimension: clinical_trial_assignment_id {
    type: number
    sql: ${TABLE}.ClinicalTrialAssignmentID ;;
  }

  dimension_group: clinical_trial_assignment_start {
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
    sql: ${TABLE}.ClinicalTrialAssignmentStartDate ;;
  }

  dimension: clinical_trial_id {
    type: number
    sql: ${TABLE}.ClinicalTrialID ;;
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
