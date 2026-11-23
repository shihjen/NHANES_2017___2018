CREATE OR REPLACE TABLE nhanes_2017___2018.laboratory_silver.iron_status_serum AS
SELECT DISTINCT
    SEQN AS Respondent_ID,
    LBXIRN AS Iron_Frozen_Serum_ug_dL,
    LBDIRNSI AS Iron_Frozen_Serum_umol_L,
    LBXUIB AS UIBC_Serum_ug_dL,
    CASE
        WHEN LBDUIBLC = 0 THEN "At or above detection limit"
        WHEN LBDUIBLC = 1 THEN "Below lower detection limit"
        ELSE "Missing"
    END AS UIBC_Serum_Comment_Code,
    LBDUIBSI AS UIBC_Serum_umol_L,
    LBDTIB AS Total_Iron_Binding_Capacity_TIBC_ug_dL,
    LBDTIBSI AS Total_Iron_Binding_Capacity_TIBC_umol_L,
    LBDPCT AS Transferrin_Saturation_Percent
FROM nhanes_2017___2018.nhanes_bronze.fetib_j
;