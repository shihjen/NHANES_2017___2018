CREATE OR REPLACE TABLE nhanes_2017___2018.laboratory_silver.standard_biochemistry_profile AS
SELECT DISTINCT
    SEQN AS Respondent_ID,
    LBXSATSI AS Alanine_Aminotransferase_ALT_U_L,
    CASE
        WHEN LBDSATLC = 0 THEN "At or above detection limit"
        WHEN LBDSATLC = 1 THEN "Below lower detection limit"
        ELSE "Missing"
    END AS Alanine_Aminotransferase_Comment_Code,
    LBXSAL AS Albumin_Refrigerated_Serum_g_dL,
    LBDSALSI AS Albumin_Refrigerated_Serum_g_L,
    LBXSAPSI AS Alkaline_Phosphatase_ALP_IU_L,
    LBXSASSI AS Aspartate_Aminotransferase_AST_U_L,
    LBXSC3SI AS Bicarbonate_mmol_L,
    LBXSBU AS Blood_Urea_Nitrogen_mg_dL,
    LBDSBUSI AS Blood_Urea_Nitrogen_mmol_L,
    LBXSCLSI AS Chloride_mmol_L,
    LBXSCK AS Creatine_Phosphokinase_CPK_IU_L,
    LBXSCR AS Creatinine_Refrigerated_Serum_mg_dL,
    LBDSCRSI AS Creatinine_Refrigerated_Serum_umol_L,
    LBXSGB AS Globulin_g_dL,
    LBDSGBSI AS Globulin_g_L,
    LBXSGL AS Glucose_Refrigerated_Serum_mg_dL,
    LBDSGLSI AS Glucose_Refrigerated_Serum_mmol_L,
    LBXSGTSI AS Gamma_Glutamyl_Transferase_GGT_IU_L,
    CASE
        WHEN LBDSGTLC = 0 THEN "At or above detection limit"
        WHEN LBDSGTLC = 1 THEN "Below lower detection limit"
        ELSE "Missing"
    END AS Gamma_Glutamyl_Transferase_Comment_Code,
    LBXSIR AS Iron_Refrigerated_Serum_ug_dL,
    LBDSIRSI AS Iron_Refrigerated_Serum_umol_L,
    LBXSLDSI AS Lactate_Dehydrogenase_LDH_IU_L,
    LBXSOSSI AS Osmolality_mmol_Kg,
    LBXSPH AS Phosphorus_mg_dL,
    LBDSPHSI AS Phosphorus_mmol_L,
    LBXSKSI AS Potassium_mmol_L,
    LBXSNASI AS Sodium_mmol_L,
    LBXSTB AS Total_Bilirubin_mg_dL,
    LBDSTBSI AS Total_Bilirubin_umol_L,
    CASE
        WHEN LBDSTBLC = 0 THEN "At or above detection limit"
        WHEN LBDSTBLC = 1 THEN "Below lower detection limit"
        ELSE "Missing"
    END AS Total_Bilirubin_Comment_Code,
    LBXSCA AS Total_Calcium_mg_dL,
    LBDSCASI AS Tota_Calcium_mmol_L,
    LBXSCH AS Cholesterol_Refrigerated_Serum_mg_dL,
    LBDSCHSI AS Cholesterol_Refrigerated_Serum_mmol_L,
    LBXSTP AS Total_Protein_g_dL,
    LBDSTPSI AS Total_Protein_g_L,
    LBXSTR AS Triglycerides_Refrigerated_Serum_mg_dL,
    LBDSTRSI AS Triglycerides_Refrigerated_Serum_mmol_L,
    LBXSUA AS Uric_Acid_mg_dL,
    LBDSUASI AS Uric_Acid_umol_L
FROM nhanes_2017___2018.nhanes_bronze.biopro_j
;