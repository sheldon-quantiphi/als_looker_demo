# Un-hide and use this explore, or copy the joins into another explore, to get all the fully nested relationships from this view
explore: subject_diagnosis_history_data {
  hidden: yes

  join: subject_diagnosis_history_data__diagnosis_data {
    view_label: "Subject Diagnosis History Data: Diagnosis Data"
    sql: LEFT JOIN UNNEST(${subject_diagnosis_history_data.diagnosis_data}) as subject_diagnosis_history_data__diagnosis_data ;;
    relationship: one_to_many
  }
}

view: subject_diagnosis_history_data {
  sql_table_name: `capsule-plateform.silver_layer.SubjectDiagnosisHistory_Data`
    ;;

  dimension: diagnosis_data {
    hidden: yes
    sql: ${TABLE}.Diagnosis_data ;;
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

view: subject_diagnosis_history_data__diagnosis_data {
  dimension: subject_diagnosis_history_data__diagnosis_data {
    type: string
    hidden: yes
    sql: subject_diagnosis_history_data__diagnosis_data ;;
  }

  dimension_group: subject_diagnosis_history {
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
    sql: SubjectDiagnosisHistoryDate ;;
  }

  dimension: subject_diagnosis_history_value {
    type: string
    sql: SubjectDiagnosisHistoryValue ;;
  }

  dimension: subject_diagnosishistory_id {
    type: number
    sql: SubjectDiagnosishistoryID ;;
  }
}
