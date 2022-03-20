view: subject_event_data {
  sql_table_name: `capsule-plateform.silver_layer.SubjectEvent_Data`
    ;;

  dimension: event_type_active {
    type: number
    sql: ${TABLE}.EventTypeActive ;;
  }

  dimension: event_type_code {
    type: string
    sql: ${TABLE}.EventTypeCode ;;
  }

  dimension: event_type_deleted {
    type: number
    sql: ${TABLE}.EventTypeDeleted ;;
  }

  dimension: event_type_id {
    type: number
    sql: ${TABLE}.EventTypeID ;;
  }

  dimension: event_type_name {
    type: string
    sql: ${TABLE}.EventTypeName ;;
  }

  dimension: event_type_order {
    type: number
    sql: ${TABLE}.EventTypeOrder ;;
  }

  dimension: indicator {
    type: string
    sql: ${TABLE}.Indicator ;;
  }

  dimension_group: subject_event {
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
    sql: ${TABLE}.SubjectEventDate ;;
  }

  dimension: subject_event_details {
    type: string
    sql: ${TABLE}.SubjectEventDetails ;;
  }

  dimension: subject_event_id {
    type: number
    sql: ${TABLE}.SubjectEventID ;;
  }

  dimension: subject_id {
    type: number
    sql: ${TABLE}.SubjectID ;;
  }

  measure: count {
    type: count
    drill_fields: [event_type_name]
  }
}
