CREATE OR REPLACE TABLE nhanes_2017___2018.laboratory_silver.organophosphate_insecticides_dialkyl_phosphate_metabolites_urine AS
SELECT DISTINCT
    SEQN AS Respondent_ID,
    WTSB2YR AS Environmenta_Subsample_B_Weights,
    URXOP1 AS Dimethylphosphate_ng_mL,
    CASE 
        WHEN URDOP1LC = 0 THEN "At or above detection limit"
        WHEN URDOP1LC = 1 THEN "Below lower detection limit"
        ELSE "Missing"
    END AS Dimethylphosphate_Comment_Code,
    URXOP2 AS Diethylphosphate_ng_mL,
    CASE 
        WHEN URDOP2LC = 0 THEN "At or above detection limit"
        WHEN URDOP2LC = 1 THEN "Below lower detection limit"
        ELSE "Missing"
    END AS Diethylphosphate_Comment_Code,
    URXOP3 AS Dimethylthiophosphate_ng_mL,
    CASE 
        WHEN URDOP3LC = 0 THEN "At or above detection limit"
        WHEN URDOP3LC = 1 THEN "Below lower detection limit"
        ELSE "Missing"
    END AS Dimethylthiophosphate_Comment_Code,
    URXOP4 AS Diethylthiophosphate_ng_mL,
    CASE
        WHEN URDOP4LC = 0 THEN "At or above detection limit"
        WHEN URDOP4LC = 1 THEN "Below lower detection limit"
        ELSE "Missing"
    END AS Diethylthiophosphate_Comment_Code,
    URXOP5 AS Dimethyldithiophosphate_ng_mL,
    CASE 
        WHEN URDOP5LC = 0 THEN "At or above detection limit"
        WHEN URDOP5LC = 1 THEN "Below lower detection limit"
        ELSE "Missing"
    END AS Dimethyldithiophosphate_Comment_Code,
    URXOP6 AS Diethyldithiophosphate_ng_mL,
    CASE 
        WHEN URDOP6LC = 0 THEN "At or above detection limit"
        WHEN URDOP6LC = 1 THEN "Below lower detection limit"
        ELSE "Missing"
    END AS Diethyldithiophosphate_Comment_Code
FROM nhanes_2017___2018.nhanes_bronze.opd_j
;