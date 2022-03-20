# Un-hide and use this explore, or copy the joins into another explore, to get all the fully nested relationships from this view
explore: subject_clinical_trial_data {
  hidden: yes

  join: subject_clinical_trial_data__clinical_trial_assignment_details {
    view_label: "Subject Clinical Trial Data: Clinicaltrialassignment Details"
    sql: LEFT JOIN UNNEST(${subject_clinical_trial_data.clinical_trial_assignment_details}) as subject_clinical_trial_data__clinical_trial_assignment_details ;;
    relationship: one_to_many
  }
}

view: subject_clinical_trial_data {
  sql_table_name: `capsule-plateform.silver_layer.SubjectClinicalTrial_Data`
    ;;

  dimension: clinical_trial_assignment_details {
    hidden: yes
    sql: ${TABLE}.ClinicalTrialAssignment_Details ;;
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

view: subject_clinical_trial_data__clinical_trial_assignment_details {
  dimension: clinical_trial_assignment_comment {
    type: string
    sql: ClinicalTrialAssignmentComment ;;
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
    sql: ClinicalTrialAssignmentEndDate ;;
  }

  dimension: clinical_trial_assignment_id {
    type: number
    sql: ClinicalTrialAssignmentID ;;
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
    sql: ClinicalTrialAssignmentStartDate ;;
  }

  dimension: clinical_trial_id {
    type: number
    sql: ClinicalTrialID ;;
  }

  dimension: subject_clinical_trial_data__clinical_trial_assignment_details {
    type: string
    hidden: yes
    sql: subject_clinical_trial_data__clinical_trial_assignment_details ;;
  }

  dimension: subject_form_id {
    type: number
    sql: SubjectFormID ;;
  }
}
