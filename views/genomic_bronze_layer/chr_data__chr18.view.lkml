# Un-hide and use this explore, or copy the joins into another explore, to get all the fully nested relationships from this view
explore: chr_data__chr18 {
  hidden: yes

  join: chr_data__chr18__call {
    view_label: "Chr Data Chr18: Call"
    sql: LEFT JOIN UNNEST(${chr_data__chr18.call}) as chr_data__chr18__call ;;
    relationship: one_to_many
  }

  join: chr_data__chr18__names {
    view_label: "Chr Data Chr18: Names"
    sql: LEFT JOIN UNNEST(${chr_data__chr18.names}) as chr_data__chr18__names ;;
    relationship: one_to_many
  }

  join: chr_data__chr18__filter {
    view_label: "Chr Data Chr18: Filter"
    sql: LEFT JOIN UNNEST(${chr_data__chr18.filter}) as chr_data__chr18__filter ;;
    relationship: one_to_many
  }

  join: chr_data__chr18__call__ad {
    view_label: "Chr Data Chr18: Call Ad"
    sql: LEFT JOIN UNNEST(${chr_data__chr18__call.ad}) as chr_data__chr18__call__ad ;;
    relationship: one_to_many
  }

  join: chr_data__chr18__call__pl {
    view_label: "Chr Data Chr18: Call Pl"
    sql: LEFT JOIN UNNEST(${chr_data__chr18__call.pl}) as chr_data__chr18__call__pl ;;
    relationship: one_to_many
  }

  join: chr_data__chr18__call__sb {
    view_label: "Chr Data Chr18: Call Sb"
    sql: LEFT JOIN UNNEST(${chr_data__chr18__call.sb}) as chr_data__chr18__call__sb ;;
    relationship: one_to_many
  }

  join: chr_data__chr18__call__genotype {
    view_label: "Chr Data Chr18: Call Genotype"
    sql: LEFT JOIN UNNEST(${chr_data__chr18__call.genotype}) as chr_data__chr18__call__genotype ;;
    relationship: one_to_many
  }

  join: chr_data__chr18__alternate_bases {
    view_label: "Chr Data Chr18: Alternate Bases"
    sql: LEFT JOIN UNNEST(${chr_data__chr18.alternate_bases}) as chr_data__chr18__alternate_bases ;;
    relationship: one_to_many
  }
}

