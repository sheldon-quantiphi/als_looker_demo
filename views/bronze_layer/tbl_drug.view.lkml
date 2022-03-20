view: tbl_drug {
  sql_table_name: `capsule-plateform.bronze_layer.tblDrug`
    ;;

  dimension: drug_active_ingredient {
    type: string
    sql: ${TABLE}.DrugActiveIngredient ;;
  }

  dimension_group: drug_date_created {
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
    sql: ${TABLE}.DrugDateCreated ;;
  }

  dimension_group: drug_date_modified {
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
    sql: ${TABLE}.DrugDateModified ;;
  }

  dimension: drug_external_id {
    type: string
    sql: ${TABLE}.DrugExternalID ;;
  }

  dimension: drug_id {
    type: number
    sql: ${TABLE}.DrugID ;;
  }

  dimension: drug_name {
    type: string
    sql: ${TABLE}.DrugName ;;
  }

  dimension: drug_reference_drug {
    type: number
    sql: ${TABLE}.DrugReferenceDrug ;;
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
    drill_fields: [drug_name]
  }
}
