view: tbl_survey_response {
  sql_table_name: `capsule-plateform.bronze_layer.tblSurveyResponse`
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

  dimension: response_contact_id {
    type: string
    sql: ${TABLE}.ResponseContactID ;;
  }

  dimension_group: response_date_created {
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
    sql: ${TABLE}.ResponseDateCreated ;;
  }

  dimension_group: response_date_deleted {
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
    sql: ${TABLE}.ResponseDateDeleted ;;
  }

  dimension_group: response_date_modified {
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
    sql: ${TABLE}.ResponseDateModified ;;
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

  dimension: response_deleted {
    type: yesno
    sql: ${TABLE}.ResponseDeleted ;;
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

  dimension: survey_id {
    type: number
    sql: ${TABLE}.SurveyID ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
