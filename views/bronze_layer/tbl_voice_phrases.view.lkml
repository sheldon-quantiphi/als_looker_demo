view: tbl_voice_phrases {
  sql_table_name: `capsule-plateform.bronze_layer.tblVoicePhrases`
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

  dimension: phrase_active {
    type: number
    sql: ${TABLE}.PhraseActive ;;
  }

  dimension: phrase_category {
    type: string
    sql: ${TABLE}.PhraseCategory ;;
  }

  dimension_group: phrase_date_created {
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
    sql: ${TABLE}.PhraseDateCreated ;;
  }

  dimension_group: phrase_date_modified {
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
    sql: ${TABLE}.PhraseDateModified ;;
  }

  dimension: phrase_deleted {
    type: number
    sql: ${TABLE}.PhraseDeleted ;;
  }

  dimension: phrase_id {
    type: number
    sql: ${TABLE}.PhraseID ;;
  }

  dimension: phrase_text {
    type: string
    sql: ${TABLE}.PhraseText ;;
  }

  dimension: processed {
    type: yesno
    sql: ${TABLE}.Processed ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
