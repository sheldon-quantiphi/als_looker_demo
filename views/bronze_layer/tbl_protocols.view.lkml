view: tbl_protocols {
  sql_table_name: `capsule-plateform.bronze_layer.tblProtocols`
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

  dimension: protocol_id {
    type: number
    sql: ${TABLE}.ProtocolID ;;
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

  measure: count {
    type: count
    drill_fields: [protocol_name]
  }
}
