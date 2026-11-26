CREATE OR REPLACE TABLE nhanes_2017___2018.laboratory_silver.perchlorate_nitrate_and_thiocyanate_urine AS
SELECT DISTINCT
    SEQN AS Respondent_ID,
    WTSA2YR AS Subsample_A_Weights,
    URXUP8 AS Perchlorate_Urine_ng_mL,
    CASE
        WHEN URDUP8LC = 0 THEN "At or above detection limit"
        WHEN URDUP8LC = 1 THEN "Below lower detection limit"
        ELSE "Missing"
    END AS Perchlorate_Urine_Comment_Code,
    URXNO3 AS Nitrate_Urine_ng_mL,
    CASE
        WHEN URDNO3LC = 0 THEN "At or above detection limit"
        WHEN URDNO3LC = 1 THEN "Below lower detection limit"
        ELSE "Missing"
    END AS Nitrate_Urine_Comment_Code,
    URXSCN AS Thiocyanate_Urine_ng_mL,
    CASE
        WHEN URDSCNLC = 0 THEN "At or above detection limit"
        WHEN URDSCNLC = 1 THEN "Below lower detection limit"
        ELSE "Missing"
    END AS Thiocyanate_Urine_Comment_Code
FROM nhanes_2017___2018.nhanes_bronze.pernt_j
;