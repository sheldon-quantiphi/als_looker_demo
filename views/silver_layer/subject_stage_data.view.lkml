view: subject_stage_data {
  sql_table_name: `capsule-plateform.silver_layer.SubjectStage_Data`
    ;;

  dimension: subject_id {
    type: number
    sql: ${TABLE}.SubjectID ;;
  }

  dimension: subject_stage_active {
    type: number
    sql: ${TABLE}.SubjectStageActive ;;
  }

  dimension: subject_stage_code {
    type: string
    sql: ${TABLE}.SubjectStageCode ;;
  }

  dimension: subject_stage_created_by {
    type: number
    sql: ${TABLE}.SubjectStageCreatedBy ;;
  }

  dimension: subject_stage_created_date {
    type: string
    sql: ${TABLE}.SubjectStageCreatedDate ;;
  }

  dimension: subject_stage_id {
    type: number
    sql: ${TABLE}.SubjectStageID ;;
  }

  dimension: subject_stage_modified_by {
    type: number
    sql: ${TABLE}.SubjectStageModifiedBy ;;
  }

  dimension_group: subject_stage_modified {
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
    sql: ${TABLE}.SubjectStageModifiedDate ;;
  }

  dimension: subject_stage_name {
    type: string
    sql: ${TABLE}.SubjectStageName ;;
  }

  measure: count {
    type: count
    drill_fields: [subject_stage_name]
  }
}
