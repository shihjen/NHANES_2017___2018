CREATE OR REPLACE TABLE nhanes_2017___2018.laboratory_silver.complete_blood_count_with_5_part_differential AS
SELECT DISTINCT
    SEQN AS Respondent_ID,
    LBXWBCSI AS White_Blood_Cell_Count_1000_cells_uL,
    LBXLYPCT AS Lymphocyte_Percent,
    LBXMOPCT AS Monocyte_Percent,
    LBXNEPCT AS Segmented_Neutrophils_Percent,
    LBXEOPCT AS Eosinophils_Percent,
    LBXBAPCT AS Basophils_Percent,
    LBDLYMNO AS Lymphocyte_Number_1000_cells_uL,
    LBDMONO AS Monocyte_Number_1000_cells_uL,
    LBDNENO AS Segmented_Neutrophils_Number_1000_cells_uL,
    LBDEONO AS Eosinophils_Number_1000_cells_uL,
    LBDBANO AS Basophils_Number_1000_cells_uL,
    LBXRBCSI AS Red_Blood_Cell_Count_million_cells_uL,
    LBXHGB AS Hemoglobin_g_dL,
    LBXHCT AS Hematocrit_Percent,
    LBXMCVSI AS Mean_Cell_Volume_fL,
    LBXMCHSI AS Mean_Cell_Hemoglobin_pg,
    LBXMC AS Mean_Cell_Hgb_Conc_g_dL,
    LBXRDW AS Red_Cell_Distribution_Width_Percent,
    LBXPLTSI AS Platelet_Count_1000_cells_uL,
    LBXMPSI AS Mean_Platelet_Volume_fL,
    LBXNRBC AS Nucleated_Red_Blood_Cells_per_100_WBC
FROM nhanes_2017___2018.nhanes_bronze.cbc_j
;