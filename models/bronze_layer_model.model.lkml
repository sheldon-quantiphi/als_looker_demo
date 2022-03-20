connection: "als_looker_demo"
label: "3) ALS Bronze Layer Model"



include: "/views/*/*.view.lkml"                # include all views in the views/ folder in this project
            # include all views in the views/ folder in this project
# include: "/**/*.view.lkml"                 # include all views in this project
# include: "my_dashboard.dashboard.lookml"   # include a LookML dashboard called my_dashboard



explore: survey_info{
  from: tbl_survey_question

  join: tbl_survey_response {
    sql_on: ${survey_info.survey_id} = ${tbl_survey_response.survey_id} and ${survey_info.survey_id} = ${tbl_survey_response.subject_id};;
    relationship: many_to_one

}
}
