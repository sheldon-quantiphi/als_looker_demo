view: tbl_subjects {
  sql_table_name: `capsule-plateform.bronze_layer.tblSubjects`
    ;;

  dimension: country_id {
    type: number
    sql: ${TABLE}.CountryID ;;
  }

  dimension: indicator {
    type: string
    sql: ${TABLE}.Indicator ;;
  }

  dimension: lims_id {
    type: number
    sql: ${TABLE}.LimsID ;;
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

  dimension: region_id {
    type: number
    sql: ${TABLE}.RegionID ;;
  }

  dimension: subject_active {
    type: yesno
    sql: ${TABLE}.SubjectActive ;;
  }

  dimension: subject_address {
    type: string
    sql: ${TABLE}.SubjectAddress ;;
  }

  dimension: subject_city {
    type: string
    sql: ${TABLE}.SubjectCity ;;
  }

  dimension: subject_created_by {
    type: number
    sql: ${TABLE}.SubjectCreatedBy ;;
  }

  dimension_group: subject_created {
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
    sql: ${TABLE}.SubjectCreatedDate ;;
  }

  dimension_group: subject_date_of_birth {
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
    sql: ${TABLE}.SubjectDateOfBirth ;;
  }

  dimension_group: subject_date_of_call {
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
    sql: ${TABLE}.SubjectDateOfCall ;;
  }

  dimension: subject_deleted {
    type: yesno
    sql: ${TABLE}.SubjectDeleted ;;
  }

  dimension: subject_email {
    type: string
    sql: ${TABLE}.SubjectEmail ;;
  }

  dimension: subject_external_id {
    type: string
    sql: ${TABLE}.SubjectExternalID ;;
  }

  dimension: subject_external_idint {
    type: number
    sql: ${TABLE}.SubjectExternalIDInt ;;
  }

  dimension: subject_first_name {
    type: string
    sql: ${TABLE}.SubjectFirstName ;;
  }

  dimension: subject_gender {
    type: string
    sql: ${TABLE}.SubjectGender ;;
  }

  dimension_group: subject_hospital_visitdate {
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
    sql: ${TABLE}.SubjectHospitalVisitdate ;;
  }

  dimension: subject_id {
    type: number
    sql: ${TABLE}.SubjectID ;;
  }

  dimension_group: subject_lab_visit {
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
    sql: ${TABLE}.SubjectLabVisitDate ;;
  }

  dimension_group: subject_last_login {
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
    sql: ${TABLE}.SubjectLastLoginDate ;;
  }

  dimension: subject_last_name {
    type: string
    sql: ${TABLE}.SubjectLastName ;;
  }

  dimension: subject_lite_participant {
    type: yesno
    sql: ${TABLE}.SubjectLiteParticipant ;;
  }

  dimension: subject_modified_by {
    type: number
    sql: ${TABLE}.SubjectModifiedBy ;;
  }

  dimension_group: subject_modified {
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
    sql: ${TABLE}.SubjectModifiedDate ;;
  }

  dimension: subject_password {
    type: string
    sql: ${TABLE}.SubjectPassword ;;
  }

  dimension_group: subject_pathogen_testing_complete {
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
    sql: ${TABLE}.SubjectPathogenTestingCompleteDate ;;
  }

  dimension: subject_pathogen_testing_failed {
    type: number
    sql: ${TABLE}.SubjectPathogenTestingFailed ;;
  }

  dimension: subject_pathogen_testing_results {
    type: string
    sql: ${TABLE}.SubjectPathogenTestingResults ;;
  }

  dimension: subject_phone {
    type: string
    sql: ${TABLE}.SubjectPhone ;;
  }

  dimension: subject_protocol_id {
    type: number
    sql: ${TABLE}.SubjectProtocolID ;;
  }

  dimension: subject_secondary_phone {
    type: string
    sql: ${TABLE}.SubjectSecondaryPhone ;;
  }

  dimension: subject_source_lite {
    type: yesno
    sql: ${TABLE}.SubjectSourceLite ;;
  }

  dimension: subject_stage_id {
    type: number
    sql: ${TABLE}.SubjectStageID ;;
  }

  dimension: subject_status_id {
    type: number
    sql: ${TABLE}.SubjectStatusID ;;
  }

  dimension: subject_zip {
    type: string
    sql: ${TABLE}.SubjectZip ;;
  }

  dimension: user_id {
    type: number
    sql: ${TABLE}.UserID ;;
  }

  measure: count {
    type: count
    drill_fields: [subject_first_name, subject_last_name]
  }
}
