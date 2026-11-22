CREATE OR REPLACE TABLE nhanes_2017___2018.laboratory_silver.hepatitis_b_surface_antibody AS
SELECT DISTINCT
    SEQN AS Respondent_ID,
    CASE
        WHEN LBXHBS = 1 THEN "Positive"
        WHEN LBXHBS = 2 THEN "Negative"
        WHEN LBXHBS = 3 THEN "Indeterminate"
        ELSE "Missing"
    END AS Hepatitis_B_Surface_Antibody
FROM nhanes_2017___2018.nhanes_bronze.hepb_s_j
;