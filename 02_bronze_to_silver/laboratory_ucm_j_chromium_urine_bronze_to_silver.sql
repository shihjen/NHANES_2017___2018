CREATE OR REPLACE TABLE nhanes_2017___2018.laboratory_silver.chromium_urine AS
SELECT DISTINCT
    SEQN AS Respondent_ID,
    WTSA2YR AS Subsample_A_Weights,
    URXUCM AS Chromium_Urine_ug_L,
    CASE
        WHEN URDUCMLC = 0 THEN "At or above detection limit"
        WHEN URDUCMLC = 1 THEN "Below lower detection limit"
        ELSE "Missing"
    END AS Chromium_Urine_Comment_Code
FROM nhanes_2017___2018.nhanes_bronze.ucm_j
;