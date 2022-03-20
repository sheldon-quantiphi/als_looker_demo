view: subject_protocol_status_data {
  sql_table_name: `capsule-plateform.silver_layer.SubjectProtocolStatus_Data`
    ;;

  dimension_group: protocol_created {
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
    sql: ${TABLE}.ProtocolCreatedDate ;;
  }

  dimension: protocol_deleted {
    type: number
    sql: ${TABLE}.ProtocolDeleted ;;
  }

  dimension: protocol_description {
    type: string
    sql: ${TABLE}.ProtocolDescription ;;
  }

  dimension_group: protocol_modified {
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
    sql: ${TABLE}.ProtocolModifiedDate ;;
  }

  dimension: protocol_name {
    type: string
    sql: ${TABLE}.ProtocolName ;;
  }

  dimension: subject_id {
    type: number
    sql: ${TABLE}.SubjectID ;;
  }

  dimension: subject_status_active {
    type: number
    sql: ${TABLE}.SubjectStatusActive ;;
  }

  dimension: subject_status_code {
    type: string
    sql: ${TABLE}.SubjectStatusCode ;;
  }

  dimension: subject_status_created_by {
    type: number
    sql: ${TABLE}.SubjectStatusCreatedBy ;;
  }

  dimension_group: subject_status_created {
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
    sql: ${TABLE}.SubjectStatusCreatedDate ;;
  }

  dimension: subject_status_modified_by {
    type: number
    sql: ${TABLE}.SubjectStatusModifiedBy ;;
  }

  dimension_group: subject_status_modified {
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
    sql: ${TABLE}.SubjectStatusModifiedDate ;;
  }

  dimension: subject_status_name {
    type: string
    sql: ${TABLE}.SubjectStatusName ;;
  }

  measure: count {
    type: count
    drill_fields: [protocol_name, subject_status_name]
  }
}
