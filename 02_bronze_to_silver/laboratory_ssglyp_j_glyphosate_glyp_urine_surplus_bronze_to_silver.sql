CREATE OR REPLACE TABLE nhanes_2017___2018.laboratory_silver.glyphosphate_glyp_urine_surplus AS
SELECT DISTINCT
    SEQN AS Respondent_ID,
    WTSSBJ2Y AS Surplus_Specimen_B_17_18_2yr_Weights,
    SSGLYP AS Glyphosate_ng_mL,
    CASE
        WHEN SSGLYPL = 0 THEN "At or above detection limit"
        WHEN SSGLYPL = 1 THEN "Below lower detection limit"
        ELSE "Missing" 
    END AS Glyphosat_Comment_Code
FROM nhanes_2017___2018.nhanes_bronze.ssglyp_j
;