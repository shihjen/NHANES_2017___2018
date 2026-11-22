CREATE OR REPLACE TABLE nhanes_2017___2018.laboratory_silver.folate_rbc AS
SELECT DISTINCT
    SEQN AS Respondent_ID,
    WTFOL2YR AS Folate_And_Folate_Forms_Weight,
    LBDRFO AS RBC_Folate_ng_mL,
    LBDRFOSI AS RBC_Folate_nmol_L
FROM nhanes_2017___2018.nhanes_bronze.folate_j
;