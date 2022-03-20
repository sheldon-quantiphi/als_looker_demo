view: tbl_gene_mutations {
  sql_table_name: `capsule-plateform.bronze_layer.tblGeneMutations`
    ;;

  dimension: gene_id {
    type: number
    sql: ${TABLE}.GeneID ;;
  }

  dimension: gene_mutation_aa_change {
    type: string
    sql: ${TABLE}.GeneMutationAaChange ;;
  }

  dimension: gene_mutation_biotype {
    type: string
    sql: ${TABLE}.GeneMutationBiotype ;;
  }

  dimension: gene_mutation_codon_change {
    type: string
    sql: ${TABLE}.GeneMutationCodonChange ;;
  }

  dimension_group: gene_mutation_date_created {
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
    sql: ${TABLE}.GeneMutationDateCreated ;;
  }

  dimension_group: gene_mutation_date_modified {
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
    sql: ${TABLE}.GeneMutationDateModified ;;
  }

  dimension: gene_mutation_gts {
    type: string
    sql: ${TABLE}.GeneMutationGts ;;
  }

  dimension: gene_mutation_id {
    type: number
    sql: ${TABLE}.GeneMutationID ;;
  }

  dimension: gene_mutation_impact {
    type: string
    sql: ${TABLE}.GeneMutationImpact ;;
  }

  dimension: gene_mutation_impact_so {
    type: string
    sql: ${TABLE}.GeneMutationImpactSo ;;
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

  dimension: subject_id {
    type: number
    sql: ${TABLE}.SubjectID ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
