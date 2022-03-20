view: tbl_subject_details {
  sql_table_name: `capsule-plateform.bronze_layer.tblSubjectDetails`
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

  dimension: subject_details_als_frs {
    type: yesno
    sql: ${TABLE}.SubjectDetailsAlsFrs ;;
  }

  dimension_group: subject_details_als_frs_last_notified {
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
    sql: ${TABLE}.SubjectDetailsAlsFrsLastNotified ;;
  }

  dimension: subject_details_blood_draw_shipping_notes {
    type: string
    sql: ${TABLE}.SubjectDetailsBloodDrawShippingNotes ;;
  }

  dimension: subject_details_can_call_about_radicava {
    type: yesno
    sql: ${TABLE}.SubjectDetailsCanCallAboutRadicava ;;
  }

  dimension: subject_details_collect_samples {
    type: yesno
    sql: ${TABLE}.SubjectDetailsCollectSamples ;;
  }

  dimension: subject_details_consent_comply {
    type: yesno
    sql: ${TABLE}.SubjectDetailsConsentComply ;;
  }

  dimension: subject_details_consent_understand {
    type: yesno
    sql: ${TABLE}.SubjectDetailsConsentUnderstand ;;
  }

  dimension_group: subject_details_date_created {
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
    sql: ${TABLE}.SubjectDetailsDateCreated ;;
  }

  dimension_group: subject_details_date_deleted {
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
    sql: ${TABLE}.SubjectDetailsDateDeleted ;;
  }

  dimension_group: subject_details_date_modified {
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
    sql: ${TABLE}.SubjectDetailsDateModified ;;
  }

  dimension: subject_details_deceased {
    type: yesno
    sql: ${TABLE}.SubjectDetailsDeceased ;;
  }

  dimension: subject_details_deleted {
    type: yesno
    sql: ${TABLE}.SubjectDetailsDeleted ;;
  }

  dimension: subject_details_drug_screening {
    type: yesno
    sql: ${TABLE}.SubjectDetailsDrugScreening ;;
  }

  dimension_group: subject_details_exercise_last_notified {
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
    sql: ${TABLE}.SubjectDetailsExerciseLastNotified ;;
  }

  dimension: subject_details_genome_sequencing {
    type: yesno
    sql: ${TABLE}.SubjectDetailsGenomeSequencing ;;
  }

  dimension: subject_details_genomic_data_full_opt_out {
    type: yesno
    sql: ${TABLE}.SubjectDetailsGenomicDataFullOptOut ;;
  }

  dimension: subject_details_genomic_data_opt_out {
    type: yesno
    sql: ${TABLE}.SubjectDetailsGenomicDataOptOut ;;
  }

  dimension: subject_details_id {
    type: number
    sql: ${TABLE}.SubjectDetailsID ;;
  }

  dimension: subject_details_pre_als {
    type: yesno
    sql: ${TABLE}.SubjectDetailsPreAls ;;
  }

  dimension: subject_details_recording_code {
    type: string
    sql: ${TABLE}.SubjectDetailsRecordingCode ;;
  }

  dimension: subject_details_schedule_visit {
    type: yesno
    sql: ${TABLE}.SubjectDetailsScheduleVisit ;;
  }

  dimension: subject_details_shipping_notes {
    type: string
    sql: ${TABLE}.SubjectDetailsShippingNotes ;;
  }

  dimension_group: subject_details_survey_last_notified {
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
    sql: ${TABLE}.SubjectDetailsSurveyLastNotified ;;
  }

  dimension: subject_details_taking_radicava {
    type: yesno
    sql: ${TABLE}.SubjectDetailsTakingRadicava ;;
  }

  dimension: subject_details_trackers {
    type: yesno
    sql: ${TABLE}.SubjectDetailsTrackers ;;
  }

  dimension: subject_details_voice {
    type: yesno
    sql: ${TABLE}.SubjectDetailsVoice ;;
  }

  dimension_group: subject_details_voice_last_notified {
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
    sql: ${TABLE}.SubjectDetailsVoiceLastNotified ;;
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
