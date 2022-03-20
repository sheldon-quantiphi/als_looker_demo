view: tbl_survey_answer {
  sql_table_name: `capsule-plateform.bronze_layer.tblSurveyAnswer`
    ;;

  dimension_group: answer_date_created {
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
    sql: ${TABLE}.AnswerDateCreated ;;
  }

  dimension_group: answer_date_deleted {
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
    sql: ${TABLE}.AnswerDateDeleted ;;
  }

  dimension_group: answer_date_modified {
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
    sql: ${TABLE}.AnswerDateModified ;;
  }

  dimension: answer_deleted {
    type: yesno
    sql: ${TABLE}.AnswerDeleted ;;
  }

  dimension: answer_id {
    type: number
    sql: ${TABLE}.AnswerID ;;
  }

  dimension: answer_pipe {
    type: string
    sql: ${TABLE}.AnswerPipe ;;
  }

  dimension: answer_value {
    type: string
    sql: ${TABLE}.AnswerValue ;;
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

  dimension: question_id {
    type: number
    sql: ${TABLE}.QuestionID ;;
  }

  dimension: question_option_id {
    type: number
    sql: ${TABLE}.QuestionOptionID ;;
  }

  dimension: response_id {
    type: number
    sql: ${TABLE}.ResponseID ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
