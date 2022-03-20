view: subject_details_with_dupes {
  sql_table_name: `capsule-plateform.bronze_layer.SubjectDetailsWithDupes`
    ;;

  dimension: f0_ {
    type: number
    sql: ${TABLE}.f0_ ;;
  }

  dimension_group: max_entry {
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
    sql: ${TABLE}.MaxEntry ;;
  }

  dimension: subject_details_id {
    type: number
    sql: ${TABLE}.SubjectDetailsID ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
