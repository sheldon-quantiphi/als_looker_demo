connection: "als_looker_demo"
label: "2) ALS Genomic Bronze Layer"
include: "/views/*/*.view.lkml"                # include all views in the views/ folder in this project

# each dataset is over 25 GB
explore: clinical_dataset_chr1 {
  from: chr_data__chr1
}
explore: clinical_dataset_chr2 {
  from: chr_data__chr2
  }
explore: clinical_residual_dataset {
  from: chr_data__residual
}
explore: genomic_audit_table {
  from: genomic_audit_table
}
