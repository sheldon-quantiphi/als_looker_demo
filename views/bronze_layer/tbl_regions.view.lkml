view: tbl_regions {
  sql_table_name: `capsule-plateform.bronze_layer.tblRegions`
    ;;

  dimension: country_id {
    type: number
    sql: ${TABLE}.CountryID ;;
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

  dimension: region_abbreviation {
    type: string
    sql: ${TABLE}.RegionAbbreviation ;;
  }

  dimension: region_id {
    type: number
    sql: ${TABLE}.RegionID ;;
  }

  dimension: region_name {
    type: string
    sql: ${TABLE}.RegionName ;;
  }

  measure: count {
    type: count
    drill_fields: [region_name]
  }
}
