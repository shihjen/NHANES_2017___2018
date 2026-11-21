CREATE OR REPLACE TABLE nhanes_2017___2018.laboratory_silver.chromium_and_cobalt AS
SELECT DISTINCT
    SEQN AS Respondent_ID,
    LBXBCR AS Chromium_ug_L,
    LBDBCRSI AS Chromium_nmol_L,
    CASE
        WHEN LBDBCRLC = 0 THEN "At or above detection limit"
        WHEN LBDBCRLC = 1 THEN "Below lower detection limit"
        ELSE "Missing"
    END AS Chromium_Comment_Code,
    LBXBCO AS Cobalt_ug_L,
    LBDBCOSI AS Cobalt_nmol_L,
    CASE
        WHEN LBDBCOLC = 0 THEN "At or above detection limit"
        WHEN LBDBCOLC = 1 THEN "Below lower detection limit"
        ELSE "Missing"
    END AS Cobalt_Comment_Code
FROM nhanes_2017___2018.nhanes_bronze.crco_j
;