CREATE OR REPLACE TABLE nhanes_2017___2018.laboratory_silver.mercury_inorganic_urine AS
SELECT DISTINCT
    SEQN AS Respondent_ID,
    WTSA2YR AS Subsample_A_Weights,
    URXUHG AS Urine_Mercury_ug_L,
    CASE 
        WHEN URDUHGLC = 0 THEN "At or above detection limit"
        WHEN URDUHGLC = 1 THEN "Below lower detection limit"
        ELSE "Missing"
    END AS Mercury_Urine_Comment_Code
FROM nhanes_2017___2018.nhanes_bronze.uhg_j
;