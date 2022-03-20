# Un-hide and use this explore, or copy the joins into another explore, to get all the fully nested relationships from this view
explore: subject_tracker_total_activity_data {
  hidden: yes

  join: subject_tracker_total_activity_data__tracker_raw_data_total_activity_details {
    view_label: "Subject Tracker Total Activity Data: Trackerrawdatatotalactivity Details"
    sql: LEFT JOIN UNNEST(${subject_tracker_total_activity_data.tracker_raw_data_total_activity_details}) as subject_tracker_total_activity_data__tracker_raw_data_total_activity_details ;;
    relationship: one_to_many
  }
}

view: subject_tracker_total_activity_data {
  sql_table_name: `capsule-plateform.silver_layer.SubjectTrackerTotalActivity_Data`
    ;;

  dimension: subject_id {
    type: number
    sql: ${TABLE}.SubjectID ;;
  }

  dimension: tracker_raw_data_total_activity_details {
    hidden: yes
    sql: ${TABLE}.TrackerRawDataTotalActivity_details ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}

view: subject_tracker_total_activity_data__tracker_raw_data_total_activity_details {
  dimension: subject_tracker_id {
    type: number
    sql: SubjectTrackerID ;;
  }

  dimension: subject_tracker_total_activity_data__tracker_raw_data_total_activity_details {
    type: string
    hidden: yes
    sql: subject_tracker_total_activity_data__tracker_raw_data_total_activity_details ;;
  }

  dimension: tracker_id {
    type: number
    sql: TrackerID ;;
  }

  dimension_group: tracker_raw_data_total_activity_created {
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
    sql: TrackerRawDataTotalActivityCreatedDate ;;
  }

  dimension: tracker_raw_data_total_activity_id {
    type: number
    sql: TrackerRawDataTotalActivityID ;;
  }

  dimension: tracker_raw_data_total_activity_total {
    type: number
    sql: TrackerRawDataTotalActivityTotal ;;
  }
}
