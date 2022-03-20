view: tbl_survey_question {
  sql_table_name: `capsule-plateform.bronze_layer.tblSurveyQuestion`
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

  dimension: parent_question_id {
    type: number
    sql: ${TABLE}.ParentQuestionID ;;
  }

  dimension: processed {
    type: yesno
    sql: ${TABLE}.Processed ;;
  }

  dimension: question_external_id {
    type: number
    sql: ${TABLE}.QuestionExternalID ;;
  }

  dimension: question_id {
    type: number
    sql: ${TABLE}.QuestionID ;;
  }

  dimension: question_order {
    type: number
    sql: ${TABLE}.QuestionOrder ;;
  }

  dimension: question_required {
    type: number
    sql: ${TABLE}.QuestionRequired ;;
  }

  dimension: question_short_title {
    type: string
    sql: ${TABLE}.QuestionShortTitle ;;
  }

  dimension: question_sub_type {
    type: string
    sql: ${TABLE}.QuestionSubType ;;
  }

  dimension: question_title {
    type: string
    sql: ${TABLE}.QuestionTitle ;;
  }

  dimension: question_type {
    type: string
    sql: ${TABLE}.QuestionType ;;
  }

  dimension: survey_id {
    type: number
    sql: ${TABLE}.SurveyID ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
