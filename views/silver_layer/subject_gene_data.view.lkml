view: subject_gene_data {
  sql_table_name: `capsule-plateform.silver_layer.SubjectGene_Data`
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

  dimension: gene_pos {
    type: string
    sql: ${TABLE}.GenePos ;;
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
