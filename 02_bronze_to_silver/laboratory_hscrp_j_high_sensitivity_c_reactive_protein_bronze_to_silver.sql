CREATE OR REPLACE TABLE nhanes_2017___2018.laboratory_silver.high_sensitivity_c_reactive_protein AS
SELECT DISTINCT
    SEQN AS Respondent_ID,
    LBXHSCRP AS HS_C_Reactive_Protein_mg_L,
    CASE
        WHEN LBDHRPLC = 0 THEN "At or above detection limit"
        WHEN LBDHRPLC = 1 THEN "Below lower detection limit"
        ELSE "Missing"
    END AS HS_C_Reactive_Protein_Comment_Code
FROM nhanes_2017___2018.nhanes_bronze.hscrp_j
;