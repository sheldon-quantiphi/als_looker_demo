view: tbl_trackers {
  sql_table_name: `capsule-plateform.bronze_layer.tblTrackers`
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

  dimension_group: tracker_date_created {
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
    sql: ${TABLE}.TrackerDateCreated ;;
  }

  dimension: tracker_id {
    type: number
    sql: ${TABLE}.TrackerID ;;
  }

  dimension: tracker_inactive {
    type: number
    sql: ${TABLE}.TrackerInactive ;;
  }

  dimension: tracker_limb_assignment {
    type: string
    sql: ${TABLE}.TrackerLimbAssignment ;;
  }

  dimension: tracker_serial_number {
    type: string
    sql: ${TABLE}.TrackerSerialNumber ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
