CREATE OR REPLACE TABLE nhanes_2017___2018.laboratory_silver.iodine_urine AS
SELECT DISTINCT
    SEQN AS Respondent_ID,
    WTSA2YR AS Subsample_A_Weights,
    URXUIO AS Iodine_Urine_ug_L,
    CASE 
        WHEN URDUIOLC = 0 THEN "At or above detection limit"
        WHEN URDUIOLC = 1 THEN "Below lower detection limit"
        ELSE "Missing"
    END AS Iodine_Urine_Comment_Code
FROM nhanes_2017___2018.nhanes_bronze.uio_j
;