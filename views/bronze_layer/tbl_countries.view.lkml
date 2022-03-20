view: tbl_countries {
  sql_table_name: `capsule-plateform.bronze_layer.tblCountries`
    ;;

  dimension: country_abbreviation {
    type: string
    sql: ${TABLE}.CountryAbbreviation ;;
  }

  dimension: country_id {
    type: number
    sql: ${TABLE}.CountryID ;;
  }

  dimension: country_name {
    type: string
    sql: ${TABLE}.CountryName ;;
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
    drill_fields: [country_name]
  }
}
