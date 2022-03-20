view: subject_calendar_data {
  sql_table_name: `capsule-plateform.silver_layer.SubjectCalendar_Data`
    ;;

  dimension_group: subject_calendar {
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
    sql: ${TABLE}.SubjectCalendarDate ;;
  }

  dimension: subject_calendar_id {
    type: number
    sql: ${TABLE}.SubjectCalendarID ;;
  }

  dimension: subject_calendar_type {
    type: string
    sql: ${TABLE}.SubjectCalendarType ;;
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
