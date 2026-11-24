CREATE OR REPLACE TABLE nhanes_2017___2018.laboratory_silver.mercury_inorganic_ethyl_and_methyl_blood AS
SELECT DISTINCT
    SEQN AS Respondent_ID,
    LBXIHG AS Mercury_Inorganic_ug_L,
    LBDIHGSI AS Mercury_Inorganic_nmol_L,
    CASE
        WHEN LBDIHGLC = 0 THEN "At or above detection limit"
        WHEN LBDIHGLC = 1 THEN "Below lower detection limit"
        ELSE "Missing"
    END AS Mercury_Inorganic_Comment_Code,
    LBXBGE AS Mercury_Ethyl_ug_L,
    LBDBGESI AS Mercury_Ethyl_nmol_L,
    CASE
        WHEN LBDBGELC = 0 THEN "At or above detection limit"
        WHEN LBDBGELC = 1 THEN "Below lower detection limit"
        ELSE "Missing"
    END AS Mercury_Ethyl_Comment_Code,
    LBXBGM AS Mercury_Methyl_ug_L,
    LBDBGMSI AS Mercury_Methyl_nmol_L,
    CASE 
        WHEN LBDBGMLC = 0 THEN "At or above detection limit"
        WHEN LBDBGMLC = 1 THEN "Below lower detection limit"
        ELSE "Missing"
    END AS Mercury_Methyl_Comment_Code
FROM nhanes_2017___2018.nhanes_bronze.ihgem_j
;