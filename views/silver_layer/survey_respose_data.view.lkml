# Un-hide and use this explore, or copy the joins into another explore, to get all the fully nested relationships from this view
explore: survey_respose_data {
  hidden: yes

  join: survey_respose_data__survey_question {
    view_label: "Survey Respose Data: Surveyquestion"
    sql: LEFT JOIN UNNEST(${survey_respose_data.survey_question}) as survey_respose_data__survey_question ;;
    relationship: one_to_many
  }

  join: survey_respose_data__survey_question__survey_question_option {
    view_label: "Survey Respose Data: Surveyquestion Surveyquestionoption"
    sql: LEFT JOIN UNNEST(${survey_respose_data__survey_question.survey_question_option}) as survey_respose_data__survey_question__survey_question_option ;;
    relationship: one_to_many
  }
}

view: survey_respose_data {
  sql_table_name: `capsule-plateform.silver_layer.SurveyRespose_Data`
    ;;

  dimension: response_contact_id {
    type: string
    sql: ${TABLE}.ResponseContactID ;;
  }

  dimension_group: response_date_submitted {
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
    sql: ${TABLE}.ResponseDateSubmitted ;;
  }

  dimension: response_external_id {
    type: number
    sql: ${TABLE}.ResponseExternalID ;;
  }

  dimension: response_id {
    type: number
    sql: ${TABLE}.ResponseID ;;
  }

  dimension: response_is_copied {
    type: yesno
    sql: ${TABLE}.ResponseIsCopied ;;
  }

  dimension: response_is_test {
    type: yesno
    sql: ${TABLE}.ResponseIsTest ;;
  }

  dimension: response_status {
    type: string
    sql: ${TABLE}.ResponseStatus ;;
  }

  dimension: subject_id {
    type: number
    sql: ${TABLE}.SubjectID ;;
  }

  dimension: survey_active {
    type: number
    sql: ${TABLE}.SurveyActive ;;
  }

  dimension_group: survey_category_date_created {
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
    sql: ${TABLE}.SurveyCategoryDateCreated ;;
  }

  dimension_group: survey_category_date_modified {
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
    sql: ${TABLE}.SurveyCategoryDateModified ;;
  }

  dimension: survey_category_id {
    type: number
    sql: ${TABLE}.SurveyCategoryID ;;
  }

  dimension: survey_category_name {
    type: string
    sql: ${TABLE}.SurveyCategoryName ;;
  }

  dimension_group: survey_date_created {
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
    sql: ${TABLE}.SurveyDateCreated ;;
  }

  dimension_group: survey_date_modified {
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
    sql: ${TABLE}.SurveyDateModified ;;
  }

  dimension: survey_external_id {
    type: number
    sql: ${TABLE}.SurveyExternalID ;;
  }

  dimension: survey_id {
    type: number
    sql: ${TABLE}.SurveyID ;;
  }

  dimension: survey_internal_title {
    type: string
    sql: ${TABLE}.SurveyInternalTitle ;;
  }

  dimension: survey_is_debug {
    type: number
    sql: ${TABLE}.SurveyIsDebug ;;
  }

  dimension: survey_parent_survey_id {
    type: number
    sql: ${TABLE}.SurveyParentSurveyID ;;
  }

  dimension: survey_question {
    hidden: yes
    sql: ${TABLE}.SurveyQuestion ;;
  }

  dimension: survey_status {
    type: string
    sql: ${TABLE}.SurveyStatus ;;
  }

  dimension: survey_sub_type {
    type: string
    sql: ${TABLE}.SurveySubType ;;
  }

  dimension: survey_title {
    type: string
    sql: ${TABLE}.SurveyTitle ;;
  }

  dimension: survey_type {
    type: string
    sql: ${TABLE}.SurveyType ;;
  }

  dimension: survey_url {
    type: string
    sql: ${TABLE}.SurveyUrl ;;
  }

  measure: count {
    type: count
    drill_fields: [survey_category_name]
  }
}

view: survey_respose_data__survey_question {
  dimension: answer_id {
    type: number
    sql: AnswerID ;;
  }

  dimension: answer_pipe {
    type: string
    sql: AnswerPipe ;;
  }

  dimension: answer_value {
    type: string
    sql: AnswerValue ;;
  }

  dimension: parent_question_id {
    type: number
    sql: ParentQuestionID ;;
  }

  dimension: question_external_id {
    type: number
    sql: QuestionExternalID ;;
  }

  dimension: question_id {
    type: number
    sql: QuestionID ;;
  }

  dimension: question_order {
    type: number
    sql: QuestionOrder ;;
  }

  dimension: question_required {
    type: number
    sql: QuestionRequired ;;
  }

  dimension: question_short_title {
    type: string
    sql: QuestionShortTitle ;;
  }

  dimension: question_sub_type {
    type: string
    sql: QuestionSubType ;;
  }

  dimension: question_title {
    type: string
    sql: QuestionTitle ;;
  }

  dimension: question_type {
    type: string
    sql: QuestionType ;;
  }

  dimension: response_id {
    type: number
    sql: ResponseID ;;
  }

  dimension: survey_id {
    type: number
    sql: SurveyID ;;
  }

  dimension: survey_question_option {
    hidden: yes
    sql: SurveyQuestionOption ;;
  }

  dimension: survey_respose_data__survey_question {
    type: string
    hidden: yes
    sql: survey_respose_data__survey_question ;;
  }
}

view: survey_respose_data__survey_question__survey_question_option {
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
}
