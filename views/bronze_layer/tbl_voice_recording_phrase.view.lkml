view: tbl_voice_recording_phrase {
  sql_table_name: `capsule-plateform.bronze_layer.tblVoiceRecordingPhrase`
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

  dimension: phrase_id {
    type: number
    sql: ${TABLE}.PhraseID ;;
  }

  dimension: processed {
    type: yesno
    sql: ${TABLE}.Processed ;;
  }

  dimension: recording_id {
    type: number
    sql: ${TABLE}.RecordingID ;;
  }

  dimension_group: recording_phrase_date_created {
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
    sql: ${TABLE}.RecordingPhraseDateCreated ;;
  }

  dimension_group: recording_phrase_date_deleted {
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
    sql: ${TABLE}.RecordingPhraseDateDeleted ;;
  }

  dimension_group: recording_phrase_date_modified {
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
    sql: ${TABLE}.RecordingPhraseDateModified ;;
  }

  dimension: recording_phrase_deleted {
    type: yesno
    sql: ${TABLE}.RecordingPhraseDeleted ;;
  }

  dimension: recording_phrase_id {
    type: number
    sql: ${TABLE}.RecordingPhraseID ;;
  }

  dimension: recording_phrase_order {
    type: number
    sql: ${TABLE}.RecordingPhraseOrder ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
