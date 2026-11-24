CREATE OR REPLACE TABLE nhanes_2017___2018.laboratory_silver.lead_cadmium_total_mercury_selenium_manganese_blood AS
SELECT DISTINCT
    SEQN AS Respondent_ID,
    LBXBPB AS Blood_Lead_ug_dL,
    LBDBPBSI AS Blood_Lead_umol_L,
    CASE 
        WHEN LBDBPBLC = 0 THEN "At or above detection limit"
        WHEN LBDBPBLC = 1 THEN "Below lower detection limit"
        ELSE "Missing"
    END AS Blood_Lead_Comment_Code,
    LBXBCD AS Blood_Cadmium_ug_L,
    LBDBCDSI AS Blood_Cadmium_nmol_L,
    CASE 
        WHEN LBDBCDLC = 0 THEN "At or above detection limit"
        WHEN LBDBCDLC = 1 THEN "Below lower detection limit"
        ELSE "Missing"
    END AS Blood_Cadmium_Comment_Code,
    LBXTHG AS Blood_Mercury_Total_ug_L,
    LBDTHGSI AS Blood_Mercury_Total_nmol_L,
    CASE 
        WHEN LBDTHGLC = 0 THEN "At or above detection limit"
        WHEN LBDTHGLC = 1 THEN "Below lower detection limit"
        ELSE "Missing"
    END AS Blood_Mercury_Total_Comment_Code,
    LBXBSE AS Blood_Selenium_ug_L,
    LBDBSESI AS Blood_Selenium_umol_L,
    CASE 
        WHEN LBDBSELC = 0 THEN "At or above detection limit"
        WHEN LBDBSELC = 1 THEN "Below lower detection limit"
        ELSE "Missing"
    END AS Blood_Selenium_Comment_Code,
    LBXBMN AS Blood_Manganese_ug_L,
    LBDBMNSI AS Blood_Manganese_nmol_L,
    CASE 
        WHEN LBDBMNLC = 0 THEN "At or above detection limit"
        WHEN LBDBMNLC = 1 THEN "Below lower detection limit"
        ELSE "Missing"
    END AS Blood_Manganese_Comment_Code
FROM nhanes_2017___2018.nhanes_bronze.pbcd_j
;