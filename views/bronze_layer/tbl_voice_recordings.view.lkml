view: tbl_voice_recordings {
  sql_table_name: `capsule-plateform.bronze_layer.tblVoiceRecordings`
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

  dimension_group: recording_date_completed {
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
    sql: ${TABLE}.RecordingDateCompleted ;;
  }

  dimension_group: recording_date_created {
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
    sql: ${TABLE}.RecordingDateCreated ;;
  }

  dimension_group: recording_date_deleted {
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
    sql: ${TABLE}.RecordingDateDeleted ;;
  }

  dimension_group: recording_date_downloaded {
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
    sql: ${TABLE}.RecordingDateDownloaded ;;
  }

  dimension_group: recording_date_modified {
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
    sql: ${TABLE}.RecordingDateModified ;;
  }

  dimension: recording_deleted {
    type: yesno
    sql: ${TABLE}.RecordingDeleted ;;
  }

  dimension: recording_downloaded {
    type: yesno
    sql: ${TABLE}.RecordingDownloaded ;;
  }

  dimension: recording_external_url {
    type: string
    sql: ${TABLE}.RecordingExternalUrl ;;
  }

  dimension: recording_file_mp3 {
    type: string
    sql: ${TABLE}.RecordingFileMp3 ;;
  }

  dimension: recording_file_wav {
    type: string
    sql: ${TABLE}.RecordingFileWav ;;
  }

  dimension: recording_id {
    type: number
    sql: ${TABLE}.RecordingID ;;
  }

  dimension: subject_id {
    type: number
    sql: ${TABLE}.SubjectID ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
