CREATE OR REPLACE TABLE nhanes_2017___2018.laboratory_silver.arsenic_total_urine AS
SELECT DISTINCT
    SEQN AS Respondent_ID,
    WTSA2YR AS Subsample_A_Weights,
    URXUAS AS Arsenic_Total_Urine_ug_L,
    CASE
        WHEN URDUASLC = 0 THEN "At or above detection limit"
        WHEN URDUASLC = 1 THEN "Below lower detection limit"
        ELSE "Missing"
    END AS Arsenic_Total_Urine_Comment_Code
FROM nhanes_2017___2018.nhanes_bronze.utas_j
;