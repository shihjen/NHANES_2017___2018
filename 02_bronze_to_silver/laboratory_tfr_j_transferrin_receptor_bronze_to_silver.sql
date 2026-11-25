CREATE OR REPLACE TABLE nhanes_2017___2018.laboratory_silver.transferrin_receptor AS
SELECT DISTINCT
    SEQN AS Respondent_ID,
    LBXTFR AS Transferrin_Receptor_mg_L,
    LBDTFRSI AS Transferrin_Receptor_nmol_L
FROM nhanes_2017___2018.nhanes_bronze.tfr_j
;