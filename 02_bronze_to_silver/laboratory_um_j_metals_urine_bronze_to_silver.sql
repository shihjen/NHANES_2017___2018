CREATE OR REPLACE TABLE nhanes_2017___2018.laboratory_silver.metals_urine AS
SELECT DISTINCT
    SEQN AS Respondent_ID,
    WTSA2YR AS Subsample_A_Weights,
    URXUBA AS Barium_Urine_ug_L,
    CASE
        WHEN URDUBALC = 0 THEN "At or above detection limit"
        WHEN URDUBALC = 1 THEN "Below lower detection limit"
        ELSE "Missing"
    END AS Urinary_Barium_Comment_Code,
    URXUCD AS Cadmium_Urine_ug_L,
    CASE
        WHEN URDUCDLC = 0 THEN "At or above detection limit"
        WHEN URDUCDLC = 1 THEN "Below lower detection limit"
        ELSE "Missing"
    END AS Urinary_Cadmium_Comment_Code,
    URXUCO AS Cobalt_Urine_ug_L,
    CASE
        WHEN URDUCOLC = 0 THEN "At or above detection limit"
        WHEN URDUCOLC = 1 THEN "Below lower detection limit"
        ELSE "Missing"
    END AS Urinary_Cobalt_Comment_Code,
    URXUCS AS Cesium_Urine_ug_L,
    CASE
        WHEN URDUCSLC = 0 THEN "At or above detection limit"
        WHEN URDUCSLC = 1 THEN "Below lower detection limit"
        ELSE "Missing"
    END AS Urinary_Cesium_Comment_Code,
    URXUMO AS Molybdenum_Urine_ug_L,
    CASE
        WHEN URDUMOLC = 0 THEN "At or above detection limit"
        WHEN URDUMOLC = 1 THEN "Below lower detection limit"
        ELSE "Missing"
    END AS Urinary_Molybdenum_Comment_Code,
    URXUMN AS Manganese_Urine_ug_L,
    CASE
        WHEN URDUMNLC = 0 THEN "At or above detection limit"
        WHEN URDUMNLC = 1 THEN "Below lower detection limit"
        ELSE "Missing"
    END AS Urinary_Manganese_Comment_Code,
    URXUPB AS Lead_Urine_ug_L,
    CASE
        WHEN URDUPBLC = 0 THEN "At or above detection limit"
        WHEN URDUPBLC = 1 THEN "Below lower detection limit"
        ELSE "Missing"
    END AS Urinary_Lead_Comment_Code,
    URXUSB AS Antimony_Urine_ug_L,
    CASE 
        WHEN URDUSBLC = 0 THEN "At or above detection limit"
        WHEN URDUSBLC = 1 THEN "Below lower detection limit"
        ELSE "Missing"
    END AS Urinary_Antimony_Comment_Code,
    URXUSN AS Tin_Urine_ug_L,
    CASE 
        WHEN URDUSNLC = 0 THEN "At or above detection limit"
        WHEN URDUSNLC = 1 THEN "Below lower detection limit"
        ELSE "Missing"
    END AS Urinary_Tin_Comment_Code,
    URXUTL AS Thallium_Urine_ug_L,
    CASE 
        WHEN URDUTLLC = 0 THEN "At or above detection limit"
        WHEN URDUTLLC = 1 THEN "Below lower detection limit"
        ELSE "Missing"
    END AS Urinary_Thallium_Comment_Code,
    URXUTU AS Tungsten_Urine_ug_L,
    CASE
        WHEN URDUTULC = 0 THEN "At or above detection limit"
        WHEN URDUTULC = 1 THEN "Below lower detection limit"
        ELSE "Missing"
    END AS Urinary_Tungsten_Comment_Code
FROM nhanes_2017___2018.nhanes_bronze.um_j
;