view: tbl_event_types {
  sql_table_name: `capsule-plateform.bronze_layer.tblEventTypes`
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

  measure: count {
    type: count
    drill_fields: [event_type_name]
  }
}