view: chr_data__chr18 {
  sql_table_name: `capsule-plateform.genomic_bronze_layer.chr_data__chr18`
    ;;

  dimension: alternate_bases {
    hidden: yes
    sql: ${TABLE}.alternate_bases ;;
  }

  dimension: an {
    type: number
    description: "Total number of alleles in called genotypes"
    sql: ${TABLE}.AN ;;
  }

  dimension: base_qrank_sum {
    type: number
    description: "Z-score from Wilcoxon rank sum test of Alt Vs. Ref base qualities"
    sql: ${TABLE}.BaseQRankSum ;;
  }

  dimension: call {
    hidden: yes
    sql: ${TABLE}.call ;;
  }

  dimension: ccc {
    type: number
    description: "Number of called chromosomes"
    sql: ${TABLE}.CCC ;;
  }

  dimension: clipping_rank_sum {
    type: number
    description: "Z-score From Wilcoxon rank sum test of Alt vs. Ref number of hard clipped bases"
    sql: ${TABLE}.ClippingRankSum ;;
  }

  dimension: culprit {
    type: string
    description: "The annotation which was the worst performing in the Gaussian mixture model, likely the reason why the variant was filtered out"
    sql: ${TABLE}.culprit ;;
  }

  dimension: db {
    type: yesno
    description: "dbSNP Membership"
    sql: ${TABLE}.DB ;;
  }

  dimension: dp {
    type: number
    description: "Approximate read depth; some reads may have been filtered"
    sql: ${TABLE}.DP ;;
  }

  dimension: ds {
    type: yesno
    description: "Were any of the samples downsampled?"
    sql: ${TABLE}.DS ;;
  }

  dimension: end_position {
    type: number
    description: "End position. Corresponds to the first base after the last base in the reference allele."
    sql: ${TABLE}.end_position ;;
  }

  dimension: excess_het {
    type: number
    description: "Phred-scaled p-value for exact test of excess heterozygosity"
    sql: ${TABLE}.ExcessHet ;;
  }

  dimension: filter {
    hidden: yes
    sql: ${TABLE}.filter ;;
  }

  dimension: fs {
    type: number
    description: "Phred-scaled p-value using Fisher's exact test to detect strand bias"
    sql: ${TABLE}.FS ;;
  }

  dimension: gq_mean {
    type: number
    description: "Mean of all GQ values"
    sql: ${TABLE}.GQ_MEAN ;;
  }

  dimension: gq_stddev {
    type: number
    description: "Standard deviation of all GQ values"
    sql: ${TABLE}.GQ_STDDEV ;;
  }

  dimension: haplotype_score {
    type: number
    description: "Consistency of the site with at most two segregating haplotypes"
    sql: ${TABLE}.HaplotypeScore ;;
  }

  dimension: hwp {
    type: number
    description: "P value from test of Hardy Weinberg Equilibrium"
    sql: ${TABLE}.HWP ;;
  }

  dimension: inbreeding_coeff {
    type: number
    description: "Inbreeding coefficient as estimated from the genotype likelihoods per-sample when compared against the Hardy-Weinberg expectation"
    sql: ${TABLE}.InbreedingCoeff ;;
  }

  dimension: mq {
    type: number
    description: "RMS Mapping Quality"
    sql: ${TABLE}.MQ ;;
  }

  dimension: mq0 {
    type: number
    description: "Total Mapping Quality Zero Reads"
    sql: ${TABLE}.MQ0 ;;
  }

  dimension: mqrank_sum {
    type: number
    description: "Z-score From Wilcoxon rank sum test of Alt vs. Ref read mapping qualities"
    sql: ${TABLE}.MQRankSum ;;
  }

  dimension: names {
    hidden: yes
    sql: ${TABLE}.names ;;
  }

  dimension: ncc {
    type: number
    description: "Number of no-called samples"
    sql: ${TABLE}.NCC ;;
  }

  dimension: negative_train_site {
    type: yesno
    description: "This variant was used to build the negative training set of bad variants"
    sql: ${TABLE}.NEGATIVE_TRAIN_SITE ;;
  }

  dimension: positive_train_site {
    type: yesno
    description: "This variant was used to build the positive training set of good variants"
    sql: ${TABLE}.POSITIVE_TRAIN_SITE ;;
  }

  dimension: qd {
    type: number
    description: "Variant Confidence/Quality by Depth"
    sql: ${TABLE}.QD ;;
  }

  dimension: quality {
    type: number
    description: "Phred-scaled quality score (-10log10 prob(call is wrong)). Higher values imply better quality."
    sql: ${TABLE}.quality ;;
  }

  dimension: raw_mq {
    type: number
    description: "Raw data for RMS Mapping Quality"
    sql: ${TABLE}.RAW_MQ ;;
  }

  dimension: read_pos_rank_sum {
    type: number
    description: "Z-score from Wilcoxon rank sum test of Alt vs. Ref read position bias"
    sql: ${TABLE}.ReadPosRankSum ;;
  }

  dimension: reference_bases {
    type: string
    description: "Reference bases."
    sql: ${TABLE}.reference_bases ;;
  }

  dimension: reference_name {
    type: string
    description: "Reference name."
    sql: ${TABLE}.reference_name ;;
  }

  dimension: sor {
    type: number
    description: "Symmetric Odds Ratio of 2x2 contingency table to detect strand bias"
    sql: ${TABLE}.SOR ;;
  }

  dimension: start_position {
    type: number
    description: "Start position (1-based). Corresponds to the first base of the string of reference bases."
    sql: ${TABLE}.start_position ;;
  }

  dimension: vqslod {
    type: number
    description: "Log odds of being a true variant versus being false under the trained gaussian mixture model"
    sql: ${TABLE}.VQSLOD ;;
  }

  measure: count {
    type: count
    drill_fields: [reference_name]
  }
}

view: chr_data__chr18__call {
  dimension: ad {
    hidden: yes
    sql: AD ;;
  }

  dimension: chr_data__chr18__call {
    type: string
    description: "One record for each call."
    hidden: yes
    sql: chr_data__chr18__call ;;
  }

  dimension: dp {
    type: number
    description: "Approximate read depth (reads with MQ=255 or with bad mates are filtered)"
    sql: DP ;;
  }

  dimension: genotype {
    hidden: yes
    sql: genotype ;;
  }

  dimension: gq {
    type: number
    description: "Genotype Quality"
    sql: GQ ;;
  }

  dimension: min_dp {
    type: number
    description: "Minimum DP observed within the GVCF block"
    sql: MIN_DP ;;
  }

  dimension: pgt {
    type: string
    description: "Physical phasing haplotype information, describing how the alternate alleles are phased in relation to one another"
    sql: PGT ;;
  }

  dimension: phaseset {
    type: string
    description: "Phaseset of the call (if any). \"*\" is used in cases where the genotype is phased, but no phase set (\"PS\" in FORMAT) was specified."
    sql: phaseset ;;
  }

  dimension: pid {
    type: string
    description: "Physical phasing ID information, where each unique ID within a given sample (but not across samples) connects records within a phasing group"
    sql: PID ;;
  }

  dimension: pl {
    hidden: yes
    sql: PL ;;
  }

  dimension: rgq {
    type: number
    description: "Unconditional reference genotype confidence, encoded as a phred quality -10*log10 p(genotype call is wrong)"
    sql: RGQ ;;
  }

  dimension: sample_id {
    type: number
    description: "Unique ID (type INT64) assigned to each sample. Table with `__sample_info` suffix contains the mapping of sample names (as read from VCF header) to these assigned IDs."
    sql: sample_id ;;
  }

  dimension: sb {
    hidden: yes
    sql: SB ;;
  }
}

