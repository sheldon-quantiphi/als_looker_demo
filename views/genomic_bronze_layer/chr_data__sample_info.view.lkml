view: chr_data__sample_info {
  sql_table_name: `capsule-plateform.genomic_bronze_layer.chr_data__sample_info`
    ;;

  dimension: file_path {
    type: string
    description: "Full file path on GCS of the sample."
    sql: ${TABLE}.file_path ;;
  }

  dimension_group: ingestion_datetime {
    type: time
    description: "Ingestion datetime (up to current minute) of samples."
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.ingestion_datetime ;;
  }

  dimension: processed {
    type: yesno
    sql: ${TABLE}.processed ;;
  }

  dimension: sample_id {
    type: number
    description: "An Integer that uniquely identifies a sample."
    sql: ${TABLE}.sample_id ;;
  }

  dimension: sample_name {
    type: string
    description: "Name of the sample as we read it from the VCF file."
    sql: ${TABLE}.sample_name ;;
  }

  dimension: subject_id {
    type: number
    sql: ${TABLE}.subject_id ;;
  }

  measure: count {
    type: count
    drill_fields: [sample_name]
  }
}
