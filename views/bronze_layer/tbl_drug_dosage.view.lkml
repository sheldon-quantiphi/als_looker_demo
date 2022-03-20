view: tbl_drug_dosage {
  sql_table_name: `capsule-plateform.bronze_layer.tblDrugDosage`
    ;;

  dimension_group: drug_dosage_date_created {
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
    sql: ${TABLE}.DrugDosageDateCreated ;;
  }

  dimension_group: drug_dosage_date_modified {
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
    sql: ${TABLE}.DrugDosageDateModified ;;
  }

  dimension: drug_dosage_dosage {
    type: string
    sql: ${TABLE}.DrugDosageDosage ;;
  }

  dimension: drug_dosage_form {
    type: string
    sql: ${TABLE}.DrugDosageForm ;;
  }

  dimension: drug_dosage_id {
    type: number
    sql: ${TABLE}.DrugDosageID ;;
  }

  dimension: drug_id {
    type: number
    sql: ${TABLE}.DrugID ;;
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
    drill_fields: []
  }
}
