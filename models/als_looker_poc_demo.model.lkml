connection: "als_looker_demo"
label: "1) ALS Looker POC Demo"

include: "/views/*/*.view.lkml"                # include all views in the views/ folder in this project
# include all views in the views/ folder in this project
# include: "/**/*.view.lkml"                 # include all views in this project
# include: "my_dashboard.dashboard.lookml"   # include a LookML dashboard called my_dashboard

datagroup: als_looker_demo_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: als_looker_demo_default_datagroup

explore: survey_info{
  from: tbl_survey_question

  join: tbl_survey_response {
    sql_on: ${survey_info.survey_id} = ${tbl_survey_response.survey_id} and ${survey_info.survey_id} = ${tbl_survey_response.subject_id};;
    relationship: many_to_one

  }
}
explore: tbl_subjects{
  from: tbl_subjects
  label: "Participants"
  join: tbl_subject_details {
    sql_on: ${tbl_subjects.subject_id} = ${tbl_subject_details.subject_id} ;;
    relationship: many_to_one
    }
  join: tbl_subject_events {
    sql_on: ${tbl_subjects.subject_id} = ${tbl_subject_events.subject_id} ;;
    relationship: many_to_one
  }
  join: tbl_subject_data {
    sql_on: ${tbl_subjects.subject_id} = ${tbl_subject_data.subject_id} ;;
    relationship: many_to_one
  }
  join: tbl_event_types {
    sql_on: ${tbl_event_types.event_type_id} = ${tbl_subject_events.event_type_id} ;;
    relationship: many_to_one
  }
  join: tbl_subject_diagnosis_history{
    sql_on: ${tbl_subject_diagnosis_history.subject_id} = ${tbl_subjects.subject_id} ;;
    relationship: many_to_one
  }
  join: tbl_survey_response{
    sql_on: ${tbl_survey_response.subject_id} = ${tbl_subjects.subject_id} ;;
    relationship: many_to_one
  }
  join: tbl_survey_question{
    sql_on: ${tbl_survey_response.survey_id} = ${tbl_survey_question.survey_id} ;;
    relationship: many_to_one
  }
  join: tbl_survey_answer{
    sql_on: ${tbl_survey_answer.question_id} = ${tbl_survey_question.question_id} ;;
    relationship: many_to_one
  }
  join: chr_data__sample_info{
    sql_on: ${chr_data__sample_info.subject_id} = ${tbl_subjects.subject_id} ;;
    relationship: many_to_one
  }
  join: chr_data__chr1_view {
    sql_on: ${chr_data__chr1_view.sample_id} = ${chr_data__chr1_view.sample_id} and ${chr_data__chr1_view.subject_id} = ${tbl_subjects.subject_id} ;;
    relationship: many_to_one
  }
  # join: chr_data__chr1 {
  #   sql_on: ${chr_data__chr1.sample_id} = ${chr_data__chr1.sample_id} and ${chr_data__chr1.subject_id} = ${tbl_subjects.subject_id} ;;
  #   relationship: many_to_one
  # }
  # join: chr_data__chr1 {
  #   view_label: "Chr Data Chr1: Call"
  #   sql: LEFT JOIN UNNEST(${chr_data__chr1.call}) as chr_data__chr1__call ;;
  #   relationship: one_to_many
  # }

  # join: chr_data__chr1__names {
  #   view_label: "Chr Data Chr1: Names"
  #   sql: LEFT JOIN UNNEST(${chr_data__chr1.names}) as chr_data__chr1__names ;;
  #   relationship: one_to_many
  # }

  # join: chr_data__chr1__filter {
  #   view_label: "Chr Data Chr1: Filter"
  #   sql: LEFT JOIN UNNEST(${chr_data__chr1.filter}) as chr_data__chr1__filter ;;
  #   relationship: one_to_many
  # }

  # join: chr_data__chr1__call__ad {
  #   view_label: "Chr Data Chr1: Call Ad"
  #   sql: LEFT JOIN UNNEST(${chr_data__chr1__call.ad}) as chr_data__chr1__call__ad ;;
  #   relationship: one_to_many
  # }

  # join: chr_data__chr1__call__pl {
  #   view_label: "Chr Data Chr1: Call Pl"
  #   sql: LEFT JOIN UNNEST(${chr_data__chr1__call.pl}) as chr_data__chr1__call__pl ;;
  #   relationship: one_to_many
  # }

  # join: chr_data__chr1__call__sb {
  #   view_label: "Chr Data Chr1: Call Sb"
  #   sql: LEFT JOIN UNNEST(${chr_data__chr1__call.sb}) as chr_data__chr1__call__sb ;;
  #   relationship: one_to_many
  # }

  # join: chr_data__chr1__call__genotype {
  #   view_label: "Chr Data Chr1: Call Genotype"
  #   sql: LEFT JOIN UNNEST(${chr_data__chr1__call.genotype}) as chr_data__chr1__call__genotype ;;
  #   relationship: one_to_many
  # }

  # join: chr_data__chr1__alternate_bases {
  #   view_label: "Chr Data Chr1: Alternate Bases"
  #   sql: LEFT JOIN UNNEST(${chr_data__chr1.alternate_bases}) as chr_data__chr1__alternate_bases ;;
  #   relationship: one_to_many
  # }
}
