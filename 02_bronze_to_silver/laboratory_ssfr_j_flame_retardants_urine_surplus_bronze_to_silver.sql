CREATE OR REPLACE TABLE nhanes_2017___2018.laboratory_silver.flame_retardants_urine_surplus AS
SELECT DISTINCT
    SEQN AS Respondent_ID,
    WTSSBJ2Y AS Surplus_Specimen_B_17_18_2yr_Weights,
    SSIPPP AS 2_Isopropyl_Phenyl_Phenyl_Phosphate_ug_L,
    CASE 
        WHEN SSIPPPL = 0 THEN "At or above detection limit"
        WHEN SSIPPPL = 1 THEN "Below lower detection limit"
        ELSE "Missing"
    END AS 2_Isopropyl_Phenyl_Phenyl_Phosphate_Comment_Code,
    SSBPPP AS 4_Tert_Butyl_Phenyl_Phenyl_Phosphate_ug_L,
    CASE 
        WHEN SSBPPPL = 0 THEN "At or above detection limit"
        WHEN SSBPPPL = 1 THEN "Below lower detection limit"
        ELSE "Missing"
    END AS 4_Tert_Butyl_Phenyl_Phenyl_Phosphate_Comment_Code
FROM nhanes_2017___2018.nhanes_bronze.ssfr_j
;