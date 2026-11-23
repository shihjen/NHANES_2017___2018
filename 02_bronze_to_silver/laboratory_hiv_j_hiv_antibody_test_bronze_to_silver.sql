CREATE OR REPLACE TABLE nhanes_2017___2018.laboratory_silver.hiv_antibody_test AS
SELECT DISTINCT
    SEQN AS Respondent_ID,
    CASE 
        WHEN LBXHIVC = 1 THEN "HIV-1/2 Reactive"
        WHEN LBXHIVC = 2 THEN "HIV-1/2 Non-reactive"
        ELSE "Missing"
    END AS HIV_1_2_Combo_Test,
    CASE
        WHEN LBXHIV1 = 1 THEN "Reactive"
        WHEN LBXHIV1 = 2 THEN "Non-reactive"
        WHEN LBXHIV1 = 3 THEN "Indeterminate"
        ELSE "Missing"
    END AS HIV_1,
    CASE 
        WHEN LBXHIV2 = 1 THEN "Reactive"
        WHEN LBXHIV2 = 2 THEN "Non-reactive"
        WHEN LBXHIV2 = 3 THEN "Indeterminate"
        ELSE "Missing"
    END AS HIV_2,
    CASE 
        WHEN LBXHNAT = 1 THEN "Reactive for HIV-1"
        WHEN LBXHNAT = 2 THEN "Non-reactive for HIV-1"
        ELSE "Missing"
    END AS HIV_Confirmatory_Test
FROM nhanes_2017___2018.nhanes_bronze.hiv_j
;