view: tbl_voice_recording_scores {
  sql_table_name: `capsule-plateform.bronze_layer.tblVoiceRecordingScores`
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

  dimension: recording_id {
    type: number
    sql: ${TABLE}.RecordingID ;;
  }

  dimension_group: recording_score_date_created {
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
    sql: ${TABLE}.RecordingScoreDateCreated ;;
  }

  dimension_group: recording_score_date_deleted {
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
    sql: ${TABLE}.RecordingScoreDateDeleted ;;
  }

  dimension_group: recording_score_date_modified {
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
    sql: ${TABLE}.RecordingScoreDateModified ;;
  }

  dimension: recording_score_deleted {
    type: yesno
    sql: ${TABLE}.RecordingScoreDeleted ;;
  }

  dimension: recording_score_id {
    type: number
    sql: ${TABLE}.RecordingScoreID ;;
  }

  dimension: recording_score_invalid {
    type: yesno
    sql: ${TABLE}.RecordingScoreInvalid ;;
  }

  dimension: recording_score_note {
    type: string
    sql: ${TABLE}.RecordingScoreNote ;;
  }

  dimension: recording_score_qced {
    type: yesno
    sql: ${TABLE}.RecordingScoreQced ;;
  }

  dimension: recording_score_type {
    type: string
    sql: ${TABLE}.RecordingScoreType ;;
  }

  dimension: recording_score_value {
    type: number
    sql: ${TABLE}.RecordingScoreValue ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
