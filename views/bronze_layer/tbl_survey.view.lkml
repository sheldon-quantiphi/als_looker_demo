view: tbl_survey {
  sql_table_name: `capsule-plateform.bronze_layer.tblSurvey`
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

  dimension: survey_active {
    type: number
    sql: ${TABLE}.SurveyActive ;;
  }

  dimension: survey_category_id {
    type: number
    sql: ${TABLE}.SurveyCategoryID ;;
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
    drill_fields: []
  }
}
