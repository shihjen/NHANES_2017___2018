CREATE OR REPLACE TABLE nhanes_2017___2018.laboratory_silver.vitamin_d AS
SELECT DISTINCT
    SEQN AS Respondent_ID,
    LBXVIDMS AS 25OHD2_25OHD3_nmol_L,
    CASE 
        WHEN LBDVIDLC = 0 THEN "At or above detection limit"
        WHEN LBDVIDLC = 1 THEN "Below lower detection limit"
        ELSE "Missing"
    END AS 25OHD2_25OHD3_Comment_Code,
    LBXVD2MS AS 25OHD2_nmol_L,
    CASE 
        WHEN LBDVD2LC = 0 THEN "At or above detection limit"
        WHEN LBDVD2LC = 1 THEN "Below lower detection limit"
        ELSE "Missing"
    END AS 25OHD2_Comment_Code,
    LBXVD3MS AS 25OHD3_nmol_L,
    CASE  
        WHEN LBDVD3LC = 0 THEN "At or above detection limit"
        WHEN LBDVD3LC = 1 THEN "Below lower detection limit"
        ELSE "Missing"
    END AS 25OHD3_Comment_Code,
    LBXVE3MS AS epi_25OHD3_nmol_L,
    CASE 
        WHEN LBDVE3LC = 0 THEN "At or above detection limit"
        WHEN LBDVE3LC = 1 THEN "Below lower detection limit"
        ELSE "Missing"
    END AS epi_25OHD3_Comment_Code
FROM nhanes_2017___2018.nhanes_bronze.vid_j
;