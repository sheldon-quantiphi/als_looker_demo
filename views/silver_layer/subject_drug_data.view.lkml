# Un-hide and use this explore, or copy the joins into another explore, to get all the fully nested relationships from this view
explore: subject_drug_data {
  hidden: yes

  join: subject_drug_data__drug_doasge_details {
    view_label: "Subject Drug Data: Drug Doasge Details"
    sql: LEFT JOIN UNNEST(${subject_drug_data.drug_doasge_details}) as subject_drug_data__drug_doasge_details ;;
    relationship: one_to_many
  }
}

view: subject_drug_data {
  sql_table_name: `capsule-plateform.silver_layer.SubjectDrug_Data`
    ;;

  dimension: dosage_id {
    type: number
    sql: ${TABLE}.DosageID ;;
  }

  dimension: drug_active_ingredient {
    type: string
    sql: ${TABLE}.DrugActiveIngredient ;;
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

  dimension_group: drug_date_created {
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
    sql: ${TABLE}.DrugDateCreated ;;
  }

  dimension_group: drug_date_modified {
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
    sql: ${TABLE}.DrugDateModified ;;
  }

  dimension: drug_doasge_details {
    hidden: yes
    sql: ${TABLE}.drug_doasge_details ;;
  }

  dimension: drug_external_id {
    type: string
    sql: ${TABLE}.DrugExternalID ;;
  }

  dimension: drug_id {
    type: number
    sql: ${TABLE}.DrugID ;;
  }

  dimension: drug_name {
    type: string
    sql: ${TABLE}.DrugName ;;
  }

  dimension: drug_reference_drug {
    type: number
    sql: ${TABLE}.DrugReferenceDrug ;;
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
    drill_fields: [drug_name]
  }
}

view: subject_drug_data__drug_doasge_details {
  dimension_group: drug_dosage_date_created {
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
    sql: DrugDosageDateCreated ;;
  }

  dimension_group: drug_dosage_date_modified {
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
    sql: DrugDosageDateModified ;;
  }

  dimension: drug_dosage_dosage {
    type: string
    sql: DrugDosageDosage ;;
  }

  dimension: drug_dosage_form {
    type: string
    sql: DrugDosageForm ;;
  }

  dimension: drug_dosage_id {
    type: number
    sql: DrugDosageID ;;
  }

  dimension: subject_drug_data__drug_doasge_details {
    type: string
    hidden: yes
    sql: subject_drug_data__drug_doasge_details ;;
  }
}
