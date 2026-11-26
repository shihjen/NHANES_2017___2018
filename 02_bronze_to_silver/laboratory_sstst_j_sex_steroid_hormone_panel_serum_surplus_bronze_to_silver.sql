CREATE OR REPLACE TABLE nhanes_2017___2018.laboratory_silver.sex_steroid_hormone_panel_serum_surplus AS
SELECT DISTINCT
    SEQN AS Respondent_ID,
    WTSSTS2Y AS Surplus_Specimen_TST_2_year_Weights,
    SST17H AS 17a_Hydroxyprogesterone_ng_dL,
    SST17HSI AS 17a_Hydroxyprogesterone_nmol_L,
    CASE
        WHEN SST17HLC = 0 THEN "At or above detection limit"
        WHEN SST17HLC = 1 THEN "Below lower detection limit"
        ELSE "Missing"
    END AS 17a_Hydroxyprogesterone_Comment_Code,
    SSTAND AS Androstenedione_ng_dL,
    SSTANDSI AS Androstenedione_nmol_L,
    CASE 
        WHEN SSTANDLC = 0 THEN "At or above detection limit"
        WHEN SSTANDLC = 1 THEN "Below lower detection limit"
        ELSE "Missing"
    END AS Androstenedione_Comment_Code,
    SSTAMH AS Anti_Mullerian_Hormone_ng_mL,
    SSTAMHSI AS Anti_Mullerian_Hormone_pmol_L,
    CASE 
        WHEN SSTAMHLC = 0 THEN "At or above detection limit"
        WHEN SSTAMHLC = 1 THEN "Below lower detection limit"
        ELSE "Missing"
    END AS Anti_Mullerian_Hormone_Comment_Code,
    SSTEST AS Estradiol_pg_mL,
    SSTESTSI AS Estradiol_pmol_L,
    CASE 
        WHEN SSTESTLC = 0 THEN "At or above detection limit"
        WHEN SSTESTLC = 1 THEN "Below lower detection limit"
        ELSE "Missing"
    END AS Estradiol_Comment_Code,
    SSTESO AS Estrone_ng_dL,
    SSTESOSI AS Estrone_pmol_L,
    CASE
        WHEN SSTESOLC = 0 THEN "At or above detection limit"
        WHEN SSTESOLC = 1 THEN "Below lower detection limit"
        ELSE "Missing"
    END AS Estrone_Comment_Code,
    SSTES1 AS Estrone_Sulfate_pg_mL,
    SSTES1SI AS Estrone_Sulfate_pmol_L,
    CASE
        WHEN SSTES1LC = 0 THEN "At or above detection limit"
        WHEN SSTES1LC = 1 THEN "Below lower detection limit"
        ELSE "Missing"
    END AS Estrone_Sulfate_Comment_Code,
    SSTFSH AS Follicle_Stimulating_Hormone_mIU_mL,
    CASE
        WHEN SSTFSHLC = 0 THEN "At or above detection limit"
        WHEN SSTFSHLC = 1 THEN "Below lower detection limit"
        ELSE "Missing"
    END AS Follicle_Stimulating_Hormone_Comment_Code,
    SSTLUH AS Luteinizing_Hormone_mIU_mL,
    CASE
        WHEN SSTLUHLC = 0 THEN "At or above detection limit"
        WHEN SSTLUHLC = 1 THEN "Below lower detection limit"
        ELSE "Missing"
    END AS Luteinizing_Hormone_Comment_Code,
    SSTPG4 AS Progesterone_ng_dL,
    SSTPG4SI AS Progesterone_nmol_L,
    CASE 
        WHEN SSTPG4LC = 0 THEN "At or above detection limit"
        WHEN SSTPG4LC = 1 THEN "Below lower detection limit"
        ELSE "Missing"
    END AS Progesterone_Comment_Code,
    SSTSHBG AS SHBG_nmol_L,
    CASE 
        WHEN SSTSHGLC = 0 THEN "At or above detection limit"
        WHEN SSTSHGLC = 1 THEN "Below lower detection limit"
        ELSE "Missing"
    END AS SHBG_Comment_Code
FROM nhanes_2017___2018.nhanes_bronze.sstst_j
;