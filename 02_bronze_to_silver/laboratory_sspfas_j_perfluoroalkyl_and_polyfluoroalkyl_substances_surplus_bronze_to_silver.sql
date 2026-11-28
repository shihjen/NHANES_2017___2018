CREATE OR REPLACE TABLE nhanes_2017___2018.laboratory_silver.perfluoroalkyl_and_polyfluoroalkyl_substances_surplus AS
SELECT DISTINCT
    SEQN AS Respondent_ID,
    WTSSBJ2Y AS Surplus_Specimen_B_17_18_2year_Weights,
    SSDONA AS Dodecafluoro_3H_4_8_Dioxanoate,
    CASE 
        WHEN SSDONAL = 0 THEN "At or above detection limit"
        WHEN SSDONAL = 1 THEN "Below lower detection limit"
        ELSE "Missing"
    END AS Dodecafluoro_3H_4_8_Dioxanoate_Comment_Code,
    SSGENX AS GenX,
    CASE 
        WHEN SSGENXL = 0 THEN "At or above detection limit"
        WHEN SSGENXL = 1 THEN "Below lower detection limit"
        ELSE "Missing"
    END AS GenX_Comment_Code,
    SSCLPF AS Chlorohexadecafluorooxanonane_Sulfonate,
    CASE 
        WHEN SSCLPFL = 0 THEN "At or above detection limit"
        WHEN SSCLPFL = 1 THEN "Below lower detection limit"
        ELSE "Missing"
    END AS Chlorohexadecafluorooxanonane_Sulfonate_Comment_Code,
    SSFHPS AS Perfluoro_1_Heptanesulfonate,
    CASE
        WHEN SSFHPSL = 0 THEN "At or above detection limit"
        WHEN SSFHPSL = 1 THEN "Below lower detection limit"
        ELSE "Missing" 
    END AS Perfluoro_1_Heptanesulfonate_Comment_Code,
    SSPFHA AS Perfluorohexanoate,
    CASE 
        WHEN SSPFHAL = 0 THEN "At or above detection limit"
        WHEN SSPFHAL = 1 THEN "Below lower detection limit"
        ELSE "Missing" 
    END AS Perfluorohexanoate_Comment_Code
FROM nhanes_2017___2018.nhanes_bronze.sspfas_j
;