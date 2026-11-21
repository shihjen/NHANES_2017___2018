CREATE OR REPLACE TABLE nhanes_2017___2018.laboratory_silver.cholesterol_total AS
SELECT DISTINCT
    SEQN AS Respondent_ID,
    LBXTC AS Total_Cholesterol_mg_dL,
    LBDTCSI AS Total_Cholesterol_mmol_L
FROM nhanes_2017___2018.nhanes_bronze.tchol_j
;