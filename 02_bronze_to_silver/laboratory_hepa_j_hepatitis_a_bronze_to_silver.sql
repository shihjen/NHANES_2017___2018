CREATE OR REPLACE TABLE nhanes_2017___2018.laboratory_silver.hepatitis_a AS
SELECT DISTINCT
    SEQN AS Respondent_ID,
    CASE
        WHEN LBXHA = 1 THEN "Positive"
        WHEN LBXHA = 2 THEN "Negative"
        WHEN LBXHA = 3 THEN "Indeterminate"
        ELSE "Missing"
    END AS Hepatiti_A_Antibody
FROM nhanes_2017___2018.nhanes_bronze.hepa_j
;