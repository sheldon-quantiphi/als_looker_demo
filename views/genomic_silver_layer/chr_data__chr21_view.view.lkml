view: chr_data__chr21_view {
  sql_table_name: `capsule-plateform.genomic_silver_layer.chr_data__chr21_view`
    ;;

  dimension: genotype_1 {
    type: number
    sql: ${TABLE}.genotype_1 ;;
  }

  dimension: genotype_2 {
    type: number
    sql: ${TABLE}.genotype_2 ;;
  }

  dimension: names {
    type: string
    sql: ${TABLE}.names ;;
  }

  dimension: phaseset {
    type: string
    sql: ${TABLE}.phaseset ;;
  }

  dimension: sample_id {
    type: number
    sql: ${TABLE}.sample_id ;;
  }

  dimension: subject_id {
    type: number
    sql: ${TABLE}.subject_id ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
