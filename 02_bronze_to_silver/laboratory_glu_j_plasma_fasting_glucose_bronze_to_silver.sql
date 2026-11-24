CREATE OR REPLACE TABLE nhanes_2017___2018.laboratory_silver.plasma_fasting_glucose AS
SELECT DISTINCT
    SEQN AS Respondent_ID,
    WTSAF2YR AS Fasting_Subsample_2_Year_MEC_Weight,
    LBXGLU AS Fasting_Glucose_mg_dL,
    LBDGLUSI AS Fasting_Glucose_mmol_L
FROM nhanes_2017___2018.nhanes_bronze.glu_j
;