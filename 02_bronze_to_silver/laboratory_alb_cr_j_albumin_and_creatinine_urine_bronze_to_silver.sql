CREATE OR REPLACE TABLE nhanes_2017___2018.laboratory_silver.albumin_and_creatinine_urine AS
SELECT DISTINCT
    SEQN AS Respondent_ID,
    URXUMA AS Albumin_Urine_ug_mL,
    URXUMS AS Albumin_Urine_mg_L,
    CASE
        WHEN URDUMALC = 0 THEN "At or above the detection limit"
        WHEN URDUMALC = 1 THEN "Below lower detection limit"
        ELSE "Missing"
    END AS Albumin_Urine_Comment_Code,
    URXUCR AS Creatinine_Urine_mg_dL,
    URXCRS AS Creatinine_Urine_umol_L,
    CASE
        WHEN URDUCRLC = 0 THEN "At or above the detection limit"
        WHEN URDUCRLC = 1 THEN "Below lower detection limit"
        ELSE "Missing"
    END AS Creatinine_Urine_Comment_Code,
    URDACT AS Albumin_Creatinine_Ratio_mg_g
FROM nhanes_2017___2018.nhanes_bronze.alb_cr_j
;