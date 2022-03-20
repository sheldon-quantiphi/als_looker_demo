view: tbl_supplement {
  sql_table_name: `capsule-plateform.bronze_layer.tblSupplement`
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

  dimension: supplement_brand_name {
    type: string
    sql: ${TABLE}.SupplementBrandName ;;
  }

  dimension_group: supplement_date_created {
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
    sql: ${TABLE}.SupplementDateCreated ;;
  }

  dimension_group: supplement_date_modified {
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
    sql: ${TABLE}.SupplementDateModified ;;
  }

  dimension: supplement_external_id {
    type: string
    sql: ${TABLE}.SupplementExternalID ;;
  }

  dimension: supplement_id {
    type: number
    sql: ${TABLE}.SupplementID ;;
  }

  dimension: supplement_net_content_unit {
    type: string
    sql: ${TABLE}.SupplementNetContentUnit ;;
  }

  dimension: supplement_net_contents {
    type: number
    sql: ${TABLE}.SupplementNetContents ;;
  }

  dimension: supplement_on_market {
    type: number
    sql: ${TABLE}.SupplementOnMarket ;;
  }

  dimension: supplement_product_name {
    type: string
    sql: ${TABLE}.SupplementProductName ;;
  }

  dimension: supplement_serving_size_quantity {
    type: number
    sql: ${TABLE}.SupplementServingSizeQuantity ;;
  }

  dimension: supplement_serving_size_unit {
    type: string
    sql: ${TABLE}.SupplementServingSizeUnit ;;
  }

  measure: count {
    type: count
    drill_fields: [supplement_brand_name, supplement_product_name]
  }
}
