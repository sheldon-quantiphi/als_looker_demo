view: tbl_survey_question_option {
  sql_table_name: `capsule-plateform.bronze_layer.tblSurveyQuestionOption`
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

  dimension: question_id {
    type: number
    sql: ${TABLE}.QuestionID ;;
  }

  dimension: question_option_external_id {
    type: number
    sql: ${TABLE}.QuestionOptionExternalID ;;
  }

  dimension: question_option_id {
    type: number
    sql: ${TABLE}.QuestionOptionID ;;
  }

  dimension: question_option_order {
    type: number
    sql: ${TABLE}.QuestionOptionOrder ;;
  }

  dimension: question_option_title {
    type: string
    sql: ${TABLE}.QuestionOptionTitle ;;
  }

  dimension: question_option_type {
    type: string
    sql: ${TABLE}.QuestionOptionType ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
