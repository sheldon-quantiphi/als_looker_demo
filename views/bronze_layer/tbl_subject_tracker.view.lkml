view: tbl_subject_tracker {
  sql_table_name: `capsule-plateform.bronze_layer.tblSubjectTracker`
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

  dimension: subject_id {
    type: number
    sql: ${TABLE}.SubjectID ;;
  }

  dimension: subject_tracker_active {
    type: number
    sql: ${TABLE}.SubjectTrackerActive ;;
  }

  dimension: subject_tracker_assigned_by_id {
    type: number
    sql: ${TABLE}.SubjectTrackerAssignedByID ;;
  }

  dimension_group: subject_tracker_assigned {
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
    sql: ${TABLE}.SubjectTrackerAssignedDate ;;
  }

  dimension_group: subject_tracker_date_created {
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
    sql: ${TABLE}.SubjectTrackerDateCreated ;;
  }

  dimension_group: subject_tracker_date_deleted {
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
    sql: ${TABLE}.SubjectTrackerDateDeleted ;;
  }

  dimension_group: subject_tracker_date_given {
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
    sql: ${TABLE}.SubjectTrackerDateGiven ;;
  }

  dimension_group: subject_tracker_date_modified {
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
    sql: ${TABLE}.SubjectTrackerDateModified ;;
  }

  dimension_group: subject_tracker_date_return {
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
    sql: ${TABLE}.SubjectTrackerDateReturn ;;
  }

  dimension: subject_tracker_deleted {
    type: yesno
    sql: ${TABLE}.SubjectTrackerDeleted ;;
  }

  dimension: subject_tracker_id {
    type: number
    sql: ${TABLE}.SubjectTrackerID ;;
  }

  dimension: subject_tracker_in_progress {
    type: yesno
    sql: ${TABLE}.SubjectTrackerInProgress ;;
  }

  dimension: subject_tracker_incoming_tracking {
    type: string
    sql: ${TABLE}.SubjectTrackerIncomingTracking ;;
  }

  dimension: subject_tracker_is_converted {
    type: yesno
    sql: ${TABLE}.SubjectTrackerIsConverted ;;
  }

  dimension: subject_tracker_is_isolated {
    type: yesno
    sql: ${TABLE}.SubjectTrackerIsIsolated ;;
  }

  dimension: subject_tracker_limb_assignment {
    type: string
    sql: ${TABLE}.SubjectTrackerLimbAssignment ;;
  }

  dimension: subject_tracker_outgoing_tracking {
    type: string
    sql: ${TABLE}.SubjectTrackerOutgoingTracking ;;
  }

  dimension: subject_tracker_qc_valid {
    type: yesno
    sql: ${TABLE}.SubjectTrackerQcValid ;;
  }

  dimension: subject_tracker_re_isolate {
    type: yesno
    sql: ${TABLE}.SubjectTrackerReIsolate ;;
  }

  dimension: subject_tracker_ready_for_processing {
    type: yesno
    sql: ${TABLE}.SubjectTrackerReadyForProcessing ;;
  }

  dimension: subject_tracker_unusable {
    type: yesno
    sql: ${TABLE}.SubjectTrackerUnusable ;;
  }

  dimension: tracker_id {
    type: number
    sql: ${TABLE}.TrackerID ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
