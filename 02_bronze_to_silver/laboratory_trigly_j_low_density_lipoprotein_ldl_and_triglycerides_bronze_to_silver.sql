CREATE OR REPLACE TABLE nhanes_2017___2018.laboratory_silver.low_density_lipoprotein_ldl_and_triglycerides AS
SELECT DISTINCT
    SEQN AS Respondent_ID,
    WTSAF2YR AS Fasting_Subsample_2_Year_MEC_Weight,
    LBXTR AS Triglyceride_mg_dL,
    LBDTRSI AS Triglyceride_mmol_L,
    LBDLDL AS LDL_Cholesterol_Friedewald_mg_dL,
    LBDLDLSI AS LDL_Cholesterol_Friedewald_mmol_L,
    LBDLDLM AS LDL_Cholesterol_Martin_Hopkins_mg_dL,
    LBDLDMSI AS LDL_Cholesterol_Martin_Hopkins_mmol_L,
    LBDLDLN AS LDL_Cholesterol_NIH_Equation_2_mg_dL,
    LBDLDNSI AS LDL_Cholesterol_NIH_Equation_2_mmol_L
FROM nhanes_2017___2018.nhanes_bronze.trigly_j
;