view: subject_supplement_data {
  sql_table_name: `capsule-plateform.silver_layer.SubjectSupplement_Data`
    ;;

  dimension: subject_form_id {
    type: number
    sql: ${TABLE}.SubjectFormID ;;
  }

  dimension: subject_id {
    type: number
    sql: ${TABLE}.SubjectID ;;
  }

  dimension: supplement_assignment_comment {
    type: string
    sql: ${TABLE}.SupplementAssignmentComment ;;
  }

  dimension: supplement_assignment_custom_serving_size_quantity {
    type: string
    sql: ${TABLE}.SupplementAssignmentCustomServingSizeQuantity ;;
  }

  dimension: supplement_assignment_custom_serving_size_unit {
    type: string
    sql: ${TABLE}.SupplementAssignmentCustomServingSizeUnit ;;
  }

  dimension_group: supplement_assignment_date_created {
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
    sql: ${TABLE}.SupplementAssignmentDateCreated ;;
  }

  dimension_group: supplement_assignment_date_modified {
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
    sql: ${TABLE}.SupplementAssignmentDateModified ;;
  }

  dimension_group: supplement_assignment_end {
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
    sql: ${TABLE}.SupplementAssignmentEndDate ;;
  }

  dimension: supplement_assignment_frequency {
    type: string
    sql: ${TABLE}.SupplementAssignmentFrequency ;;
  }

  dimension: supplement_assignment_id {
    type: number
    sql: ${TABLE}.SupplementAssignmentID ;;
  }

  dimension_group: supplement_assignment_start {
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
    sql: ${TABLE}.SupplementAssignmentStartDate ;;
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
