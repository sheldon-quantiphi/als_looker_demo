# Un-hide and use this explore, or copy the joins into another explore, to get all the fully nested relationships from this view
explore: subject_field_data {
  hidden: yes

  join: subject_field_data__subject_field_lists_details {
    view_label: "Subject Field Data: Subjectfieldlists Details"
    sql: LEFT JOIN UNNEST(${subject_field_data.subject_field_lists_details}) as subject_field_data__subject_field_lists_details ;;
    relationship: one_to_many
  }
}

view: subject_field_data {
  sql_table_name: `capsule-plateform.silver_layer.SubjectField_Data`
    ;;

  dimension: subject_data_id {
    type: number
    sql: ${TABLE}.SubjectDataID ;;
  }

  dimension: subject_data_value {
    type: string
    sql: ${TABLE}.SubjectDataValue ;;
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

  dimension: subject_field_list_id {
    type: number
    sql: ${TABLE}.SubjectFieldListID ;;
  }

  dimension: subject_field_lists_details {
    hidden: yes
    sql: ${TABLE}.SubjectFieldLists_details ;;
  }

  dimension: subject_field_name {
    type: string
    sql: ${TABLE}.SubjectFieldName ;;
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
    drill_fields: [subject_field_name]
  }
}

view: subject_field_data__subject_field_lists_details {
  dimension: subject_field_data__subject_field_lists_details {
    type: string
    hidden: yes
    sql: subject_field_data__subject_field_lists_details ;;
  }

  dimension: subject_field_list_active {
    type: number
    sql: SubjectFieldListActive ;;
  }

  dimension: subject_field_list_code {
    type: string
    sql: SubjectFieldListCode ;;
  }

  dimension: subject_field_list_description {
    type: string
    sql: SubjectFieldListDescription ;;
  }

  dimension: subject_field_list_id {
    type: number
    sql: SubjectFieldListID ;;
  }

  dimension: subject_field_list_order {
    type: number
    sql: SubjectFieldListOrder ;;
  }

  dimension: subject_field_list_text {
    type: string
    sql: SubjectFieldListText ;;
  }

  dimension: subject_field_list_title {
    type: string
    sql: SubjectFieldListTitle ;;
  }
}
