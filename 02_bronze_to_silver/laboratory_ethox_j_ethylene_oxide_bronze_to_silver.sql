CREATE OR REPLACE TABLE nhanes_2017___2018.laboratory_silver.ethylene_oxide AS
SELECT DISTINCT
    SEQN AS Respondent_ID,
    WTSA2YR AS Subsample_A_Weights,
    LBXEOA AS Ethylen_Oxide_pmol_g_Hb,
    CASE
        WHEN LBDEOALC = 0 THEN "At or above detection limit"
        WHEN LBDEOALC = 1 THEN "Below lower detection limit"
        ELSE "Missing" 
    END AS Ethylene_Oxid_Comment_Code
FROM nhanes_2017___2018.nhanes_bronze.ethox_j
;