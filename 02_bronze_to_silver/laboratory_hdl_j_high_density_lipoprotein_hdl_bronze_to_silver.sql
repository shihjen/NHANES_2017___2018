CREATE OR REPLACE TABLE nhanes_2017___2018.laboratory_silver.high_density_lipoprotein_hdl AS
SELECT DISTINCT
    SEQN AS Respondent_ID,
    LBDHDD AS Direct_HDL_Cholesterol_mg_dL,
    LBDHDDSI AS Direct_HDL_Cholesterol_mmol_L
FROM nhanes_2017___2018.nhanes_bronze.hdl_j
;