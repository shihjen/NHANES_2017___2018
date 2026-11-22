CREATE OR REPLACE TABLE nhanes_2017___2018.laboratory_silver.glycohemoglobin AS
SELECT DISTINCT
    SEQN AS Respondent_ID,
    LBXGH AS Glycohemoglobin_Percent
FROM nhanes_2017___2018.nhanes_bronze.ghb_j
;