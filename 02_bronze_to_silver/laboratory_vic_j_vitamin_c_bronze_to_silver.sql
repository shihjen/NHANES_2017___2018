CREATE OR REPLACE TABLE nhanes_2017___2018.laboratory_silver.vitamin_c AS
SELECT DISTINCT
    SEQN AS Respondent_ID,
    LBXVIC AS Vitamin_C_mg_dL,
    LBDVICSI AS Vitamin_C_umol_L,
    CASE 
        WHEN LBDVICLC = 0 THEN "At or above detection limit"
        WHEN LBDVICLC = 1 THEN "Below lower detection limit"
        ELSE "Missing"
    END AS Vitamin_C_Comment_Code
FROM nhanes_2017___2018.nhanes_bronze.vic_j
;