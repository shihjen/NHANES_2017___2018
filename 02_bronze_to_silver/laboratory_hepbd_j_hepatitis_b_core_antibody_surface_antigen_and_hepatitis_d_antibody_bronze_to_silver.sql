CREATE OR REPLACE TABLE nhanes_2017___2018.laboratory_silver.hepatitis_b_core_antibody_surface_antigen_and_hepatitis_d_antibody AS
SELECT DISTINCT
    SEQN AS Respondent_ID,
    CASE
        WHEN LBXHBC = 1 THEN "Positive"
        WHEN LBXHBC = 2 THEN "Negative"
        WHEN LBXHBC = 3 THEN "Indeterminate"
        ELSE "Missing"
    END AS Hepatitis_B_Core_Antibody,
    CASE 
        WHEN LBDHBG = 1 THEN "Positive"
        WHEN LBDHBG = 2 THEN "Negative"
        WHEN LBDHBG = 3 THEN "Indeterminate"
        ELSE "Missing"
    END AS Hepatiti_B_Surface_Antigen,
    CASE 
        WHEN LBDHD = 1 THEN "Positive"
        WHEN LBDHD = 2 THEN "Negative"
        WHEN LBDHD = 3 THEN "Indeterminate"
        ELSE "Missing"
    END AS Hepatiti_D_Antibody_Anti_HDV,
    CASE
        WHEN SSLBDHD = 0 THEN "Hep B sAg positive, no surplus sample"
        WHEN SSLBDHD = 1 THEN "Hep B sAg positive, reactive"
        WHEN SSLBDHD = 2 THEN "Hep B sAg positive, non-reactive"
        WHEN SSLBDHD = 6 THEN "Hep B sAg negative, not retested"
        ELSE "Missing"
    END AS Hepatiti_D_Antibody_Anti_HDV_Retesting
FROM nhanes_2017___2018.nhanes_bronze.hepbd_j
;