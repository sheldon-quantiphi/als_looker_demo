view: tbl_survey_category {
  sql_table_name: `capsule-plateform.bronze_layer.tblSurveyCategory`
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

  measure: count {
    type: count
    drill_fields: [survey_category_name]
  }
}
