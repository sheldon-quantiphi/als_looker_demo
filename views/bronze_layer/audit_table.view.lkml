view: audit_table {
  sql_table_name: `capsule-plateform.bronze_layer.audit_table`
    ;;

  dimension: error_file_path {
    type: string
    sql: ${TABLE}.error_file_path ;;
  }

  dimension: file_name {
    type: string
    sql: ${TABLE}.file_name ;;
  }

  dimension: incoming_file_path {
    type: string
    sql: ${TABLE}.incoming_file_path ;;
  }

  dimension: override {
    type: string
    sql: ${TABLE}.override ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: status_reason {
    type: string
    sql: ${TABLE}.status_reason ;;
  }

  dimension_group: timestamp {
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
    sql: ${TABLE}.timestamp ;;
  }

  measure: count {
    type: count
    drill_fields: [file_name]
  }
}