view: chr_data__chr18__names {
  dimension: chr_data__chr18__names {
    type: string
    description: "Variant names (e.g. RefSNP ID)."
    sql: chr_data__chr18__names ;;
  }
}

view: chr_data__chr18__filter {
  dimension: chr_data__chr18__filter {
    type: string
    description: "List of failed filters (if any) or \"PASS\" indicating the variant has passed all filters."
    sql: chr_data__chr18__filter ;;
  }
}

view: chr_data__chr18__call__ad {
  dimension: chr_data__chr18__call__ad {
    type: number
    description: "Allelic depths for the ref and alt alleles in the order listed"
    sql: chr_data__chr18__call__ad ;;
  }
}

view: chr_data__chr18__call__pl {
  dimension: chr_data__chr18__call__pl {
    type: number
    description: "Normalized, Phred-scaled likelihoods for genotypes as defined in the VCF specification"
    sql: chr_data__chr18__call__pl ;;
  }
}

view: chr_data__chr18__call__sb {
  dimension: chr_data__chr18__call__sb {
    type: number
    description: "Per-sample component statistics which comprise the Fisher's Exact Test to detect strand bias."
    sql: chr_data__chr18__call__sb ;;
  }
}

view: chr_data__chr18__call__genotype {
  dimension: chr_data__chr18__call__genotype {
    type: number
    description: "Genotype of the call. \"-1\" is used in cases where the genotype is not called."
    sql: chr_data__chr18__call__genotype ;;
  }
}

view: chr_data__chr18__alternate_bases {
  dimension: ac {
    type: number
    description: "Allele count in genotypes, for each ALT allele, in the same order as listed"
    sql: AC ;;
  }

  dimension: af {
    type: number
    description: "Allele Frequency, for each ALT allele, in the same order as listed"
    sql: AF ;;
  }

  dimension: alt {
    type: string
    description: "Alternate base."
    sql: alt ;;
  }

  dimension: as_base_qrank_sum {
    type: number
    description: "allele specific Z-score from Wilcoxon rank sum test of each Alt Vs. Ref base qualities"
    sql: AS_BaseQRankSum ;;
  }

  dimension: as_fs {
    type: number
    description: "allele specific phred-scaled p-value using Fisher's exact test to detect strand bias of each alt allele"
    sql: AS_FS ;;
  }

  dimension: as_inbreeding_coeff {
    type: number
    description: "Allele-specific inbreeding coefficient as estimated from the genotype likelihoods per-sample when compared against the Hardy-Weinberg expectation"
    sql: AS_InbreedingCoeff ;;
  }

  dimension: as_mq {
    type: number
    description: "Allele-specific RMS Mapping Quality"
    sql: AS_MQ ;;
  }

  dimension: as_mqrank_sum {
    type: number
    description: "Allele-specific Mapping Quality Rank Sum"
    sql: AS_MQRankSum ;;
  }

  dimension: as_qd {
    type: number
    description: "Allele-specific Variant Confidence/Quality by Depth"
    sql: AS_QD ;;
  }

  dimension: as_read_pos_rank_sum {
    type: number
    description: "allele specific Z-score from Wilcoxon rank sum test of each Alt vs. Ref read position bias"
    sql: AS_ReadPosRankSum ;;
  }

  dimension: as_sor {
    type: number
    description: "Allele specific strand Odds Ratio of 2x|Alts| contingency table to detect allele specific strand bias"
    sql: AS_SOR ;;
  }

  dimension: chr_data__chr18__alternate_bases {
    type: string
    description: "One record for each alternate base (if any)."
    hidden: yes
    sql: chr_data__chr18__alternate_bases ;;
  }

  dimension: mleac {
    type: number
    description: "Maximum likelihood expectation (MLE) for the allele counts (not necessarily the same as the AC), for each ALT allele, in the same order as listed"
    sql: MLEAC ;;
  }

  dimension: mleaf {
    type: number
    description: "Maximum likelihood expectation (MLE) for the allele frequency (not necessarily the same as the AF), for each ALT allele, in the same order as listed"
    sql: MLEAF ;;
  }
}
