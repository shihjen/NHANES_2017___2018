CREATE OR REPLACE TABLE nhanes_2017___2018.laboratory_silver.alpha_1_acid_glycoprotein_serum_surplus AS
SELECT DISTINCT
    SEQN AS Respondent_ID,
    WTSSGP2Y AS Surplus_Specimen_AGP_2_Year_Weights,
    SSAGP AS Alpha_1_Acid_Glycoprotein_g_L
FROM nhanes_2017___2018.nhanes_bronze.ssagp_j
;