view: tbl_genes {
  sql_table_name: `capsule-plateform.bronze_layer.tblGenes`
    ;;

  dimension: gene_als {
    type: number
    sql: ${TABLE}.GeneAls ;;
  }

  dimension: gene_chr {
    type: string
    sql: ${TABLE}.GeneChr ;;
  }

  dimension: gene_clnacc {
    type: string
    sql: ${TABLE}.GeneClnacc ;;
  }

  dimension: gene_external_id {
    type: string
    sql: ${TABLE}.GeneExternalID ;;
  }

  dimension: gene_id {
    type: number
    sql: ${TABLE}.GeneID ;;
  }

  dimension: gene_info {
    type: string
    sql: ${TABLE}.GeneInfo ;;
  }

  dimension: gene_pos {
    type: string
    sql: ${TABLE}.GenePos ;;
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
