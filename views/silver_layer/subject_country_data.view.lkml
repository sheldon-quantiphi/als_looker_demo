# Un-hide and use this explore, or copy the joins into another explore, to get all the fully nested relationships from this view
explore: subject_country_data {
  hidden: yes

  join: subject_country_data__region_details {
    view_label: "Subject Country Data: Region Details"
    sql: LEFT JOIN UNNEST(${subject_country_data.region_details}) as subject_country_data__region_details ;;
    relationship: one_to_many
  }
}

view: subject_country_data {
  sql_table_name: `capsule-plateform.silver_layer.SubjectCountry_Data`
    ;;

  dimension: country_abbreviation {
    type: string
    sql: ${TABLE}.CountryAbbreviation ;;
  }

  dimension: country_name {
    type: string
    sql: ${TABLE}.CountryName ;;
  }

  dimension: region_details {
    hidden: yes
    sql: ${TABLE}.region_details ;;
  }

  dimension: subject_id {
    type: number
    sql: ${TABLE}.SubjectID ;;
  }

  measure: count {
    type: count
    drill_fields: [country_name]
  }
}

view: subject_country_data__region_details {
  dimension: region_abbreviation {
    type: string
    sql: RegionAbbreviation ;;
  }

  dimension: region_id {
    type: number
    sql: RegionID ;;
  }

  dimension: region_name {
    type: string
    sql: RegionName ;;
  }

  dimension: subject_country_data__region_details {
    type: string
    hidden: yes
    sql: subject_country_data__region_details ;;
  }
}
