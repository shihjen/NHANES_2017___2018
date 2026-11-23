CREATE OR REPLACE TABLE nhanes_2017___2018.laboratory_silver.insulin AS
SELECT DISTINCT
    SEQN AS Respondent_ID,
    WTSAF2YR AS Fasting_Subsample_2_Year_MEC_Weight,
    LBXIN AS Insulin_uU_mL,
    LBDINSI AS Insulin_pmol_L,
    CASE
        WHEN LBDINLC = 0 THEN "At or above detection limit"
        WHEN LBDINLC = 1 THEN "Below lower detection limit"
        ELSE "Missing"
    END AS Insulin_Comment_Code
FROM nhanes_2017___2018.nhanes_bronze.ins_j
;