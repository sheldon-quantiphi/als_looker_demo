# Un-hide and use this explore, or copy the joins into another explore, to get all the fully nested relationships from this view
explore: subject_voice_recordings_data {
  hidden: yes

  join: subject_voice_recordings_data__phrase_details {
    view_label: "Subject Voice Recordings Data: Phrase Details"
    sql: LEFT JOIN UNNEST(${subject_voice_recordings_data.phrase_details}) as subject_voice_recordings_data__phrase_details ;;
    relationship: one_to_many
  }
}

view: subject_voice_recordings_data {
  sql_table_name: `capsule-plateform.silver_layer.SubjectVoiceRecordings_Data`
    ;;

  dimension: phrase_details {
    hidden: yes
    sql: ${TABLE}.phrase_details ;;
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

  dimension: subject_id {
    type: number
    sql: ${TABLE}.SubjectID ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}

view: subject_voice_recordings_data__phrase_details {
  dimension: phrase_active {
    type: number
    sql: PhraseActive ;;
  }

  dimension: phrase_category {
    type: string
    sql: PhraseCategory ;;
  }

  dimension_group: phrase_date_created {
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
    sql: PhraseDateCreated ;;
  }

  dimension_group: phrase_date_modified {
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
    sql: PhraseDateModified ;;
  }

  dimension: phrase_deleted {
    type: number
    sql: PhraseDeleted ;;
  }

  dimension: phrase_id {
    type: number
    sql: PhraseID ;;
  }

  dimension: phrase_text {
    type: string
    sql: PhraseText ;;
  }

  dimension: recording_phrase_id {
    type: number
    sql: RecordingPhraseID ;;
  }

  dimension: recording_phrase_order {
    type: number
    sql: RecordingPhraseOrder ;;
  }

  dimension: subject_voice_recordings_data__phrase_details {
    type: string
    hidden: yes
    sql: subject_voice_recordings_data__phrase_details ;;
  }
}
