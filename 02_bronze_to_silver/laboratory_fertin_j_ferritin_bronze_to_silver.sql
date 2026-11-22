CREATE OR REPLACE TABLE nhanes_2017___2018.laboratory_silver.ferritin AS
SELECT DISTINCT
    SEQN AS Respondent_ID,
    LBXFER AS Ferritin_ng_mL,
    LBDFERSI AS Ferritin_ug_L
FROM nhanes_2017___2018.nhanes_bronze.fertin_j
;