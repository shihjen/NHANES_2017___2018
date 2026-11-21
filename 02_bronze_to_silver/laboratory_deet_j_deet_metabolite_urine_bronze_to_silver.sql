CREATE OR REPLACE TABLE nhanes_2017___2018.laboratory_silver.deet_metabolite_urine AS
SELECT DISTINCT
    SEQN AS Respondent_ID,
    WTSB2YR AS Subsampl_B_Weights,
    URXDEA AS DEET_Acid_ng_mL,
    CASE 
        WHEN URDDEALC = 0 THEN "At or above detection limit"
        WHEN URDDEALC = 1 THEN "Below lower detection limit"
        ELSE "Missing"
    END AS DEET_Acid_Comment_Code,
    URX3MEA AS 3_Ethylcarbamoyl_Benzoic_Acid,
    CASE 
        WHEN URD3MELC = 0 THEN "At or above detection limit"
        WHEN URD3MELC = 1 THEN "Below lower detection limit"
        ELSE "Missing"
    END AS 3_Ethylcarbamoyl_Benzoic_Acid_Comment_Code
FROM nhanes_2017___2018.nhanes_bronze.deet_j
;