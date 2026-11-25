CREATE OR REPLACE TABLE nhanes_2017___2018.laboratory_silver.nickel_urine AS
SELECT DISTINCT
    SEQN AS Respondent_ID,
    WTSA2YR AS Subsample_A_Weights,
    URXUNI AS Nickel_Urine_ug_L,
    CASE
        WHEN URDUNILC = 0 THEN "At or above detection limit"
        WHEN URDUNILC = 1 THEN "Below lower detection limit"
        ELSE "Missing"
    END AS Nickel_Urine_Comment_Code
FROM nhanes_2017___2018.nhanes_bronze.uni_j
;