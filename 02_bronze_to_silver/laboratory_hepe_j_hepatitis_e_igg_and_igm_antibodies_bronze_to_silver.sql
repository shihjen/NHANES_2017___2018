CREATE OR REPLACE TABLE nhanes_2017___2018.laboratory_silver.hepatitis_e_igg_and_igm_antibodies AS
SELECT DISTINCT
    SEQN AS Respondent_ID,
    CASE
        WHEN LBDHEG = 1 THEN "Positive"
        WHEN LBDHEG = 2 THEN "Negative"
        WHEN LBDHEG = 3 THEN "Indeterminate"
        ELSE "Missing"
    END AS Hepatitis_E_IgG_Anti_HEV,
    CASE
        WHEN LBDHEM = 1 THEN "Positive"
        WHEN LBDHEM = 2 THEN "Negative"
        WHEN LBDHEM = 3 THEN "Indeterminate"
        ELSE "Missing"
    END AS Hepatitis_E_IgM_Anti_HEV
FROM nhanes_2017___2018.nhanes_bronze.hepe_j
;